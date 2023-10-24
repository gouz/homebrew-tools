class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.0.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.0.3/release_mac.tar.gz"
        sha256 "8824d46f5e4849c7ff4b1e3568c784dd8078d7e9b1cc59307cf0fabeb366a5f3"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
