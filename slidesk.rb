class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.9"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.9/release_mac.tar.gz"
        sha256 "67cfe4ae43d1ddd149b70d8e90abed18cdd4701c59870e8695ac5a856e8a4928"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
