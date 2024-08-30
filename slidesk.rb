class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.4"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.7.4/release_mac.tar.gz"
            sha256 "aafe078dc651d74585659500a8a9bc2d70e3cab003b619569c40bc234a146ed5"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.7.4/release_mac_intel.tar.gz"
            sha256 "d31697291d958865ffa4735e847a47a715dc54dd0ef592b1a2d4801bd2b91cea"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
