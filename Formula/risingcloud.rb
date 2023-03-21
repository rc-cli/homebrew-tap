class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.184"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "878906fa71bf9bb741d2db2e4e3ff976b651a749694460858eaa792cb7f88cac"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "d0acd757bc98e13763ee1ea49dc1b8329b3a845161c88886f89d7b5b8ee5245b"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end