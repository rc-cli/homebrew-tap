class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.68"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "d2aa13fe53ffbdb92ffdcf86c18a951295555044753c6d1dc48e13202eaf2c21"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "c4288114746f229e23b9bb2e1265dec65b20e391b044a2e6030f8970bf023107"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end