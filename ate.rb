class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.4.0"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.0/ate-macos-arm64"
    sha256 "b968d6c096d52faa2b7923a489394a0c214a734a8b55ced5a3b42629837e03f4"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.0/ate-macos-x86_64"
    sha256 "8e5c92d3d908e72f3cf292a0ce8d972aceef2c177a56f54ea22b02e2168dee4d"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
