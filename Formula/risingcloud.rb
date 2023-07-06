class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.289"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "2020a850b3225d97ea8cfa5198a26ee52ea7f9ac13048d740460b280c9cd8685"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "c74a72f6b84ef9b325c7eb606e2faa2d4a16c6780a6b6a59e683cd9e5c68d06c"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end