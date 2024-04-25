class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.1/release_mac.tar.gz"
        sha256 "221aed147dcb5c1a6320c1391d27a666ccaece16ba04b965bcf1a444782675e4"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
