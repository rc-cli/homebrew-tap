class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.123"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "50c88b4c6defd1aa674c17c51fd4e8f1061aee9e73208a2cb923043fc94652a7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "f9185bc2c1a1290f05fdb127834a7fe17b316607201420d1716bb9c5f0abb763"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end