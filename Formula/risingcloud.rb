class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "1.2.69"
  
    on_macos do
      if Hardware::CPU.intel?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
        sha256 "bcc42f4f07e5fd658fb43754dd4cb7f1fd1173e2424973b3b84f4e829b82e34e"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
      if Hardware::CPU.arm?
        url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_arm64"
        sha256 "fee155bb23c1653e6033a241b266f50c57baa680e777fa17b8ba0666427145a5"

        def install
          bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"
        end
      end
    end

    test do
      system "#{bin}/risingcloud --version"
    end
  end