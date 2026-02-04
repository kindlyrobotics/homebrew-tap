class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.3.2"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.2/ate-macos-arm64"
    sha256 "8215cff7a830d3a29fce2997a8e51deabd1a207711f1b08421f61765ad958030"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.3.2/ate-macos-x86_64"
    sha256 "71874e3940f91c780a264dfcf011b837b1064e46d6cbf4709b57a73f3344ac95"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
