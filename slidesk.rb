class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.4.2"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.4.2.tar.gz"
        sha256 "cfe01bcc542348192686222d34a981e1b8152736f213ba1bc515975fb1b79911"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
