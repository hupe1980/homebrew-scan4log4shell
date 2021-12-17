# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scan4log4shell < Formula
  desc "Scanner to detect vulnerable log4j versions on your file-system or to send specially crafted requests and catch callbacks of systems that are impacted by log4j log4shell vulnerability"
  homepage "https://github.com/hupe1980/scan4log4shell"
  version "0.8.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.8.0/scan4log4shell_Darwin_x86_64.tar.gz"
      sha256 "3f25e7163b0bdabc97bf79f1e322ebbab4274269f9567f93e298a0c890111dc8"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.8.0/scan4log4shell_Darwin_arm64.tar.gz"
      sha256 "5ccc96b1b4ff169965bf4fb33c8d089897710467e7beb6ebe12a7fddcd9f73be"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.8.0/scan4log4shell_Linux_arm64.tar.gz"
      sha256 "a9d6a7e662d42b504ae7395c7d4b5e63f2fd28764b13c1a1ea5268a40dfb078a"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.8.0/scan4log4shell_Linux_x86_64.tar.gz"
      sha256 "f0291218f18d2a696638e57275c4ace490c1633ef4dfda754d7274a03fa2f39c"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v0.8.0/scan4log4shell_Linux_armv6.tar.gz"
      sha256 "fe63f81014a5f5f9de8f58c8019bf26bad571aa202e369fd04f43bc871f92a0d"

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
