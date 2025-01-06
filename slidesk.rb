class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "99.0"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.10.1/release_mac.tar.gz"
            sha256 "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"
        end
        on_intel do
            url "https://github.com/yodamad/slidesk-fork/releases/download/0.1/release_mac.tar.gz"
            sha256 "1234567890"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
