class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.5.2"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.5.2.tar.gz"
        sha256 "e3d24ec0841688dace1328054548ddd0646fec6d9ff258dbd6fe8a822cb5df77"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
