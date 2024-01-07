class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.13"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.13/release_mac.tar.gz"
        sha256 "a2886d9bc7589ff1b152beefd9b12cdfea888a1f5731559bd3ad11c05c7d8cf6"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
