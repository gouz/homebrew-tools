class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.21.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "d8273dc8b955dbab4359199abf4d978dee4a78a8b064aad537bb8ae38b914058"
    MAC_AMD_SHA = "d2c4945168c0db438433366ca0b37dfa62d7308abbfdb3d93971cbbd2f82c722"
    LINUX_ARM_SHA = "380438ab7b973069b40faaa75540681a69a6a4f0d4adc72e087eeb7e88a204f5"
    LINUX_AMD_SHA = "06c65c2ed872a19f6baaa2a983be673bc4fffa2a6d4968ff5c26b3645f09bf9a"

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
