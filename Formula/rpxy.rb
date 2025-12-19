class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  license "Apache-2.0"

  depends_on "rust" => :build
  depends_on "git-lfs"

  resource "rpxy-source" do
    url "https://github.com/junkurihara/rust-rpxy.git", tag: "0.10.3"
  end

  def install
    resource("rpxy-source").stage do
      ENV["GIT_LFS_SKIP_SMUDGE"] = "1"
      # Configure git to skip LFS for submodules
      system "git", "config", "filter.lfs.smudge", "cat"
      system "git", "config", "filter.lfs.required", "false"
      system "git", "submodule", "update", "--init", "--recursive"
      system "cargo", "install", *std_cargo_args, "--root", prefix, "--path", "."
    end
  end

  test do
    system bin/"rpxy", "--help"
  end
end
