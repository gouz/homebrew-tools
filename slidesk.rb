class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.1/release_mac.tar.gz"
        sha256 "d5d727aeb3bb0a9d548e03e70090707df857356c8c3cfa445d272a51ef062894"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
