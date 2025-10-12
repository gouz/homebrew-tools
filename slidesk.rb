class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "35a4261de9875dab0175203a1eaef047637a736156697734ad20cd4f6559aba1"
    MAC_AMD_SHA = "e36843bc4dfc935a53a6dd15441c0f78b4e806235f29059ff6101b258dacc31e"
    LINUX_ARM_SHA = "c8a6c10d83d550a9963f4d42da67b661aa2cdf9606d382f8716b9714d1d1786f"
    LINUX_AMD_SHA = "8a58c78c6582bdd4172abb1cae455b1c83f1125fdd056f2c40138d9990e1f6ef"

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
