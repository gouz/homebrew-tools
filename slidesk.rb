class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "16bc81c0b8c233f1c60037009f598ae0e4c15c2f5411b130f45ef525121bede9"
    MAC_AMD_SHA = "6cc01ca35f10dc328254006d5a235cce8779adcb2af760e0407c484f98daaeb3"
    LINUX_ARM_SHA = "998a78812defafff879391067ae47b2df3d339521e2890d0160dac78fee5f1cc"
    LINUX_AMD_SHA = "465cfc40822cb3cc94156628ee6d35de6fd9ac5fee5fbdf288a6f5be8c36a007"

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
