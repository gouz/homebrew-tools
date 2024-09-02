class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.5"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.7.5/release_mac.tar.gz"
            sha256 "fd86753c7dc84c98c2badabe732ad0723bdfa86c6b0f24cfa9a57d0a62747296"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.7.5/release_mac_intel.tar.gz"
            sha256 "e1c3e426e9874e6375ed109893e1f5b62cd7c5eff505b4a299514ddc350cbc82"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
