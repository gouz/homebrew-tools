class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.6/release_mac.tar.gz"
        sha256 "f181c756bb3715a001c494054f9a2ba3b8aa8c1c2d363b7b4df15151fc521eed"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
