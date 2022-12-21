class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.108"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "96dff9bc35e1506bbbe8b593960d0ab295c81b7160194d05b649693152a2a955"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "4734898cd54144132f45b32d39d4428cf5610afdb7ea1ac9180c674b0f9a1636"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end