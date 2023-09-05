class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.3.0"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.3.0.tar.gz"
        sha256 "787a6b47d6cc9bce2947d3c09c753fb10ccee5cb5250c19ae0629ac03f031706"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
