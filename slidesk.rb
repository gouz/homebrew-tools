class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.3"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.3/release_mac.tar.gz"
        sha256 "0df82a7c0ec95e9e8124af7a791899834596ac49a5e4fbce6082e7835012df1a"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
