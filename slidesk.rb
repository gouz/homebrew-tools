class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.4"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "5464b7ac3afdb52481c00aba7c16c33ad655a25e92380b7580303218f68bf1fa"
    MAC_AMD_SHA = "4d3aee60586a477cd35450fb71ac66e499d04f121c3c06113185c2ebd51bcf80"
    LINUX_ARM_SHA = "2b02d3a84ced1398f900487704e9de210a28ddcfde54486283ba900e087e89f0"
    LINUX_AMD_SHA = "1ce9d482648a688d13ae6d4d8ad8b4e8424fc5dc01a71d743db74143166feac1"

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
