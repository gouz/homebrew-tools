class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.2/release_mac.tar.gz"
        sha256 "0784fc15d3573bfd7ac505400dfd7b5d461a334b3e25c589614ef74cb5786adf"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
