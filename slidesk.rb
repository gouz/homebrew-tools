class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.8"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.8/release_mac.tar.gz"
        sha256 "2b8e734ffc3444c2b4d2fe20f06116d23c550d87f95f8d4d1f598dc1d3527bfc"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
