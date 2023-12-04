class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.3"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.3/release_mac.tar.gz"
        sha256 "65f4c76a9151e22b40c9f1b565342e1e9ed3e69f5bacdf150667c2afda3c1545"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
