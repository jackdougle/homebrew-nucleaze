class Nucleaze < Formula
  desc "Fast Rust DNA read filtering tool inspired by BBDuk"
  homepage "https://github.com/jackdougle/nucleaze"
  url "https://github.com/jackdougle/nucleaze/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "05939dac0ccb8795dc8e8b14bc355344b99cc121104bd1163363f598640792a6"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "nucleaze", shell_output("#{bin}/nucleaze --version")
  end
end
