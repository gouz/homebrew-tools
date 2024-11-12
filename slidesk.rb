class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.9.0"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.9.0/release_mac.tar.gz"
            sha256 "2fef961fcef463e9e687530d54a0bbc2d48820d95b150e664db6eca39498c338"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.9.0/release_mac_intel.tar.gz"
            sha256 "5ac45a0a53d72bd9a2af8d6940b696e8965145f383691a4783bf3fc5b88efdb9"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
