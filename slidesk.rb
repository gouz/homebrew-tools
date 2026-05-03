class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "1725491025172615da6f47c0700ec5ca22013191de7d409a1f70b4635d7c930f"
    MAC_AMD_SHA = "0d741417c5d48179e0010f280fa9ceb2536515ee17cf9792bf2523c40e424bbd"
    LINUX_ARM_SHA = "bb18512ada7dc7729451d22b900b41aa616b83b601c890a061690eed2413b794"
    LINUX_AMD_SHA = "63a28d11068ba9baf3f804d50e4dba332092ef33e9dbd1cc08a5917ab61ded4b"

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
