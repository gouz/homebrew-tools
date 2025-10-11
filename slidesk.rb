class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "bd7daebaecc0839889ed95751e8f58ced7b9bd0f6d8dd6fccf31caadda85631d"
    MAC_AMD_SHA = "631fa9b7a850f68a168c9a2fc291ec1a3e36415dd4edeedb67bfae53548159ca"
    LINUX_ARM_SHA = "abc192f84b3293cdf50a3180616530d9c89dcb668c4fff1c32b13e365d126c1a"
    LINUX_AMD_SHA = "fdb887e533c1cffbd0f60af500d5d9e134c1eadcb9b05593696cdd7970d822a9"

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
