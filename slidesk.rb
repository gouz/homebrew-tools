class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.11.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "21e05e1fbe2520fcc9f0d598b8385d39da32bfe1abf93a55967b1cc631ea8928"
    MAC_AMD_SHA = "98a4350d91ced62aa97f56534347fece5f1fe84a12cc4d4c1505af5bea49dbe8"
    LINUX_ARM_SHA = "d377366495d837a8956ef4911eabeb5130e049c1746c45ec20f906ee0379dc1a"
    LINUX_AMD_SHA = "d3cd01d4e4c64d43a6798bdde85895f3e08efad35134dccd25bd2134015e6eff"

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
        bin.install "#{@@file_name}.tar.gz" => "slidesk"
    end
end
