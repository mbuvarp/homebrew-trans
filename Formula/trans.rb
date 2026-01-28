class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "de74504a723fab96ab6be943d16c7c54958420b357493068a3c5beec2c9c1b52"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
