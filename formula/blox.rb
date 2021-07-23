# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blox < Formula
  desc "CueBlox"
  homepage "https://github.com/cueblox/"
  version "0.6.1"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cueblox/blox/releases/download/v0.6.1/blox_0.6.1_Darwin_x86_64.tar.gz"
      sha256 "80e023684380bd2e9dd260b040679fb46fd7cf6ce63e082a9501a01ef14bc524"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cueblox/blox/releases/download/v0.6.1/blox_0.6.1_Darwin_arm64.tar.gz"
      sha256 "356a0a702e25909d9809af72c1b732c315a2169fc06828d7ec2491b3e2e6b8f0"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cueblox/blox/releases/download/v0.6.1/blox_0.6.1_Linux_x86_64.tar.gz"
      sha256 "5bf0d0c6c0095167d2ca30b645f5ea9473825cd00eae958d5c315ae998f6d1f3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cueblox/blox/releases/download/v0.6.1/blox_0.6.1_Linux_arm64.tar.gz"
      sha256 "75fb21d0515225f1cddc9834bb56a86e22ed97024d5c8c7c924890d8ac929c51"
    end
  end

  def install
    bin.install "blox"
    bash_completion.install "completions/blox.bash" => "blox"
    zsh_completion.install "completions/blox.zsh" => "_blox"
    fish_completion.install "completions/blox.fish"
  end

  test do
    system "#{bin}/blox -v"
  end
end
