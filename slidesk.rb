class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.12"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.12/release_mac.tar.gz"
        sha256 "a23d79e5c514b639d1f3ed43468e9ea24c137c8858617fb1b6288b84e38e2c3e"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
