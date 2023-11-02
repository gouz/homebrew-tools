class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.14"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.14/release_mac.tar.gz"
        sha256 "c09a9baac9cc3d14355f98516f5c6809d2fbe7730e1d14a1627f3fa42d2aa778"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
