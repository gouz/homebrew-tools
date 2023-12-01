class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.1/release_mac.tar.gz"
        sha256 "00d4283799da6a8afca662ce061ee7ff2b79680bf9d550e7977184f9d885e8f4"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
