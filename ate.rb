class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.4.2"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.2/ate-macos-arm64"
    sha256 "06d78ed4f7bba6405e84cc25016a25a52f660c1c677af840bc52e5230f87a935"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.2/ate-macos-x86_64"
    sha256 "90574afbc7046dc90f4569450a5b9b0a702c20fb53cc5da255181b801ff80857"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
