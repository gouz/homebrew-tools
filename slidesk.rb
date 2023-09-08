class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.5.1"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.5.1.tar.gz"
        sha256 "3eb4554999cd9a101ae9d6c520cfde6996efb8cc3286827576e667611f0d063d"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
