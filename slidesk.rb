class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.4"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.4/release_mac.tar.gz"
        sha256 "a11d184bba26cf35caa3a4352a58870215fa94080e45e83668098c39c92062a7"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
