class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.15"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.15/release_mac.tar.gz"
        sha256 "01458a9ba6e452a0ba843277a59c61875bc9be13a14c45b3a6db657feb593af6"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
