class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.2.3"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.2.3.tar.gz"
        sha256 "7eeedc88309de87d452c23d0963a2753b47761205e9bd95e211245ac20d5ecfd"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
