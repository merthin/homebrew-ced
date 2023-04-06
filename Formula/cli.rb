class Cli < Formula
  desc "Merthin Cloud/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-ced/raw/main/src/ced-cli-latest.tgz"
  version "1.1.69"
  sha256 "13f043828be13e393573e47bcab5243aa3cc9ac8c0e732c155f799e1311809c7"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

