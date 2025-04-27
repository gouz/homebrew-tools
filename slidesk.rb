class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "3bdf3b6837fb82626aee8c0ecdc83ddba16c76b5b75fad6d546adc8d41de5887"
    MAC_AMD_SHA = "1877395f27e0cd20fbf5ff7a0eba0f215fff035d266140ed9163bf6f5d8fa4b7"
    LINUX_ARM_SHA = "b55f043ab9ced2dcfa4dcfdd0b556ae8606a632469324b83800c3927a66bf8c7"
    LINUX_AMD_SHA = "fe1ba2527946b4cefcd0d3bd22bcd650b052131c09a90ed699807e42651c0eed"

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
