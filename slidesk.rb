class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.4"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.4/release_mac.tar.gz"
        sha256 "5d41bd65c70cba22880d7b6d8801763981d7009dc6384ea6e49980d573c78229"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
