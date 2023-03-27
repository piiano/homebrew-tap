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
      sha256 "0783e394a60dc7b5db403f9ab17782f65786447ce5d2b3970fc618f31ec56125"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-darwin_amd64.tar.gz"
      sha256 "a5040905f91fb59579be91019944aa0106635cd47f3f793924ef0004bca90954"

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
      sha256 "33ef870f5f1c1b9c65617bb2f5046ce50ac5d0c4e372b120a01957563f6cfd56"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.3.0-rc1/pvault-cli-v1.3.0-rc1-linux_amd64.tar.gz"
      sha256 "131a958b8acb561559104251c9016c285b81394d83e22a5e3e0cc088f9e0c8e1"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
  end
end
