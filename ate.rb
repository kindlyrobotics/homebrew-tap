class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.5.0"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.5.0/ate-macos-arm64"
    sha256 "b2592c95ea9e4a9c7ed40760cda44feb8a5d2b8fba86f4c7809444672bc4b856"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.5.0/ate-macos-x86_64"
    sha256 "fa7059653fe6a7e26dc7a0a80f233739355607e115e66eed304a0f731e061a83"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
