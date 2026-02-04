class Ate < Formula
  desc "Food for Thought CLI"
  homepage "https://kindly.fyi"
  version "0.4.1"

  if Hardware::CPU.arm?
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.1/ate-macos-arm64"
    sha256 "e1e054d19b1ab2347274740c1f587adcd723fbe3aaa2f2a74b0b9efda824fc40"
  else
    url "https://github.com/kindlyrobotics/homebrew-tap/releases/download/v0.4.1/ate-macos-x86_64"
    sha256 "5fe563d324cb662d1e7436a739b98345f9f74009e970e3cfcfdc8dfa61735c15"
  end

  def install
    bin.install "ate-macos-#{Hardware::CPU.arch}" => "ate"
  end

  test do
    system "#{bin}/ate", "--version"
  end
end
