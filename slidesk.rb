class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.7.0/release_mac.tar.gz"
        sha256 "a0ec075da18a2c2947a0ee1e5c259319b012d5d93a57d4faeecd83c14ef3bf13"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
