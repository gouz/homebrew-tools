MAC_ARM_URL = "https://github.com/gouz/slidesk/releases/download/2.10.1/release_mac.tar.gz"

class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.10.1"
    on_macos do
        on_arm do
            url MAC_ARM_UR
            sha256 "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.10.1/release_mac_intel.tar.gz"
            sha256 "738efe5ab5753d56b35b0562fb4c0a807f7bda3dde0e72a5ec3911d12944356d"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
    on_linux do
        url "https://github.com/slidesk/slidesk/releases/download/2.10.1/slidesk_2.10.1_amd64.deb"
        sha256 "6298f827c63782252644d6b7ec9ff762a8a0d93354ab30362ea929638666363d"

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
