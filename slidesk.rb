class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.5"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.5/release_mac.tar.gz"
        sha256 "de3a6ce6fa915d1b435d662b1d8ef79abd3f3a2c61811c155338720609f8eaa4"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
