class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.2/release_mac.tar.gz"
        sha256 "06a9793e9b13a7893834c4d7cb514f2f484b989c3c75bc2881bd2e02dfc138ce"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
