class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.15"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.15/release_mac.tar.gz"
        sha256 "7436c49cc721fcceb36687734f4328fcd0be3947772115cd851cba6c940c4e3d"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
