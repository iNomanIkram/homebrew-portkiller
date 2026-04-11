class Portkiller < Formula
  desc "Advanced port process manager"
  homepage "https://github.com/thenomanikram/homebrew-portkiller"
  version "1.0.6"
  url "https://github.com/thenomanikram/homebrew-portkiller/archive/refs/tags/v1.0.6.tar.gz"
  sha256 "04de70e66f2e83c7eae428f13b709e90b113c51121593b6a4c36a0dae1a89b10"
  license "MIT"

  def install
    bin.install "portkiller.sh" => "portkiller"
  end

  test do
    system "#{bin}/portkiller", "version"
  end
end
