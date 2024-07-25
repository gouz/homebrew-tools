class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.7.1/release_mac.tar.gz"
        sha256 "70307d41231e6b1cc37f0235a64a555013028109a81ddc43936503efec342cdd"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
