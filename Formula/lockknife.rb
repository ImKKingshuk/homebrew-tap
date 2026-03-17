# typed: false
# frozen_string_literal: true

class Lockknife < Formula
  include Language::Python::Virtualenv

  desc "The Ultimate Android Security Research Tool"
  homepage "https://lockknife.vercel.app"
  license "GPL-3.0-only"
  version "1.0.0"

  url "https://github.com/ImKKingshuk/LockKnife/releases/download/v1.0.0/lockknife-1.0.0-cp311-abi3-macosx_11_0_arm64.whl", using: :nounzip
  sha256 "586a547011739f496f93ab58d621103d032cc93d1d73a2796bb6da57ff28b48b"

  depends_on arch: :arm64
  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12")
    wheel_url = "https://github.com/ImKKingshuk/LockKnife/releases/download/v#{version}/lockknife-#{version}-cp311-abi3-macosx_11_0_arm64.whl"
    system libexec/"bin/pip", "install", "--no-deps", "--no-cache-dir", wheel_url
    bin.install_symlink Dir[libexec/"bin/lockknife"]
  end
end
