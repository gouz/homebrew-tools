class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.5.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.5.1/release_mac.tar.gz"
        sha256 "3924e55e6bb4b88708ed849408ab3103cab85073b8c0c8f8096ea2a1c30dbe27"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
