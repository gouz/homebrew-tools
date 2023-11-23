class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.9"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.9/release_mac.tar.gz"
        sha256 "1624b3584f76a5ed595e931ad2300aaeff2ac966dc185b90e30f7bce94f1ed42"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
