class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.6.0"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.6.0/ate-macos-arm64"
    sha256 "c3d9c819f1f9bd0ea963d0d40eae4884c3d75837c1bbf43e1f85d7517ab685e9"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.6.0/ate-macos-x86_64"
    sha256 "37f8e74fa728b203704da05f6bfc653fd3c1100eaf361772c761542536056def"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
