class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.11"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.11/release_mac.tar.gz"
        sha256 "43aa0ce42c05f014ed6355ee135e00a998280e91190d46cd05e492c2705c4e40"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
