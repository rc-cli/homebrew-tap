class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.93"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "94528c3eaaa35a3626cf57340c0a2ef444da098a2bde9f8d4e2729a418f80a09"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "35aa9d3313f6130a8dc856548c248d9587afdfe98ab630d043f14a2daee1d727"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end