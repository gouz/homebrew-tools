class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.1"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.6.1.tar.gz"
        sha256 "f72e138372789f4f37b21be80123fc1dde38c0baa075425c4d81cafedcbe1110"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
