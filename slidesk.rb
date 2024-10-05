class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.8.0"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.8.0/release_mac.tar.gz"
            sha256 "f6f017c2d8556b33241216d0eaa96a49b2f4af0af4af77eb6ec11f836e2d7cfb"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.8.0/release_mac_intel.tar.gz"
            sha256 "13959a9eb6a3fcfd1319b46236adff00fc846de1fa8fa3439e8c29c4a1a0a722"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
