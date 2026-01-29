class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "73450c9a40e8a999b6a6713d18dba79e3aafda8837542636723185e70066c9d8"
  bottle do
    root_url "https://github.com/mbuvarp/trans/releases/download/v0.1.4"
    sha256 arm64_sequoia: "ef7aab4e75ebb93ab49a26ce6ea64f68a8a1a832b18c900b028d95c185b757bf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
