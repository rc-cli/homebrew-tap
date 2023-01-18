class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.115"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "465f7c61dae5ea8baf2a1dc90fcd6411218c85df7600b4b6f47545f88238cdb8"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "f799592487355213ebf121e2b3bff9cad88cf690ae139e5d228d0ba7b4c2e202"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end