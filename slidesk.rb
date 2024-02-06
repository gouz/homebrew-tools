class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.1/release_mac.tar.gz"
        sha256 "1254a8d3136e800f4cb24e78c3a9e01d0097fb47143d24d1a6d47f88e6f1c878"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
