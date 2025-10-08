class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "a9ab2e78e9e479ac504ce41b1463cce894fa56b65da196658e979ce11c604506"
    MAC_AMD_SHA = "46ac8db4e1bc2bc8526b312335cd05c2d4476dd804622da13354fd658b769200"
    LINUX_ARM_SHA = "dd3bba094166fcad453420e71b0975470bd731a8a2ffdae6b7c9ee2f65139901"
    LINUX_AMD_SHA = "97d77415b2cbfbeb3c920c5c0051ac249af9b3b0c89db40f6f15f72187e92647"

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
