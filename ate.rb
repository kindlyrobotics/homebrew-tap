class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.6.1"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.6.1/ate-macos-arm64"
    sha256 "3d5cc2baf6651c0fc300f594f02e1a24c7435a15ec73992fdeb864470900bc7d"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.6.1/ate-macos-x86_64"
    sha256 "25530b0dc579c4a7e502325740d3eded009638f508f8d39318e93d936432e279"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
