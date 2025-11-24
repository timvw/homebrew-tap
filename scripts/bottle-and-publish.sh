#!/usr/bin/env bash
set -euo pipefail

PR_NUMBER=${1:?"PR number required"}
: "${GITHUB_REPOSITORY:?GITHUB_REPOSITORY env missing}"
: "${GH_TOKEN:?GH_TOKEN env missing}"

if ! command -v gh >/dev/null
then
  echo "gh CLI is required" >&2
  exit 1
fi

# Fetch PR metadata
PR_JSON=$(gh pr view "${PR_NUMBER}" --json mergeCommit,url,headRepositoryOwner,headRefName)
MERGE_COMMIT=$(echo "${PR_JSON}" | jq -r '.mergeCommit.oid // empty')
PR_URL=$(echo "${PR_JSON}" | jq -r '.url')

if [[ -z "${MERGE_COMMIT}" ]]
then
  echo "PR ${PR_NUMBER} is not merged yet; merge first." >&2
  exit 1
fi

WORKDIR=$(mktemp -d)
trap 'rm -rf "$WORKDIR"' EXIT INT TERM

git clone "https://github.com/${GITHUB_REPOSITORY}" "${WORKDIR}/tap"
cd "${WORKDIR}/tap"
git checkout master
git reset --hard "${MERGE_COMMIT}"

echo "==> Running brew test-bot on merged state"
brew test-bot --only-cleanup-before
brew test-bot --only-setup
brew test-bot --only-tap-syntax
HOMEBREW_GITHUB_API_TOKEN="${GH_TOKEN}" brew test-bot --only-formulae --fetch-logs

echo "==> Uploading bottles"
shopt -s nullglob
mapfile -t bottles < <(printf '%s\n' ./*.bottle.*)
if ((${#bottles[@]} > 0))
then
  gh release upload "bottles-pr${PR_NUMBER}" -- "${bottles[@]}" --clobber || true
else
  echo "No bottles produced"
fi
shopt -u nullglob

echo "Bottling flow complete for PR ${PR_NUMBER} (${PR_URL})"
