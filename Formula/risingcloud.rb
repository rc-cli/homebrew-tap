class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.366"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "b3a36fa5ee5e7f7850064e39e1c2d1f9867e34b9cf94b02d6e9e1b8e560ebbfd"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "c9bdd23c02c6d18d3079a8f80cc18495dfa2cc9da57c61290eb0cf8ddee9553b"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end