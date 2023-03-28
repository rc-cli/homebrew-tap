class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.202"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "d76ebb3e6d4f4ed92d0086327946b3f5b18fccaa9959cc458c5be14270b2c7ee"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "9939f05fe8ad84b1d65dc397e0b829458025cba46e195e84729345fa2e382050"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end