class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.20.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "4f8f2ba472e760033a764cf838ea168db006cd700a8f4087c68929d075fdab8b"
    MAC_AMD_SHA = "9f0b3e001347732eab90756ee9771412ed2e7233093ffaa5376422ed8de1ff75"
    LINUX_ARM_SHA = "3f3c65d70c2b3540d3895d9caaa6c2e4aea1e70b0260292a21cda01b3c7581b7"
    LINUX_AMD_SHA = "09a0d2aab0870fc8dc5c4313a078e935bb7bb865ee71283f5c08e2d18c8493e5"

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
