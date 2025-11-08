class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.8"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "b20d39f7849dc639cfbc12013e13343b4c091f32ec1a0b6478e901b396c4cc0b"
    MAC_AMD_SHA = "90f80449cb68f99291ecdea7dab41b8cc62baaef239dbcbb21b77dafdc865deb"
    LINUX_ARM_SHA = "08bd11a731644f3c60d14c12e5975ebdf417fb6fd6121d48f6f9e90ad741c999"
    LINUX_AMD_SHA = "eee28a1ac5b97cdfe5d9939fd38de5515ed99c891614d155b91464c18d69e426"

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
