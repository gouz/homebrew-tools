class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.5.0"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.5.0.tar.gz"
        sha256 "1de34458334d04855a863b0c56143a46c824bbf40a0c7b268bbd824e2c5e5c7e"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
