class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.8.1"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.8.1/release_mac.tar.gz"
            sha256 "890afe33ca39509ee4fc4e9cf692211fd7e3f99b28af068bbf47c391ada5e90d"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.8.1/release_mac_intel.tar.gz"
            sha256 "c2ac2be2d383bf4bff3734517755b8f421bc252d1f0e9a1641b38d8bb525dd4f"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
