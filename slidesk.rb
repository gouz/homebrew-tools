class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.4"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "0b68634c61e9dbe0df354fdbb6bd212ddc65b832cb1c8e384020edcc202c9c83"
    MAC_AMD_SHA = "73742c7f5df1e151eb26cba3865787778891f7d7c7716cfd7618eea15e75ca83"
    LINUX_ARM_SHA = "4fb78df971c62ebbcadc42dc55201f67e3bf5b5b72a435e0af68a81539fc260e"
    LINUX_AMD_SHA = "5de086533a511f905960226e2fa2bd896f54a6bc58c407dd21c3ae507d0e5d98"

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
