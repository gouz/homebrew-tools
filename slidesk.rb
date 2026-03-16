class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "327ea890c4c96c3dc492900c0bdf5982cc046a07a5e294e8fc97199ec761f288"
    MAC_AMD_SHA = "3a659c520e90db3fdbd5810043ba327fdefafc447a6eb6fc6be0cf565424f5bc"
    LINUX_ARM_SHA = "d4e80e8429838242bffc87350a59103c206cccf23a05373957ac65cba6782d6e"
    LINUX_AMD_SHA = "4309d7820f92e7b1892ede857d99a1a1a75f318723506f28626e0e416710da1a"

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
