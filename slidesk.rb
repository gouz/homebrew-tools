class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.20.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "d1ea889d0b6ccbb3069758bebc30294e871ef326b1ccad9c9f2ac12bbad4aa25"
    MAC_AMD_SHA = "4379da503744450e8b4c027a3fb1a7e1345ff68262a66d9b6efa7efc0205bf8f"
    LINUX_ARM_SHA = "dea1ead069d1d93e8f2f747fb2c76e04142113814e05c95bb40ab1d873d910e0"
    LINUX_AMD_SHA = "901d2936e18717ad13ea13706e10d27f3a03fe526a73bc1eee879ffa03b2d1d5"

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
