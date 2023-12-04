class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.3.7"
    on_macos do
        url "https://github.com/gouz/slidesk/releases/download/2.3.7/release_mac.tar.gz"
        sha256 "86f538eae0daa233c3dbb06b502c067f985a7804e992d69dce60fe1b400e2c94"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
