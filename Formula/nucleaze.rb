class Nucleaze < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nucleaze"
  url "https://github.com/jackdougle/nucleaze/archive/refs/tags/v1.4.1.tar.gz"
  sha256 "7403f8e018cf684d876dd4300c496919a8e77b978b1e503f0534483dbdb14d9f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nucleaze", shell_output("#{bin}/nucleaze --version")
  end
end
