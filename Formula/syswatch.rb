class Syswatch < Formula
  desc "CLI system monitoring tool"
  homepage "https://github.com/joaaomanooel/syswatch"
  version "0.0.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/joaaomanooel/syswatch/releases/download/0.0.9/syswatch_0.0.9_darwin_arm64.zip"
    else
      url "https://github.com/joaaomanooel/syswatch/releases/download/0.0.9/syswatch__darwin_amd64.zip"
    end
  end

  on_linux do
    if Hardware::CPU.arm64?
      url "https://github.com/joaaomanooel/syswatch/releases/download//syswatch__linux_arm64.zip"
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
