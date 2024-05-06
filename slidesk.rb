class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.6/release_mac.tar.gz"
        sha256 "3e8e35e1764e62ebfbbcbcf563f38807f9e35a19f5db911d5f7cf05d87e1d27a"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
