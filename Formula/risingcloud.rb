class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.221"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "1b4b2da2a7d87c008311d48f818b9465aa7ebe8e1464de01183f50c46378adc1"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "fb2402ea576d76ba97843548e07a34075758725b3755d776b4f05331988b2477"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end