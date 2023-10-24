class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.0.2"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.0.2/release_mac.tar.gz"
        sha256 "adb159d54796a1801f9e8ad95681ac75bb532062264530b756542df4a4be31b2"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
