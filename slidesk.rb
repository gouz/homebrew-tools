class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.6/release_mac.tar.gz"
        sha256 "c8fcac2c62b424d3507a87f30ab6fee8ae579f0584c1f5577f52742a417decab"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
