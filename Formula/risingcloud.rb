class Risingcloud < Formula
    desc ""
    homepage "https://risingcloud.com"
    version "0.0.1"
  
    on_macos do
      url "risingcloud-public.s3-us-west-1.amazonaws.com/risingcloud_darwin_amd64"
      sha256 "dbc1ba04f62a7d6640a69bdabcfc3d10f339e4b4dc0b5a958a9c58a2f186359b"

      def install
        bin.install "risingcloud-public.s3-us-west-1.amazonaws.com" => "risingcloud"

        bash_output = Utils.safe_popen_read("#{bin}/risingcloud", "completion", "bash")
        (bash_completion/"risingcloud").write bash_output
        zsh_output = Utils.safe_popen_read("#{bin}/risingcloud", "completion", "zsh")
        (zsh_completion/"_risingcloud").write zsh_output
        fish_output = Utils.safe_popen_read("#{bin}/risingcloud", "completion", "fish")
        (fish_completion/"risingcloud.fish").write fish_output
      end
    end
  
    test do
      system "#{bin}/risingcloud --version"
    end
  end