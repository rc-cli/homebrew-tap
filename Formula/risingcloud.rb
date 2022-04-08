class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.67"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "44b4a1df79b19f66ac8372b000fde5c6b3e836a32faada16b5ec9aef229d048c"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "f6d53282ec0098750d8df81f49f164e0b962eef4d708836838ef20ab28563be7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end