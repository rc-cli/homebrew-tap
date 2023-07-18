class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.300"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "dcc3eae6b2b2e183d38ead25579f89b8460d5e8a3d915571f132eba873b908b4"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "552e5210d4c819aa855eeb206a7ffd45d81148f60d700f3f081edffebb6a2400"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end