class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.0/release_mac.tar.gz"
        sha256 "1d0a4042cf3631b9df964f5adee1aab0e18df5ef3e1642df4cd90323d80b59ce"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
