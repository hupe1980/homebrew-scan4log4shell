# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scan4log4shell < Formula
  desc "Scanner to send specially crafted requests and catch callbacks of systems that are impacted by log4j log4shell vulnerability and to detect vulnerable log4j versions on your local file-system"
  homepage "https://github.com/hupe1980/scan4log4shell"
  version "1.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v1.2.0/scan4log4shell_Darwin_arm64.tar.gz"
      sha256 "1d4313e34d9d104a609a20a5a253192f8ffdeb080c9d7fcf17fa63306b18571a"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v1.2.0/scan4log4shell_Darwin_x86_64.tar.gz"
      sha256 "54dc2da39b3cb81c1ea8d1618424e7153e7ad9d703b14ea573a2aabc61381714"

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
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v1.2.0/scan4log4shell_Linux_arm64.tar.gz"
      sha256 "ab4daebfd07f44929c1cf35688649577e136c50bbfc7591f53c97d9ed41f15ea"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v1.2.0/scan4log4shell_Linux_x86_64.tar.gz"
      sha256 "8d27df25a5afe72394b3bab24312ff7aa384a49562133f4b3dfd33842e8e3b7d"

      def install
        bin.install "scan4log4shell"
        bash_completion.install "completions/scan4log4shell.bash" => "scan4log4shell"
        zsh_completion.install "completions/scan4log4shell.zsh" => "_scan4log4shell"
        fish_completion.install "completions/scan4log4shell.fish"
      end
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/hupe1980/scan4log4shell/releases/download/v1.2.0/scan4log4shell_Linux_armv6.tar.gz"
      sha256 "4f7d3296f038253c7764ac08d70c6ce2766b091ca40475dc160d5614575bb64e"

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
