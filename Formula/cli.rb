class Cli < Formula
  desc "Merthin Cloud/Edge Distribution Command Line Interface"
  homepage "https://merthin.com"
  url "https://github.com/merthin/homebrew-ced/raw/main/src/ced-cli-latest.tgz"
  version "1.1.69"
  sha256 "d6d051d858dcfb4cfdc207452a835e49787fe407b98d463bc7173df84e153a8a"

  def install
    libexec.install Dir["*"]
    bin.write_exec_script libexec/"@ced/cli/lib/ced"
  end

  test do
    system bin/"ced", "-V"
  end
end

