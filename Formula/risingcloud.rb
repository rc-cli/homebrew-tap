class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.112"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "6e9f360beeb6f6a21d62596ece62073b9ce87fe688f1df4393c0f76b2ee422c7"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "73c3ace49b5bfbe6f0925737c850b351395ab00f436a21ae05e40bdc614aecc4"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end