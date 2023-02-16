class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.140"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "a40fea579a268f14a397e4b754e8dd6373d7f0a17cf4e7b32e34bb374bc72f79"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "1c4f71ac3aa36f801b3153206e9f6b6903b4ffc531c99ca859cd2ddbd3d3b7dc"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end