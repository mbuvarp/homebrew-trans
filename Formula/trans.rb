class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.4.0.tar.gz"
  sha256 "16a3ee11b6da00070439ffc79b2a36bbda048fae0fdd0fad8fcbfc70ae012d48"
  # Bottle metadata removed; source-only installs are supported.

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
