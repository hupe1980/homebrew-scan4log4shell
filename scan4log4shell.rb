# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scan4log4shell < Formula
  desc "Scanner to detect vulnerable log4j versions on your file-system or to send specially crafted requests and catch callbacks of systems that are impacted by log4j log4shell vulnerability"
  homepage "https://github.com/hupe1980/scan4log4shell"
  version "0.15.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.15.0/scan4log4shell_Darwin_x86_64.tar.gz"
      sha256 "623dfe8b7d5aa50f77ff63554846e340ea7dfca4540d5069ca5554a19762d016"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.15.0/scan4log4shell_Darwin_arm64.tar.gz"
      sha256 "d776375fdcccc8dc18c388497b3999781dd6e909790b9d6b907977dc0cb306bc"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.15.0/scan4log4shell_Linux_x86_64.tar.gz"
      sha256 "c041d61d19577d33a0d9002aa88e5e7175cccd8b6a4e83b29acbde52da9d734b"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.15.0/scan4log4shell_Linux_armv6.tar.gz"
      sha256 "aa52ecd9ef96aa6832a69c6ca2357ff70f445b27b03085b818cc3fe66bdadac4"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.15.0/scan4log4shell_Linux_arm64.tar.gz"
      sha256 "2e8fa3a676244fb9ac7e23cf40bbf8c3205299e359d8a2cb50ab741a0e84048d"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
  end

  test do
    system "#{bin}/scan4log4shell -v"
  end
end
