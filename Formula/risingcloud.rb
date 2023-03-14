class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.156"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "d4924b2b33f5a59cd7fda27ba45eec0a0f45cbc5353c3227616961df37e9ece7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "81f68ad3a8e75c23096972d7a0e27160ae048fc13ae5ec0bc201185a928d047f"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end