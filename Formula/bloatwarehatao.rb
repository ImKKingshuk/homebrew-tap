# typed: false
# frozen_string_literal: true

class Bloatwarehatao < Formula
  desc "Ultimate Android Bloatware Removal Tool"
  homepage "https://github.com/ImKKingshuk/BloatwareHatao"
  url "https://github.com/ImKKingshuk/BloatwareHatao/releases/download/v1.0.0/bloatwarehatao-1.0.0-aarch64-apple-darwin.tar.gz"
  sha256 "9c936ab11075576b618cda028fef738339415af64a690d4238a6a4b41c94044f"
  license "GPL-3.0-only"

  depends_on arch: :arm64

  def install
    bin.install "bloatwarehatao"
    prefix.install "README.md", "LICENSE", "CHANGELOG.md", "packages"
  end

  def caveats
    <<~EOS
      Android platform-tools are required for ADB workflows:
        brew install --cask android-platform-tools
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bloatwarehatao --version")
  end
end
