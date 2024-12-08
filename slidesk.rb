class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.10.0"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.10.0/release_mac.tar.gz"
            sha256 "ecb153b45ea3a5419b5d4e42f52f7eb64cb8eb52621e53d5230761abb4891bda"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.10.0/release_mac_intel.tar.gz"
            sha256 "c9568ee08a4ef5c0bf94045b3133beeafa9ec222ac280d7859b18c2964e55451"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
