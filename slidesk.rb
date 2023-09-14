class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.5"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.5/release_mac.tar.gz"
        sha256 "bfcb9f66c7535fa283783ca3ce6dbb4b449acd4626821c3368fdc9b9dca1fcb4"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
