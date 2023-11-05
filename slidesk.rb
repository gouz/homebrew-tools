class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.1.16"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.1.16/release_mac.tar.gz"
        sha256 "b6aa250ed2b8af264a7676c467c4bb24ab2e8cf23d9e468d335f19e94795f60e"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
