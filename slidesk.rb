class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "1.6.3"
    depends_on "bun"

    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/1.6.3/release_mac"
        sha256 "b838554de44ed8effcf568cd738ce1f1a47d58990a76ffbedd800aa8fe7fcaac"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
