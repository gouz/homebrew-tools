class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.3/release_mac.tar.gz"
        sha256 "ac5f7c51291ec0e7815ccf81982c682db3230c74026e3e3673910f854a536cd6"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
