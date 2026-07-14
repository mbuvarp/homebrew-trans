class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "0a236c9a62dfc3d3d4a52eaa9130d9f4473b0fa4014a5e2903f3e3c93fa21439"

  bottle do
    root_url "https://github.com/mbuvarp/homebrew-trans/releases/download/trans-0.6.2"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "0ea7dc59616451d4d1823939b9f62c3fe6a3451efb323057a610651eff7f0ef1"
    sha256 cellar: :any_skip_relocation, sequoia:      "e94cc67c79ff8c8f4be96b37a4f83d933ce035a9880525d2ca0edd9856ae3590"
    sha256 cellar: :any,                 x86_64_linux: "1643cb622d8afa788730f61a5653f3489ec59bd3ed0a7e5e2595fb659dc0e7c5"
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
