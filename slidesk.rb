class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.4"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.4/release_mac.tar.gz"
        sha256 "b671a705efc80fa8b3221cb26ba58fd70bff8b58008d92b8f31a74df42a8c359"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
