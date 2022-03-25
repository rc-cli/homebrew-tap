class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.66"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "079d3a257f4bb9819f72639ef935b9be09fa664959298f16e08171f954bc7a18"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "1e9073052b5d1d6cd4442581365da615cc2d8899e3f63e8fa878050d99ed3b15"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end