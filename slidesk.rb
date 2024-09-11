class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.6"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.7.6/release_mac.tar.gz"
            sha256 "c3800412567ac2d84531ac92cc6bb87b3bbcec2cf356b0626dd234bf8ec80462"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.7.6/release_mac_intel.tar.gz"
            sha256 "76c850f6c56769de5bf08609e82f1bdc372d52ed2a5c66228c059c67bd8e710b"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
