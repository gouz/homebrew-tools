class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.2/release_mac.tar.gz"
        sha256 "710a2802e935c91b2199068824bb7659691c369a7e59cadce827fd1dc0d1e30f"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
