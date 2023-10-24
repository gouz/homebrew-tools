class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.0"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.0/release_mac.tar.gz"
        sha256 "1b880d12ff0b8f0de7d84dca019d251e68b79bf8721f4e5546530637ee09ad54"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
