class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.2/release_mac.tar.gz"
        sha256 "88bb05157e0dd2d7379d897c7c256895e5ef94f53e6b1388289f5f6ed55dcca6"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
