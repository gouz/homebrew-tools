class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.3/release_mac.tar.gz"
        sha256 "47ce23d0c282ad719f180f7dd1c3ea71d57e67c86dd0f7c956fbdb57d5f2a1b2"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
