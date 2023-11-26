class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.10"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.10/release_mac.tar.gz"
        sha256 "181427b1d1a6de2bf9d005e57ea4156978830508210b9945e795aaedace1686f"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
