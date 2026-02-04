class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.3.3"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.3/ate-macos-arm64"
    sha256 "922790c7b7bdf40a63892edd2b1f909d2d43032d762886a363282bb594725a3b"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.3/ate-macos-x86_64"
    sha256 "ac67a2f3333a19db58dffa4d0d851c8ca021f5fdea031d45916ab48d55963c6d"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
