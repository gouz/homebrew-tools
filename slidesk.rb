class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.12"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.12/release_mac.tar.gz"
        sha256 "0ec3159538c22f6d2dc69dd660e460a62ea59ef4cfb1343d485bcfaf9c76ba7d"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
