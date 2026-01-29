class Trans < Formula
  desc "Translation utility for react-intl JSON files"
  homepage "https://github.com/mbuvarp/trans"
  url "https://github.com/mbuvarp/trans/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "b3d995f73fbfad8d8e9c76797a025c4a8023b5040b0c15cbc76d25932df3daf6"
  bottle do
    root_url "https://github.com/mbuvarp/trans/releases/download/v0.1.4"
    cellar :any_skip_relocation
    rebuild 1
    sha256 arm64_sequoia: "683d677bb1ca72ef5e84ac66cb460e78406b981c10c272b4b9276226f8d27044"
  end
  bottle do
    root_url "https://github.com/mbuvarp/trans/releases/download/v0.1.4"
    sha256 arm64_sequoia: "ef7aab4e75ebb93ab49a26ce6ea64f68a8a1a832b18c900b028d95c185b757bf"
  bottle do
    root_url "https://github.com/mbuvarp/trans/releases/download/v0.1.4"
    cellar :any_skip_relocation
    rebuild 1
    sha256 arm64_sequoia: "683d677bb1ca72ef5e84ac66cb460e78406b981c10c272b4b9276226f8d27044"
  end
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/trans", "--help"
  end
end
