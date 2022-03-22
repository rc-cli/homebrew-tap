class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.65"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "aa7dcf4e5f232853f15110d8c56470d97f3fff9682c46e4c3648fa9f45ef12df"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "663e973cb08850022f4ddd7dfe7060e9b3ea0369126c132a62a30053fa830bc1"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end