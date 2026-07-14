class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.3"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "6988f864a7fa6d53b93d2d04b81648253a029e8d6041e14a38800eb10958dced"
    MAC_AMD_SHA = "f10d424c2b6523d59b8e88c89c22a779e513c2808979d1dfe14a7e6394671e22"
    LINUX_ARM_SHA = "2291795f85123276c5a1cb23fd43493c3bc1938dc372f80c43105307a7497a86"
    LINUX_AMD_SHA = "976fc23f25a05766deb33a6a6f50bbbb05cf7fa8263b3f1e762e93d0a4d369cd"

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
