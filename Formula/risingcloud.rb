class Risingcloud < Formula
  desc ""
  homepage "https://risingcloud.com"
  version "1.2.304"

  on_macos do
    if Hardware::CPU.intel?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-amd64.zip"
      sha256 "18b32b8ac5af1d5fde66d222616ce8db474a0ddfd4f66a40731bdfc90098c912"

      def install
        bin.install "risingcloud"
      end
    end
    if Hardware::CPU.arm?
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud-arm.zip"
      sha256 "ef0ae375af75b0ae72fd7be0247c55d1332143d19d522b9ba141a8670ddc164f"

      def install
        bin.install "risingcloud"
      end
    end
  end

  test do
    system "#{bin}/risingcloud --version"
  end
end