class Cli < Formula
  desc "Merthin Cloud/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-ced/raw/main/src/ced-cli-latest.tgz"
  version "1.1.69"
  sha256 "5e9e9768b26073ace7accbb7f18e4352d292224b1881045ceb4582fa61e22354"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

