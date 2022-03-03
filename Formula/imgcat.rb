# This file was generated by GoReleaser. DO NOT EDIT.
class Imgcat < Formula
  desc "Tool to output images in the terminal"
  homepage "https://github.com/trashhalo/imgcat"
  version "1.2.0"

  if OS.mac?
    url "https://github.com/trashhalo/imgcat/releases/download/v1.2.0/imgcat_1.2.0_Darwin_x86_64.tar.gz"
    sha256 "7d76237aa4e1b8b48c77b8329a910163ad3ee2c17916454b5a6b79df34d1eff4"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/trashhalo/imgcat/releases/download/v1.2.0/imgcat_1.2.0_Linux_x86_64.tar.gz"
      sha256 "c116bc543ab0d08a1b594c79c929802f5e245f96a5d93abf41fd77d729596393"
    end
  end

  def install
    bin.install "imgcat"
  end

  test do
    system "#{bin}/imgcat"
  end
end
