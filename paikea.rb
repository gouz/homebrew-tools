class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "alpha"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "91d51220d99daccb19a9a806d46b3f502286ffc4b42df05aecf6ad71133fee17"
    MAC_AMD_SHA = "7a6c223cc9e2e0d00b74d3267e3232ca4cdacb43d3b47887bfd3672ffa6a7f67"
    LINUX_ARM_SHA = "a366ee795abb4a9b23206667cd89fa93a06d1585e4a20f1df3cc9a2012f4d4ad"
    LINUX_AMD_SHA = "189bd9aba95b9e8a57156dc33b9b112cfbcf4d59afd55db6d7b3cccdf6c07718"

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
