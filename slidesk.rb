class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.6/release_mac.tar.gz"
        sha256 "e849cb1ff959c0a2ae5798ef9823039e610376cceacd037824bdc1a543eabfdb"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
