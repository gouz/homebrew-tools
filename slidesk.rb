class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.22.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "94a52746abfcd772cd73eb782db618884a0e21e5ec6bbb79f76a6ea8cd367ad0"
    MAC_AMD_SHA = "028688ceaadec83a0592e098faa8a790f271dba76cc8cfec9f461fd6b8fe4e3e"
    LINUX_ARM_SHA = "5273e168c81fab3becfcc175e90ef690641384d541d421e4397bc123aab409ea"
    LINUX_AMD_SHA = "6f601154abf052ff15fb471e4f12fa57b7caf5257c3ad6f1ec805a86123225ee"

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
