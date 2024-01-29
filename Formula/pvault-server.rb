# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvaultServer < Formula
  desc ""
  homepage "https://piiano.com"
  version "1.10.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.10.1/pvault-server-v1.10.1-darwin_amd64.tar.gz"
      sha256 "1f37a6279714438197c5dcc9e370e7bf9c2818c4a79eed8adeae86ed274eeefa"

      def install
        bin.install "pvault-server"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/piiano/vault-releases/releases/download/v1.10.1/pvault-server-v1.10.1-darwin_arm64.tar.gz"
      sha256 "f7e84b170dcc7f4894f9d8c10984527ac99187eeb2116b331c3c7ea37597e9d4"

      def install
        bin.install "pvault-server"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/piiano/vault-releases/releases/download/v1.10.1/pvault-server-v1.10.1-linux_arm64.tar.gz"
      sha256 "8bd3fdb0e34e9506b1696f96897cb9ac576879171380185bcf32a29806ee8e01"

      def install
        bin.install "pvault-server"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.10.1/pvault-server-v1.10.1-linux_amd64.tar.gz"
      sha256 "3b83c0296d2d35dcad7efe35d390eab5d5b0a8bde528b9a1fb83b57191586722"

      def install
        bin.install "pvault-server"
      end
    end
  end
end
