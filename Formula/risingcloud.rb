class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "10"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "6dc6e81cf96cdb1b269955fa5a32dac1af675e49d0adb216a5b8e528677437b0"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "dc5c3d3b3b6339991d6c9a7c910b9e5fb9d7573c850e7ad9c722baa93741508d"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end