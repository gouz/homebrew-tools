class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.11"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.11/release_mac.tar.gz"
        sha256 "3310d19245dc73adb2da3fd830e0815ba27707c121ea766734be4d5b468661f8"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
