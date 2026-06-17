class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "2c262bec15a3c050234ac8c42f3be29a231a1dbedffdab92ca52370db2094deb"
  # Bottle metadata removed; source-only installs are supported.

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
