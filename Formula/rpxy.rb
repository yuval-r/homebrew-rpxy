class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  url "https://github.com/yuval-r/homebrew-rpxy/releases/download/v0.10.3/rpxy-0.10.3-macos.tar.gz"
  sha256 "8bb79b55b298b3ba2b178ec6ef269aa103655ddb0fd5a2a7c85301051cc682c6"
  version "0.10.3"
  license "MIT"

  def install
    bin.install "rpxy-0.10.3-macos/bin/rpxy" => "rpxy"
  end

  test do
    system bin/"rpxy", "--help"
  end
end
