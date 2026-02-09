class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "5066b1fdfb53172fd04bdea3b44b1e12a82411bc5f4c026f30daf450f3f7d911"
  # Bottle metadata removed; source-only installs are supported.

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
