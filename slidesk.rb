class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.4"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.4/release_mac.tar.gz"
        sha256 "85a21b63009b7e0a45fea7177506820f5b5e049c61b355e92580611df6f833bd"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
