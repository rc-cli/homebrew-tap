class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.280"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "e4a7d0d69a935efa25c92c4238b5492da3892c0594bd8c1bdd05c97ec69f23c3"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "f07e39fb4853c444be1721617681bb4aa8f0c04aeee699b6091edd682ac2327e"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end