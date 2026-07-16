class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "vv0.1.0"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "48af9782c25729253a091ed98f0d2f6688d2db19e2e3ee5fa185f74f40a7667e"
    MAC_AMD_SHA = "2c77e2e46dabaed82e92bbbbc25eea59470f9d781f120db02d7c45906fdb47dc"
    LINUX_ARM_SHA = "2500383c019d0b26d325b6f4181b19353793eea1f0c95fe1475f4148d52fc65e"
    LINUX_AMD_SHA = "d756e0e7957f223d268ddb79fd32cd979117553b7cd435c8c8116ea893a66f4f"

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
