class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.3.3"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.3/ate-macos-arm64"
    sha256 "013ae86782595014f77b4cb4c11e31d0b5627e6235df7448e413de98dc5f9c93"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.3/ate-macos-x86_64"
    sha256 "5e35523d9f9fee10ab5bec80fcb704b37ef7a3fe55e5c272347dd6e80020bc8f"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
