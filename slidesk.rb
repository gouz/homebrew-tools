class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.10.1"
    BASE_URL = "https://github.com/gouz/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"
    MAC_AMD_SHA = "738efe5ab5753d56b35b0562fb4c0a807f7bda3dde0e72a5ec3911d12944356d"
    LINUX_ARM_SHA = "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"
    LINUX_AMD_SHA = "4e105209211f6dc6f2d5325f5a872aa751b1e9a7b24851b584be35b02b8705ce"

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
            @@file_name = "slidesk_linux_arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_linux_amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}"

    def install
        bin.install "#{@@file_name}" => "slidesk"
    end
end
