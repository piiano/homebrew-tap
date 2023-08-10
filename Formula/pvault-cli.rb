# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class PvaultCli < Formula
  desc ""
  homepage "https://piiano.com"
  version "1.8.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/piiano/vault-releases/releases/download/v1.8.1/pvault-cli-v1.8.1-darwin_arm64.tar.gz"
      sha256 "21dce7791d7efed6e0f70be54eb3ca44cec3e5a31f74f58e8c22dac6a7c16f2c"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.8.1/pvault-cli-v1.8.1-darwin_amd64.tar.gz"
      sha256 "418c6d0e876ddd4b6e91ca210624c582b760346c77f2e2fc6848c71739be69ad"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/piiano/vault-releases/releases/download/v1.8.1/pvault-cli-v1.8.1-linux_arm64.tar.gz"
      sha256 "cc30e10203de13194279e50a62d66b938b34f93ab78e08267dd5a7fd9be635da"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/piiano/vault-releases/releases/download/v1.8.1/pvault-cli-v1.8.1-linux_amd64.tar.gz"
      sha256 "7bea722334b4ee4b5353cd7c42d67597912e942fb60feb4b7e1d13d3d5c3b947"

      def install
        bin.install "pvault-cli" => "pvault"
        (bash_completion/"pvault").write Utils.safe_popen_read("#{bin}/pvault completions bash")
        (zsh_completion/"_pvault").write Utils.safe_popen_read("#{bin}/pvault completions zsh")
      end
    end
  end
end
