class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.9.1"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.9.1/release_mac.tar.gz"
            sha256 "e347caf9f143652b4a24be9a5f846d2a1b54a1df28c1b80e50fd0ed498a54e2f"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.9.1/release_mac_intel.tar.gz"
            sha256 "0892e536a3a294573ce3242fcc80fd805faf4699662fa2599371e231939eac75"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
