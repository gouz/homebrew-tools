class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "alpha"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "f7705e18851c05311386aa65ef6284360296fbc4c434fcdf1f83407a40603c0b"
    MAC_AMD_SHA = "252f89cd85b6e1b74808ac45c64a17ace9d68d6a164c62ba80c9387767f9d208"
    LINUX_ARM_SHA = "4e4c56ee296fe64b3640b7ac80fd46e9c42b7edae1b1e34290d1fb252238e3d9"
    LINUX_AMD_SHA = "45bba3531d8a4d0b5081fc2569658ab022f36a339e114878dbe3c16a6948631f"

    on_macos do
        on_arm do
            @@file_name = "paikea_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "paikea_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "paikea_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "paikea_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "paikea"
    end
end
