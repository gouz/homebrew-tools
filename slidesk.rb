class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "4fbf77d2a75ed32fa024013226b6783b30053baa44e79449b57e9c5d147c344c"
    MAC_AMD_SHA = "bc5ca80ce4d8ec76b4f41978667faab4941abff511155548065dc060260fb3b6"
    LINUX_ARM_SHA = "ff3b88251b5ff82d7bdc4b5af32f68da86f75ebfa76af63b029ad54b83c60b7d"
    LINUX_AMD_SHA = "e0dc18b1775bee8606973efcc16546b2453d8bd2e1221a8def50591f9403cce9"

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
