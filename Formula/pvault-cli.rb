# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvaultCli < Formula
  desc ""
  homepage "https://piiano.com"
  version "1.3.0-rc1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-darwin_arm64.tar.gz"
      sha256 "417085a9ec6fc0bbd3eec50e7524ac5f0f68d229d3290e3e8d174a6110eef221"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-darwin_amd64.tar.gz"
      sha256 "a88ee6721bcf87e3af6674292e63c7b2ab5f482c1901c82d90966faa06f3a627"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-linux_arm64.tar.gz"
      sha256 "618ba5149b67d95522c13e75aa679a5997c1d4c23f380c8bebb131156ca294c1"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-linux_amd64.tar.gz"
      sha256 "fae3dd53bd9d601f4d8c42a66abf47fb5547298846cb2fef14f4324811cc4be7"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
  end
end
