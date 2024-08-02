class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.7.2/release_mac.tar.gz"
        sha256 "3e3e2bacd91085934a39f40a8e7a6a63f2b208df05f97a68065967f2c068c948"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
