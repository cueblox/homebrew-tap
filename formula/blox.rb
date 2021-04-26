# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Blox < Formula
  desc "CueBlox"
  homepage "https://github.com/cueblox/"
  version "0.4.0"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/cueblox/blox/releases/download/v0.4.0/blox_0.4.0_darwin_amd64.tar.gz"
    sha256 "bf76e73f05c982edcb362a740b94cdd6f9cdc2f9013c53bca750e8e983a4938d"
  end
  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/cueblox/blox/releases/download/v0.4.0/blox_0.4.0_darwin_arm64.tar.gz"
    sha256 "f30e04796dd80c3fdad0152ff44150141e023262acabc63fb755d30ca55fc6fb"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cueblox/blox/releases/download/v0.4.0/blox_0.4.0_linux_amd64.tar.gz"
    sha256 "3868cb8f7b2821aa815550b94d5c12fef65afa5a51c180c0e8c6f4535f432e49"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cueblox/blox/releases/download/v0.4.0/blox_0.4.0_linux_arm64.tar.gz"
    sha256 "31b0314940a5f4fd97483cbfb763db90315977eab9abd1556a89f202652345a4"
  end

  def install
    bin.install "blox"
  end
end
