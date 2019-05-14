class HadoopAT270 < Formula
  desc "Framework for distributed processing of large data sets"
  homepage "https://hadoop.apache.org/"
  url "https://www.apache.org/dyn/closer.cgi?path=hadoop/common/hadoop-2.7.0/hadoop-2.7.0.tar.gz"
  mirror "https://archive.apache.org/dist/hadoop/common/hadoop-2.7.0/hadoop-2.7.0.tar.gz"
  sha256 "ad270af05fff59d3f7021efe79328ed92dadfa64aa5ab4fcde4a204f803dbf9e"

  bottle :unneeded

  depends_on :java => "1.8+"

  conflicts_with "yarn", :because => "both install `yarn` binaries"

  def install
    rm_f Dir["bin/*.cmd", "sbin/*.cmd", "libexec/*.cmd", "etc/hadoop/*.cmd"]
    libexec.install %w[bin sbin libexec share etc]
    bin.write_exec_script Dir["#{libexec}/bin/*"]
    sbin.write_exec_script Dir["#{libexec}/sbin/*"]
    libexec.write_exec_script Dir["#{libexec}/libexec/*.sh"]
    # Temporary fix until https://github.com/Homebrew/brew/pull/4512 is fixed
    chmod 0755, Dir["#{libexec}/*.sh"]
  end

  test do
    system bin/"hadoop", "fs", "-ls"
  end
end
