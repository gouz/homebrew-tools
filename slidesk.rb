class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.19.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "f9c95a740b64dac71087fb5a674f521209b85087ff1ebf3e54dbfe20025ec719"
    MAC_AMD_SHA = "ae6854e2558de07a6ecd0ea02e0d92e2759ecbba92af2154192ab669adfe5dee"
    LINUX_ARM_SHA = "e3d731710fa1c02ad595bbc92ca51c2fe381e73fa600c77431e5bf1152c6f8e4"
    LINUX_AMD_SHA = "df4ac685673b7739daeea5e22dcaf019466809d7a0b2f72ac4cf2c2846fa9423"

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
