class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.9"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.9/release_mac.tar.gz"
        sha256 "51b41f24da4af132a715fc80d001ec016d152f5904c99b3bdb6819f80ec58b33"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
