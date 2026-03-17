# typed: false
# frozen_string_literal: true

class Lockknife < Formula
  include Language::Python::Virtualenv

  desc "The Ultimate Android Security Research Tool"
  homepage "https://lockknife.vercel.app"
  license "GPL-3.0-only"
  version "1.0.0"

  url "https://github.com/ImKKingshuk/LockKnife/releases/download/v1.0.0/lockknife-1.0.0-cp311-abi3-macosx_11_0_arm64.whl"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"

  depends_on arch: :arm64
  depends_on "python@3.12"

  def install
    virtualenv_install_with_resources
  end
end
