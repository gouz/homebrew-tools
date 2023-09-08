class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.4.1"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.4.1.tar.gz"
        sha256 "05d8c35d437a8fdd4a7eef82bb4e13692e192aa2209986d8878d20cef4e80289"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
