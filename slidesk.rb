class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.20.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "b0981bfac19c159612375e1c5be88cca4c564eb1345402a3319c535827795531"
    MAC_AMD_SHA = "24b3a4942a656666fbd689d0f7cacc9fae9161bcb80b28797ebefd44e7935781"
    LINUX_ARM_SHA = "e7668af140157ea606da8b2f9279c3181e73ee61d0976802d02d6f005fdd5d82"
    LINUX_AMD_SHA = "963b6087007cc66a56d64edf12f62aa219a8b4e2ebe8ad4049bdf4e36065f7b2"

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
