class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.2.8"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.2.8/release_mac.tar.gz"
        sha256 "468e2fdae03bcbafc636e4429364644087e47d33932c3120065218807ee68120"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
