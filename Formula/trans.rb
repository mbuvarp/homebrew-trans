class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d24338b01d9fd41d1d4fb146f8ad14c07b6125f9e7be7864c1d121df6cdd68b2"
  # Bottle metadata removed; source-only installs are supported.

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
