class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.7"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.7/release_mac.tar.gz"
        sha256 "5a87f82b5d2e85bd94865f688d17684d6f0b6102d49da999eaf1f2fb2be07839"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
