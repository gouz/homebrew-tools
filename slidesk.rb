class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.10"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.10/release_mac.tar.gz"
        sha256 "9119572d9883066b7323d797a2b5431f36144478ec39481bc08de419cbaf4c2b"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
