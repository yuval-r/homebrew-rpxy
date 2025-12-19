class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  license "Apache-2.0"

  depends_on "rust" => :build

  # Use submodules: false to prevent automatic submodule update during download
  # We'll handle submodules manually in install with LFS skip configured
  url "https://github.com/junkurihara/rust-rpxy.git", tag: "0.10.3", using: :git, submodules: false

  def install
    # Set environment variable to skip git-lfs
    ENV["GIT_LFS_SKIP_SMUDGE"] = "1"
    # Configure git to skip LFS for submodules
    system "git", "config", "filter.lfs.smudge", "cat"
    system "git", "config", "filter.lfs.required", "false"
    # Update submodules manually with LFS skip configured
    system "git", "submodule", "update", "--init", "--recursive"
    system "cargo", "install", *std_cargo_args, "--root", prefix, "--path", "."
  end

  test do
    system bin/"rpxy", "--help"
  end
end
