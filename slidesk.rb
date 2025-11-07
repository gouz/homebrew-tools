class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.7"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "aaf408b0f543b4e773b01a0b01999a4ada22bc8d30ac86af069b2d0d314d56d4"
    MAC_AMD_SHA = "3d7f3c65ac8de9e5427bbf74f2d60449764325de8d74a17f4b875d9701b75c2a"
    LINUX_ARM_SHA = "df272b979f745311467642b54f965758796f169785fdcf3898e0a446e463c2c9"
    LINUX_AMD_SHA = "d9302b5e85ad072684952bc19b7f62708bcae9a4f168be7264ce23320c452d4c"

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
