# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Staticsync < Formula
  desc "CueBlox"
  homepage "https://github.com/cueblox/"
  version "0.0.5"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cueblox/staticsync/releases/download/v0.0.5/staticsync_0.0.5_Darwin_x86_64.tar.gz"
      sha256 "b0001e931aa0da0981e8399d2f2543d5d841f694cf4c24ba7ce75dbdcd623603"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cueblox/staticsync/releases/download/v0.0.5/staticsync_0.0.5_Darwin_arm64.tar.gz"
      sha256 "1b53d8a37d6d21d48ce1ca1fb177d9035c9652a47c027fa0e8a3a0be766d1f56"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cueblox/staticsync/releases/download/v0.0.5/staticsync_0.0.5_Linux_x86_64.tar.gz"
      sha256 "9b8645b2a13405a630f74fd7d67b815ccb17b0879217edf11b365f0876763cea"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cueblox/staticsync/releases/download/v0.0.5/staticsync_0.0.5_Linux_arm64.tar.gz"
      sha256 "7048fcf0459d6fcb09c2cc78c0d8bbfa2c6d1cf8ae51f99bd12d9d3c19d6ac91"
    end
  end

  def install
    bin.install "staticsync"
  end
end
