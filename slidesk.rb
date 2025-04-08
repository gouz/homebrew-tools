class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.12.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "bcf13a5d2f14181bd3d456ca20a1cf06aa9a9fbf0b8d4f603f7af73ff9d5c604"
    MAC_AMD_SHA = "ffe39b724a089a0864929746b7311dc2d03d5fdfc54e3c9070370e59742d117a"
    LINUX_ARM_SHA = "8fd887e9a4675a78f7ea1be69df6208164f475c8a778cd6be96a78dc8be99664"
    LINUX_AMD_SHA = "a0251f2f753d1d6fc713354f763f003b6bff819b6d60d80857f3254d624e9f58"

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
