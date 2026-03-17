class Portkiller < Formula
  desc "Advanced port process manager"
  homepage "https://github.com/inomanikram/homebrew-portkiller"
  version "1.0.1"
  url "https://github.com/iNomanIkram/homebrew-portkiller/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "ee1d15c33d95300096a0409fb806fee4d5e2021154bc575f223bb4f305712190"
  license "MIT"

  def install
    bin.install "portkiller.sh" => "portkiller"
  end

  test do
    system "#{bin}/portkiller", "version"
  end
end
