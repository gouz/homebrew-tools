class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.1"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.7.1/release_mac.tar.gz"
        sha256 "0c425fbe18923754c000df1d8b72fe5c6843435d3d0fa2f5d98bddab8b794908"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
