class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.101"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "2496211a083565148de772b8fefcd34eea46e0c4204727cb93c300c3a19c29ec"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "eb54335d1cdb095481414ae8cb517561e122f368637e8431591b29bf86f4f8d8"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end