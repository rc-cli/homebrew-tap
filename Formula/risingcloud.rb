class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.317"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "d1170bcc28fb16d5711b240abf88319a404ee097334d1ce47c5139f9979dc457"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "402f5df503f2a4313a15bf69f07dc1b0ad74c58c872bc5ee040f18440b1e3ced"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end