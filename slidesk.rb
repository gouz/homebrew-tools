class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.7"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.7/release_mac.tar.gz"
        sha256 "1693a0619b485cc7b133fb57e744dd681ea6786d8d72134539f87531b8277473"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
