class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.3"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.7.3/release_mac.tar.gz"
            sha256 "fea3bfa64cfb048e6eefd4faecae5485f3fface29f70caab0ba73a365085fa78"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.7.3/release_mac_intel.tar.gz"
            sha256 "d5bc8012c7de46b119815aae23eea484709075bd66f7eddf095f9f826106c10b"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
