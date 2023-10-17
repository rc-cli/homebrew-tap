class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.391"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "02a24b2382a73bc42e2cc7bca99607da359fa4ba9be361107a255503ec294656"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "ad2f27e339b0b4ec0164793325555770c2800ae747a2581451a39dda2bd62194"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end