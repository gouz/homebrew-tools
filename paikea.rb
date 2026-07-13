class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.1"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "f9abb9338aaf05bac38ee4a6d90170c9768e0d698e55fb02e406c4e3de8f239b"
    MAC_AMD_SHA = "aa1b8e744afbd6d98c39fdcd105c2d66569f58b5a5c1ae8caed65a9d278f2da2"
    LINUX_ARM_SHA = "7d9108e79bba862a8ec495ee0c84bcb590b5638b70ba88b6fe1f8114c14e4252"
    LINUX_AMD_SHA = "6c2cdcc49ccc91e820c6bc14b2d3b34282ba2631cd8843df352d3463f02c0491"

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
