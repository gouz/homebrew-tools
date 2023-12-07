class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.8"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.8/release_mac.tar.gz"
        sha256 "d0f9f06dad64ed7bf3eb163256155de7a50054aea1f0f34362412a655a1b102b"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
