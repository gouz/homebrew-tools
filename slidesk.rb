class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "a5c1e9827bac79a89f3c401491405291ffe28e7af145a8d29d519cfe4b5077d6"
    MAC_AMD_SHA = "601541fc7efb7a302748d56cf950b19b64bb15109460bd69eeec960ad69a8998"
    LINUX_ARM_SHA = "a9869872a2e2f7297026524fd9b1e4623f1f23270fe2dd6e8251eaf519bacc93"
    LINUX_AMD_SHA = "cda82d3b059115dedf182bbe438c7c6f68e3f33c1950ebeac5d73052af314cd4"

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
