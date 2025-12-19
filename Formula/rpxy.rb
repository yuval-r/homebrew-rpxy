class Rpxy < Formula
  desc "Simple and ultrafast HTTP reverse proxy in Rust"
  homepage "https://rpxy.io"
  license "Apache-2.0"

  depends_on "rust" => :build

  # Use resource to have more control over the download process
  # submodules: false prevents automatic submodule update during download
  resource "rpxy-source" do
    url "https://github.com/junkurihara/rust-rpxy.git", tag: "0.10.3", revision: "deb01efad0a587a6bfba7f3868eb67a7a44cd311", using: :git, submodules: false
  end

  def install
    # Set environment variable to skip git-lfs BEFORE staging
    ENV["GIT_LFS_SKIP_SMUDGE"] = "1"
    
    resource("rpxy-source").stage do
      # Configure git to skip LFS for submodules
      system "git", "config", "filter.lfs.smudge", "cat"
      system "git", "config", "filter.lfs.required", "false"
      # Update submodules manually with LFS skip configured
      system "git", "submodule", "update", "--init", "--recursive"
      system "cargo", "install", *std_cargo_args, "--root", prefix, "--path", "."
    end
  end

  test do
    system bin/"rpxy", "--help"
  end
end
