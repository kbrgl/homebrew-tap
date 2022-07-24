# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Gameover < Formula
  desc "Play text-based games right in your terminal."
  homepage ""
  version "0.0.1"
  license "GPL-3.0-only"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kbrgl/gameover/releases/download/v0.0.1/gameover_0.0.1_darwin_arm64.tar.gz"
      sha256 "c96fe3de4e35e4218eda6613e6789b306a1c9823e2f3d5ab6a16452df2106a5b"

      def install
        bin.install "gameover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kbrgl/gameover/releases/download/v0.0.1/gameover_0.0.1_darwin_amd64.tar.gz"
      sha256 "92f824dff94c7ea3763b469f10b5bb8cddd56835cc21b435136f7f6deba6c00e"

      def install
        bin.install "gameover"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/kbrgl/gameover/releases/download/v0.0.1/gameover_0.0.1_linux_arm64.tar.gz"
      sha256 "1e5504dad85accedfbe13f498d896c20da2ab2352bc9629eb783310c92cbe0c3"

      def install
        bin.install "gameover"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/kbrgl/gameover/releases/download/v0.0.1/gameover_0.0.1_linux_amd64.tar.gz"
      sha256 "f1abebccc24966194b596e408e59a6863686597ae32acea6762868be793389e2"

      def install
        bin.install "gameover"
      end
    end
  end

  depends_on "go"

  def caveats; <<~EOS
    Gameover is installed. Run `gameover init` to get started!
  EOS
  end
end
