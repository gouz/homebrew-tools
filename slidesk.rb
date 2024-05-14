class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.9"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.9/release_mac.tar.gz"
        sha256 "19a84aaa23796ac4208e994ff3ee3b05b89e099e7596d432ea2ef8ab9975c6fa"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
