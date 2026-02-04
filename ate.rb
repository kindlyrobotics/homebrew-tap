class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.3.0"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.0/ate-macos-arm64"
    sha256 "4a87e850f98bf0f2f061d77ee53309d8a3b791db8296c59ebafdd0d3d2f40e66"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.0/ate-macos-x86_64"
    sha256 "9bb346ac74236d23ec90f17883fd17e3ba2bd0f272e2a4ea8488bf8bc70119b9"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
