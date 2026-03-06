class Syswatch < Formula
  desc "CLI system monitoring tool"
  homepage "https://github.com/joaaomanooel/syswatch"
  version "0.0.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.8/syswatch-darwin-arm64.zip"
    else
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.8/syswatch-darwin-amd64.zip"
    end
  end

  on_linux do
    if Hardware::CPU.arm64?
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.8/syswatch-linux-arm64.zip"
    else
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.8/syswatch-linux-amd64.zip"
    end
  end

  def install
    bin.install "syswatch"
  end

  test do
    system "#{bin}/syswatch", "--version"
  end
end
