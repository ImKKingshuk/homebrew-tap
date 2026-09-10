# typed: false
# frozen_string_literal: true

class Lockknife < Formula
  include Language::Python::Virtualenv

  desc "Ultimate Android Security Research Tool"
  homepage "https://lockknife.vercel.app"
  url "https://github.com/ImKKingshuk/LockKnife/releases/download/v1.2.0/lockknife-1.2.0.tar.gz"
  sha256 "48246ecab5484bed0f51a6b3ed30ef2066749045931d59ddc2f597bedbf6de9c"
  license "GPL-3.0-only"

  depends_on "rust" => :build
  depends_on arch: :arm64
  depends_on "python@3.12"

  def install
    venv = virtualenv_create(libexec, "python3.12", system_site_packages: false)

    system formula_opt_bin("python@3.12")/"python3.12", "-m", "pip",
           "--python=#{venv.root}/bin/python", "install", "--no-binary=:all:", buildpath

    bin.install_symlink libexec/"bin/lockknife"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/lockknife --version")
  end
end
