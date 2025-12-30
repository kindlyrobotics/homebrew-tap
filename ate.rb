class Ate < Formula
  desc "FoodforThought CLI - The GitHub of robotics"
  homepage "https://kindly.fyi/foodforthought"
  version "0.2.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kindlyrobotics/monorepo/releases/download/cli-v0.2.7/ate-macos-arm64"
      sha256 "77e46cfd31964d89f5721084d3073939ba0a7a50276b3b16804a8e3f5652bdb8"
    else
      url "https://github.com/kindlyrobotics/monorepo/releases/download/cli-v0.2.7/ate-macos-x86_64"
      sha256 "b9540363cb928d60f10b39295a72ed3512823f2f84edc30f5d0e877ae6628692"
    end
  end

  def install
    if Hardware::CPU.arm?
       bin.install "ate-macos-arm64" => "ate"
    else
       bin.install "ate-macos-x86_64" => "ate"
    end
  end
end
