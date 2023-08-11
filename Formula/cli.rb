class Cli < Formula
  desc "Merthin Cloud/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-ced/raw/main/src/ced-cli-latest.tgz"
  version "1.1.70"
  sha256 "383631a28a2e1c7fd24077099f30fe0166169819f46b7c8154f019ec68af546d"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

