class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.5"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.5/release_mac.tar.gz"
        sha256 "d8d94911c848139e70b4b35903e6224f4d8688d9367e712de8d5000729048b2d"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
