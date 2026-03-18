# typed: false
# frozen_string_literal: true

class Lockknife < Formula
  include Language::Python::Virtualenv

  desc "Ultimate Android Security Research Tool"
  homepage "https://lockknife.vercel.app"
  url "https://github.com/ImKKingshuk/LockKnife/releases/download/v1.0.0/lockknife-1.0.0.tar.gz"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"
  license "GPL-3.0-only"

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lockknife --version")
  end
end
