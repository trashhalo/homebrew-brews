class ConstantSandbox < Formula
  desc "Tool for ruby codebases used to enforce boundaries and modularize Rails applications"
  homepage "https://github.com/trashhalo/constant_sandbox"
  version "0.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/trashhalo/constant_sandbox/releases/download/v0.1.0/stable_x86_64-apple-darwin.zip"
    sha256 "ff014ce97ed70a1ce952023292ec9dec6754d54cf04b870809d7f592491982d3"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/trashhalo/constant_sandbox/releases/download/v0.1.0/stable_x86_64-unknown-linux-musl_constant_sandbox.zip"
      sha256 "02be1c9377745a5981269a13738679817110cd9bcdc5ebe901cb5cfd43e961c4"
    elsif Hardware::CPU.arm?
      url "https://github.com/trashhalo/constant_sandbox/releases/download/v0.1.0/stable_x86_64-unknown-linux-musl_constant_sandbox.zip"
      sha256 "02be1c9377745a5981269a13738679817110cd9bcdc5ebe901cb5cfd43e961c4"
    end
  end

  def install
    if OS.mac?
      bin.install "x86_64-apple-darwin/release/constant_sandbox" => "constant_sandbox"
    elsif OS.linux?
      if Hardware::CPU.intel?
        bin.install "x86_64-unknown-linux-musl/release/constant_sandbox" => "constant_sandbox"
      elsif Hardware::CPU.arm?
        bin.install "arm-unknown-linux-gnueabihf/release/constant_sandbox" => "constant_sandbox"
      end
    end
  end

  test do
    system "#{bin}/constant_sandbox"
  end
end
