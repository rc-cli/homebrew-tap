class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.336"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "b978f8036b3df9ff18dd0aa7844b5bdf4071131712995767e56fabc0e20a5660"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "97a8803b58cf5721ec35296f56cd53b3822bfcdfa141f973f8f338ff37ee0748"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end