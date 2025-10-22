class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.4"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "c9d5d4a78e17afb0dc7d9e14c2a386cabe4a211525c269597196c720727ab659"
    MAC_AMD_SHA = "481438da76c61af3bb82b06701aedf1969408f12c816d27a51facec17136d9cb"
    LINUX_ARM_SHA = "8b39197265841dab9db3ff68b7ce115216ced2243bab8613703793d54a6a2493"
    LINUX_AMD_SHA = "280f55f0d780f3a5d1a5f5cfd6acbc11c8ffb89137ad07514f3c829fe6f9814d"

    on_macos do
        on_arm do
            @@file_name = "slidesk_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "slidesk_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "slidesk"
    end
end
