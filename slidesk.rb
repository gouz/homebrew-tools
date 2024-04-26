class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.6.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.6.2/release_mac.tar.gz"
        sha256 "72256195df33e220e3aefda44821add08ec29969a593007190c3c958ae650681"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
