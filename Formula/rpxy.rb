class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  url "https://github.com/junkurihara/rust-rpxy.git", branch: "main"
  license "Apache-2.0"

  depends_on "rust" => :build

  def install
    system "cargo", "build", "--release"
    bin.install "target/release/rpxy"
  end

  test do
    system "#{bin}/rpxy", "--help"
  end
end
