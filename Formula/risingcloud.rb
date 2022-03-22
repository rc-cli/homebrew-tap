class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "0.0.1"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "a9d22bc188e30daae038d48b43a2ea135ae7cc4019b9b06d143c828b2404e90c"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "426c09ca6cf5c2f7414be458fa0f8603efea436916ad600a02dd470b5308e812"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end