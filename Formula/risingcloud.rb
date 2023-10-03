class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.345"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "ae60da7b0805ea5808297842d0ee369dfcfe0513296605f6805467cf5c8649df"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "d97106f6ac19c5880114a185a0f2c77770279ac9f0b7b29502f8906217fa7d92"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end