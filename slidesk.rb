class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.2.2"

    on_macos do
        url "https://github.com/gouz/slidesk/archive/refs/tags/1.2.2.tar.gz"
        sha256 "e6a112ffc14c460e8f7ff09f639499b575b4186ef0513a60d981db8add26e660"

        def install
            bin.install "exe/slidesk" => "slidesk"
        end
    end
end
