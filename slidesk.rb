class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.7"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.7/release_mac.tar.gz"
        sha256 "b6f168bfc1ffb4f332b7284eb8e36d440d8781431d7f7ab82adb067cb30ae129"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
