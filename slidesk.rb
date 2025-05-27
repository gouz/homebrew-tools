class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "d707fd5bd5bc709ae803e4cbc0216101730cb8621f8b55df28047508d0c83ee8"
    MAC_AMD_SHA = "58b5bb422e3c62ab29c04c6281907e54204dbc3f250cf422176334aa3d80236c"
    LINUX_ARM_SHA = "6168a423652074f9667593f8f08824d4d6b846c6423701c175ea95f42a38beb4"
    LINUX_AMD_SHA = "585119ada3f59d5762090ad952e88391746d372409eaabc2bae4de2dbb039bd5"

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
