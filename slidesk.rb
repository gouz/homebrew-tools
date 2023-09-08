class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.4.0"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.4.0.tar.gz"
        sha256 "4e313069f62a57db80c2d0f55104257c4ab14ccc766be795bc71a14d89312929"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
