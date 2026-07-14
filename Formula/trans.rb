class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "99ed36ebab8447dd3901b74e5f9ee9115cf9f4f2a9a0ff955be56d20866dd108"

  bottle do
    root_url "https://github.com/mbuvarp/homebrew-trans/releases/download/trans-0.7.1"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "45d083738a37ae76e2360f7263016b6f4e83600aa29c7c9cab7e90b042aa5f99"
    sha256 cellar: :any_skip_relocation, sequoia:      "23c1a8a3a9ac97a3213c03d8477eaf9a3bc2b6861dec84b0b59a978b0953f3b8"
    sha256 cellar: :any,                 x86_64_linux: "81b265f8e30d4c3492ac5dacbace0261ae36c72052ac452e62f6131a9d73a9d4"
  end

  depends_on "rust" => :build

  on_linux do
    depends_on "pkgconf" => :build
    depends_on "openssl@3"
  end

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
