class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.0"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.6.0.tar.gz"
        sha256 "825a8228b77598847c97a60de3d4f15f618c8db38e23abcb4eddddd94bd07ec8"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
