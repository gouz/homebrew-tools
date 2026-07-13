class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.0"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "be891bec14dcf1452f2cb3f4bab1b444f020cff6bfb7a31be9764e8f2b13d01d"
    MAC_AMD_SHA = "0baf4b732d47c9960dea59d76cd9c7b8b904e500b03125cf2cb216fa0ee8d186"
    LINUX_ARM_SHA = "f1022f565bfb60a6329e9969c64ba3d3c0e228d232a7a0ccb6cf989cddb06109"
    LINUX_AMD_SHA = "50aa4e347373bfcff9e0eb251047d4105428800d4158f7b91f479875b413b2bd"

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
