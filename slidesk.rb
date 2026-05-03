class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "212e2d43777e088b6880c10330006ee326b07bac236d67cad94d753eb010b8b3"
    MAC_AMD_SHA = "45b95e1cea55b05b69c7248aa29596d4ab44f5cd6be51193e48b3c5fad1f7e48"
    LINUX_ARM_SHA = "34021d84451b8d70459ec2ff15e574bd6e1976764fb7efdc450a78e50ee124dd"
    LINUX_AMD_SHA = "fef4e979792ae0dc5aeb9d0ab4f3bf975066fbc5b39ffd47e6cbd06c8750bb1a"

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
