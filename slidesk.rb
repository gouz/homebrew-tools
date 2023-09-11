class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.2"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.6.2.tar.gz"
        sha256 "2e0bcc9954161bc82ce2484225ef78fe943c05692525d058749c155b151b01fa"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
