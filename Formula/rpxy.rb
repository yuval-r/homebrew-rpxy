class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  url "https://github.com/yuval-r/homebrew-rpxy/releases/download/v0.10.3/rpxy-0.10.3-macos.tar.gz"
  sha256 "3fb21af80b68b53ed19d2a0c21251d12b381ee95f65d656d687bdfd9dd392d95"
  version "0.10.3"
  license "MIT"

  def install
    bin.install "rpxy-0.10.3-macos/bin/rpxy" => "rpxy"
  end

  test do
    system bin/"rpxy", "--help"
  end
end
