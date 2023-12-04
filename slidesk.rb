class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.4"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.4/release_mac.tar.gz"
        sha256 "07670add7f7f7b2a38f707ad05dc27155bb763602960f8927d902b0e13d382df"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
