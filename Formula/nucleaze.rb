class Nucleaze < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nucleaze"
  url "https://github.com/jackdougle/nucleaze/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "6cdee8356a27e482ea82b181277ae0e2ffdd4c1f852f3c1b958556af7a8d8dc9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nucleaze", shell_output("#{bin}/nucleaze --version")
  end
end
