class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.3/release_mac.tar.gz"
        sha256 "c56202bb0f34aa944a07d2aad95cc05cca25e2fe3732d44bcc3ef91e136aea37"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
