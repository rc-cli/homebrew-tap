class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.235"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "01b6aeaa6eb87d20752c216584d9b690f733b7453d938c6c1ec641253db6f690"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "168f482e5e762877064d1dcf3f7cb0f6e9595288237ffd92384b141cbd2f0d43"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end