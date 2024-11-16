class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.9.2"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.9.2/release_mac.tar.gz"
            sha256 "4905ffd93b46785b94a426b4db030b5961ff84732f9b8d1a9a9aa8375dc23497"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.9.2/release_mac_intel.tar.gz"
            sha256 "9aafa07afc2a0f0da3b7c7fc0e6b88ae7750372d98dcdc46f201fe42064702a8"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
