class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.127"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "bd277a0a8440aa781526f5a2abed67911259ac18394eb9f376dcd450837657d4"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "5bc4b11f3455d30404e29539c611e28ef718f37a3999a9f57cb4944aa2c3e564"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end