class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "v2.12.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "8550194ad29fe66d479e9c4e75d6be258a746cbb7328ab06be143167f2842aaf"
    MAC_AMD_SHA = "126f14873ff7c1d7fc668db2ed0f19c0eaadac2519464da7e991e40501908e21"
    LINUX_ARM_SHA = "9c1eafd5e20968ca4b73b676f9c92b8907f9e4b48c427c4ea112a0034b190d10"
    LINUX_AMD_SHA = "30a8ff1a3a04a5439be1eaa04b532b43c7401bac44b47b548a7047f2ce6f02c5"

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
