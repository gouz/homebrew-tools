class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.4"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.4/release_mac.tar.gz"
        sha256 "4106d1e6f1dd0e49e3b5c01deb58f59f63c98a4d86f3ecbb1abff730a5f927da"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
