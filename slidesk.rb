class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.6/release_mac.tar.gz"
        sha256 "1c2b9d78fa1c391a7ac17df8c7043e828c284abd36c56e6dd049d8ab00e2a001"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
