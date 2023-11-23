class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.7"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.7/release_mac.tar.gz"
        sha256 "b2077ed13bbfbeb305c10dfe888e2fc1fe3bc9eadee11fea6332832b2265a6c8"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
