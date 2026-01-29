class Trans < Formula\n  desc "Translation utility for react-intl JSON files"\n  homepage "https://github.com/mbuvarp/trans"\n  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.4.tar.gz"\n  sha256 "60748443d487989e346cd3eae213cce75fd42c1f3470ef32f62b3f90e5d8a591"\n  bottle do
    root_url "https://github.com/mbuvarp/trans/releases/download/v0.1.4"
    sha256 arm64_sequoia: "8d8120dd1a398f4a3839479a011ef0e51c1692ce341adb3b41c1cc8b19d0185e"
  end
\n\n  depends_on "rust" => :build\n\n  def install\n    system "cargo", "install", *std_cargo_args\n  end\n\n  test do\n    system "#{bin}/trans", "--help"\n  end\nend\n