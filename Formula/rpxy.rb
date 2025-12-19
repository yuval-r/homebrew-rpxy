class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  url "https://github.com/yuval-r/homebrew-rpxy/releases/download/v0.10.3/rpxy-0.10.3-macos.tar.gz"
  sha256 "3c9a9b5a7394430535c487a448d2dca17aa17507ce42c52087a3b3a3f25895f9"
  version "0.10.3"
  license "MIT"

  def install
    bin.install "rpxy"
  end

  test do
    system bin/"rpxy", "--help"
  end
end
