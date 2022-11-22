class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.99"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "140722d278f27e757962673854e020ad3fee8e55768489ba8b567a3def931c8a"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "665c85778921050f4e7304e4ab48fb62dcf675437ba158b9cc1bd29ee1e4dbc7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end