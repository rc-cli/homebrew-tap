class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.145"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "01eaaa6d835260fa00b39dcefa3b32f35460c081ab5436ba3eafd5625dae69aa"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "84eb655fac855d5342c6c6093d796b66811af4faad45ae128959ab59b4f86c61"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end