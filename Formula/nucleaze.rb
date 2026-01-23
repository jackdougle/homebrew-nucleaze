class Nucleaze < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nucleaze"
  url "https://github.com/jackdougle/nucleaze/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "2b19f5801cc862031ae04dc6256f83f94f6ec9266a8cc66386b82edabf40c1e9"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nucleaze", shell_output("#{bin}/nucleaze --version")
  end
end
