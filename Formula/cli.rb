class Cli < Formula
  desc "Merthin Cloud/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-ced/raw/main/src/ced-cli-latest.tgz"
  version "1.1.79"
  sha256 "8780829d67075c07d145d3620368a6a5b08dd92584ce8ee808fd7e722c11c7d1"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

