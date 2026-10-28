class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.22.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "577a0f33241a96b1673bc925f0d4b069e69343e686f645a1d6c6c15330309815"
    MAC_AMD_SHA = "8210534d480c8eb18d8b0895c390f3ec57c63db4b9d36148664e5d381073c93a"
    LINUX_ARM_SHA = "24459238f2a82d268621ee6c4e6d4635524ff8c3c3a935e205b00aecf7b402d2"
    LINUX_AMD_SHA = "e665b54cca383c24b62954cfd4de09876bead0eb8ed3b87ffa4a018ed17379c1"

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
