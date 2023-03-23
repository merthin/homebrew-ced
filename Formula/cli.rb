class Cli < Formula
  desc "Merthin Clod/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-brew/raw/main/src/ced-cli-1.1.69.tgz"
  version "1.1.69"
  sha256 "4efb7b2abc5772dc2eb78e0638fe652932ddf02dda5621c6d9635e8b29efab10"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

