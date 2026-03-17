class Portkill < Formula
  desc "Advanced port process manager"
  homepage "https://github.com/inomanikram/homebrew-portkill"
  url "https://github.com/iNomanIkram/homebrew-portkill/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "REPLACE_WITH_SHA256_OF_YOUR_RELEASE_TAR_GZ"
  license "MIT"

  def install
    bin.install "killport.sh" => "portkill"
  end

  test do
    system "#{bin}/portkill", "version"
  end
end
