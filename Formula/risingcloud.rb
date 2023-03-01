class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.143"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "78411f549e5d7202a9d78b7c74a63b426a8ffe7fadfa67ec701ae5b4925f6d00"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "0d8cf8f656d39f839721890390135106f13525edd99664b796e61dc297dafa9a"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end