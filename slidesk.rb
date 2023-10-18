class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.0.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.0.1/release_mac.tar.gz"
        sha256 "224c2f386947ec8ee59310b5d6c76187eb695bc346808d7c7d8c7bec8a81356c"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
