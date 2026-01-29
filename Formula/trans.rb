class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "7c48102660d1801d2d1f4a66701e68cd3825c59a5c9d35535963a8b9310c3e93"
  # Bottle metadata removed; source-only installs are supported.

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
