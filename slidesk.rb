class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.8"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.8/release_mac.tar.gz"
        sha256 "4650254979d7332f3073bbe97453d6bbf1f0967568c5945b94edee7cffcb192b"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
