class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  url "https://github.com/junkurihara/rust-rpxy.git",
      revision: "deb01efad0a587a6bfba7f3868eb67a7a44cd311",
      using:    :git,
      submodules: false
  license "Apache-2.0"

  depends_on "rust" => :build

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

  def caveats
    <<~EOS
      Note: This formula requires git-lfs to be installed before installation.
      If you encounter errors during installation, run:
        brew install git-lfs
      Then try installing rpxy again.
    EOS
  end
end
