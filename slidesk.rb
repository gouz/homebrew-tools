class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.11.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "0b888b95420023aaaad5faaea3d35051f8ee0d31398e6ff642a7e365fd946e0f"
    MAC_AMD_SHA = "8f847e676104bed5423473db4a7b244bb007158e187d3dd10f0a632aad2f2973"
    LINUX_ARM_SHA = "24f547afcdac8a098e01f92d447eda259bf21e97f97efc820ab6058fb9038ad6"
    LINUX_AMD_SHA = "96a377deda4c76ae4ea69c57cff5e0865a5516cb1775e57b3991a65cf79a458e"

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

    url "#{BASE_URL}/#{@@file_name}"

    def install
        bin.install "#{@@file_name}" => "slidesk"
    end
end
