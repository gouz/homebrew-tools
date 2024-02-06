class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.0/release_mac.tar.gz"
        sha256 "2c819d607391da36d366035600d4995f55db3e9f775341b1c0bacefd7f4e4fa1"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
