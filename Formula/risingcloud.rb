class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.82"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "b7de0c418afd4cf4b973e07130236c5c31b154d6a9742697993c71d9b9e82db9"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "50766c4a7e1c8590a7c81aecee3a6631807ead952e12b5b5b745b80bcb5ed072"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end