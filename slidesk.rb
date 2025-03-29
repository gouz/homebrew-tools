class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.12.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "24ca495c7408c7a7bb68919bcf993d16ed83bb353832653160c64ca62a7c9a92"
    MAC_AMD_SHA = "efa167aeaee39d9cdbe59e59509a1b240f5aeda88d00a6557e6bdf87511ff6e8"
    LINUX_ARM_SHA = "ec31170768cbe40135f95bd066543b414e3e514ef916cb0ef9a5b15fb60d71d1"
    LINUX_AMD_SHA = "831b67ca81d0197e551a07b9353b67337f349df26872b1a559ea7055e8f2621c"

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
