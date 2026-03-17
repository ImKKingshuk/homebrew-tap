# typed: false
# frozen_string_literal: true

class Lockknife < Formula
  include Language::Python::Virtualenv

  desc "The Ultimate Android Security Research Tool"
  homepage "https://lockknife.vercel.app"
  license "GPL-3.0-only"
  version "1.0.0"

  url "https://github.com/ImKKingshuk/LockKnife/releases/download/v1.0.0/lockknife-1.0.0.tar.gz"
  sha256 "73b51365f2e358e6ca242fa4d636a0b69a8e2f8f6d2af57809ba6d4650dbcce0"

  depends_on arch: :arm64
  depends_on "python@3.12"
  depends_on "rust" => :build

  def install
    virtualenv_install_with_resources
  end
end
