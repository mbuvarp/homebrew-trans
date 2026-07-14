class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.7.1.tar.gz"
  sha256 "99ed36ebab8447dd3901b74e5f9ee9115cf9f4f2a9a0ff955be56d20866dd108"

  bottle do
    root_url "https://github.com/mbuvarp/homebrew-trans/releases/download/trans-0.7.0"
    sha256 cellar: :any_skip_relocation, arm64_tahoe:  "98cf89abf88992a99fab817e50465a50444fd9138b844e4a6198b1383dd994f7"
    sha256 cellar: :any_skip_relocation, sequoia:      "295f51e965eeb8a7051fc04d0a80e81620bdd5c5b70c307ace5c86335830d851"
    sha256 cellar: :any,                 x86_64_linux: "38576a03df895867295faf43df9cc1402a205385f4b980bbf836812d3a957baa"
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
