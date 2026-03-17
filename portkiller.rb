class portkiller < Formula
  desc "Advanced port process manager"
  homepage "https://github.com/inomanikram/homebrew-portkiller"
  version "1.0.1"
  url "https://github.com/iNomanIkram/homebrew-portkiller/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "2986d739805549d9dc583731fa7b11f8f1bb7e780a3043e51247654a4fdaf578"
  license "MIT"

  def install
    bin.install "killport.sh" => "portkiller"
  end

  test do
    system "#{bin}/portkiller", "version"
  end
end
