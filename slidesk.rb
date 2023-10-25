class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.3/release_mac.tar.gz"
        sha256 "866bba29729f85429d94ce9be9aa56bc18af499fff431a5490a406bc4f66fc65"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
