class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.135"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "225b38d5f41c96ee93dbbf4d7eb33d9fd633fef07dfe898aea16904aeea47570"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "9fc06aa1bc36ba570ef3e91754c63e33c9364c665626c6450fa2c50d88d5427d"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end