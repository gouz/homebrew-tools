class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.5.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.5.0/release_mac.tar.gz"
        sha256 "3682ed14ac84c94aa867f2d1b61513607a7a5a7c2053f01c1d5468f668883e09"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
