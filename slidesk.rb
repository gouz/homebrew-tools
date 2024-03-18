class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.4.6"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.4.6/release_mac.tar.gz"
        sha256 "fda3aa4cca13feff5be84f7c35f9f91f80df1ec1c13a261448ac97ca518933f4"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
