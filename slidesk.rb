class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.0.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.0.0/release_mac.tar.gz"
        sha256 "ab767783ba87930d9cb45bcc84cbf25b12a8d5522180930feb933892426fbbb6"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
