class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.25.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "7cef77cee973c4e4db690dc6b2d3d0efe708811c373a7db0c444d62f40ac7dda"
    MAC_AMD_SHA = "d3ff0bdb378408b005f11c7513bd099230b335c17e134d4e207d2ac7844419af"
    LINUX_ARM_SHA = "9655ce467782a9e65cdf659196ea08efa9d0803a2dd111ac1a659ab5ba293f80"
    LINUX_AMD_SHA = "b22101790ada8ea528c18ba82f6dd29b6b8f8cbadd5beac5fb0db19908bb95b0"

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
