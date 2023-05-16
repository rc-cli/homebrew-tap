class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.264"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "75da7348327926a3c61f50268aefec493cc4013dfd2ee9eec273ea4782df15d3"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "32bde4eca0474fa3265d0f8d12968e0febd43c55026186bed64db26f923efffb"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end