class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.90"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "fff08140b9c2c45563ba7d1c33980091d78096b86ea0cf937d95fe5f4c5647d0"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "d324efef3cc6609b36b7f1f5dc5786596e7b7399a353cabf227cd8cdb8cc5e4b"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end