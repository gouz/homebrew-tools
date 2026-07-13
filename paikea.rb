class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.2"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "b072e774baf0df410e846403284e60b32ebe8f4bb30f2fbf145a84987d7ec4a7"
    MAC_AMD_SHA = "bd3974ff499d61473dbbdea4199a8ea84fb4720a49a91b398e91a65a3be80efc"
    LINUX_ARM_SHA = "4de739469ce39499344f6102a1930282711cdd8755b4a0cff130248b638480a0"
    LINUX_AMD_SHA = "1aaa1948181de25765fddad45f402e8b8657c03c5e48bf685b6290bcb69c91fa"

    on_macos do
        on_arm do
            @@file_name = "paikea_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "paikea_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "paikea_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "paikea_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "paikea"
    end
end
