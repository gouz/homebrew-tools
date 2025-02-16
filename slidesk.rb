class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.11.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "a5c9a39ec662e2970cbaed620c00e88b5c122afdcc905fcef48fed4504040535"
    MAC_AMD_SHA = "340da2df05ebf67acd01a07a94ba9c3233c7f578958995eb71306a2161592c8d"
    LINUX_ARM_SHA = "58eceb2ba54a81e0baf1c753223b4c2f4b4e41ef0ce60f0125f838ba3bc92290"
    LINUX_AMD_SHA = "fcdd6b9977f60c7128bc93ac9aec937c152115be6057f926657f651a3f956614"

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
