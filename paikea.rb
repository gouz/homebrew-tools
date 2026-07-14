class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "v0.0.4"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "7153e2b7d2980ddfad38ffa154530fce7178609e07012ec6ca2bd70fba5e9fe9"
    MAC_AMD_SHA = "caa5e0b97885f48993a758487c83d63fff9dfd34f9da32a2aee1913a0081a6e8"
    LINUX_ARM_SHA = "7836806d416cd4470d5b0eb36edbac1bd09dafd4e48ae6deca4a8a97cb04f606"
    LINUX_AMD_SHA = "6e4d6e99f3995d928e43be100858ddd2bfd512788a4c70088f383c0b9a1e5a56"

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
