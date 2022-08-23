class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.86"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "e0a125ffc5742b60b3626bb63135a249f1df545cca01ac5da0b7136583115ef7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "4bd473408995cc206e1e5295fc61fe447c6d4270a9e801eeb659d204dcbe1131"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end