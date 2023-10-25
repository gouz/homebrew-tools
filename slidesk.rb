class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.1/release_mac.tar.gz"
        sha256 "7f8c5d43a37c5c907094963904eb376f688e67df992b9826c4bdfbe825617a58"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
