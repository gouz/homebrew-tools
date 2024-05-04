class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.5"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.5/release_mac.tar.gz"
        sha256 "a5224f03b9b8f6cbde21d0a32327dfeba8efa3732a4d6f1dd9efafd41f260951"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
