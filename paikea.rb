class Paikea < Formula
    desc "A full-screen TUI CLI agent powered by local LLMs via Docker Model Runner"
    homepage "https://github.com/gouz/homebrew-tools"

    version "alpha"
    BASE_URL = "https://github.com/gouz/paikea/releases/download/#{version}"

    MAC_ARM_SHA = "437d848f46682b0369a3100767bb3a9e8fde0a07a9d22694a110060e2e956c8b"
    MAC_AMD_SHA = "4c01d9479c114d38ced0b5b558cc7f5988ceffff9c9d299379728db1b9e58693"
    LINUX_ARM_SHA = "a43eb807dbb3a5d6da5b220d4ac946cf875edb1bbd00feabad904ff000e552b8"
    LINUX_AMD_SHA = "1366bb60a6394956afe7f412c8ad492f3d7400e15a9956a00f31afda70ed28d5"

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
