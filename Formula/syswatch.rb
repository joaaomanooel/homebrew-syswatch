class Syswatch < Formula
  desc "CLI system monitoring tool"
  homepage "https://github.com/joaaomanooel/syswatch"
  version "0.0.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.10/syswatch_0.0.10_darwin_arm64.zip"
    else
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.10/syswatch_0.0.10_darwin_amd64.zip"
    end
  end

  on_linux do
    if Hardware::CPU.arm64?
      url "https://github.com/joaaomanooel/syswatch/releases/download/v0.0.10/syswatch_0.0.10_linux_arm64.zip"
    else
      url "https://github.com/joaaomanooel/syswatch/releases/download//syswatch__linux_amd64.zip"
    end
  end

  def install
    bin.install "syswatch"
  end

  test do
    system "#{bin}/syswatch", "--version"
  end
end
