class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.3.1"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.1/ate-macos-arm64"
    sha256 "dedde2ddaa5f1ff6cfaf8782c14e3cba67e7093ae05a2f0bd8a8afc62441a5d0"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.1/ate-macos-x86_64"
    sha256 "641982de6a10eda73dd0f3c5a7ebe5c5ba6b6942a9eeb2fe1594de4e3955e3f3"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
