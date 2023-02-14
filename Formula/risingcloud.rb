class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.138"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "e170f18631a8b915a986bde8a8cf1c46fe331dbb1265fb48e81bf5022ba7a46b"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "f1f8a43c2c51de0e2f9b6a0168efcf34957b9c656df1397d004c45d65d070620"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end