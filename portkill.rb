class Portkill < Formula
  desc "Advanced port process manager"
  homepage "https://github.com/inomanikram/homebrew-portkill"
  url "https://github.com/iNomanIkram/homebrew-portkill/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "066a9ef8863660e4cbbb7783663a92d721c0cf7bfc81d9e4e591fb1b99cc0593"
  license "MIT"

  def install
    bin.install "killport.sh" => "portkill"
  end

  test do
    system "#{bin}/portkill", "version"
  end
end
