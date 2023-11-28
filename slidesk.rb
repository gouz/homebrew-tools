class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.0/release_mac.tar.gz"
        sha256 "6d0294bc53f68bcc79a958ab789cea80094ad7fe190f42257d9e7a8cd1992ab2"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
