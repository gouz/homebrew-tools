class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.2"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.6.2.tar.gz"
        sha256 "974a94555bff281f4a487e41dfab7b1b322fea6fee05fddc9760a4c54e4e49d6"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
