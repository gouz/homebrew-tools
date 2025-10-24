class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.6"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "788cc367ecef3edd7b639082e133553bfddb874adc99dc634b204049147f9ee0"
    MAC_AMD_SHA = "09f99b4f32627de18c66dddd114231877bbd13e69d9bf219f26da7a4883fcc21"
    LINUX_ARM_SHA = "70824754c71f74808c0f77c60ec93fcdcc4821a4676cfaeb853e6ce22e839210"
    LINUX_AMD_SHA = "d6f79dfcce74ea4272eb9fc6bb41af935bb38d9061daebd8bdba58fb8a674bc9"

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
