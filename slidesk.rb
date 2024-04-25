class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.0/release_mac.tar.gz"
        sha256 "a004001539986baef9b8f94c1a596431e3c09f3e12276168b0ae55d0b4a0e8e7"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
