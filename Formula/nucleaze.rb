class Nucleaze < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nucleaze"
  url "https://github.com/jackdougle/nucleaze/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "55e2ebf1ac1e80fa55e4dc6ea78d375269c0baa5301b23c6afa2e13e49e81b43"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nucleaze", shell_output("#{bin}/nucleaze --version")
  end
end
