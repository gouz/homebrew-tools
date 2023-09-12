class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.3"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.3/release_mac.tar.gz"
        sha256 "ff055e63ad22d6907b8aa8f96ad78eb42670aae36544673e9f5a0675cba36e15"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
