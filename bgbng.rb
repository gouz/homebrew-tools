class Bgbng < Formula
    desc "Parallel dev environments on git worktrees"
    homepage "https://gouz.github.io/bgbng/"

    version "0.1.0"
    BASE_URL = "https://github.com/gouz/bgbng/releases/download/#{version}"

    MAC_ARM_SHA = "0000000000000000000000000000000000000000000000000000000000000000"
    MAC_AMD_SHA = "0000000000000000000000000000000000000000000000000000000000000000"
    LINUX_ARM_SHA = "0000000000000000000000000000000000000000000000000000000000000000"
    LINUX_AMD_SHA = "0000000000000000000000000000000000000000000000000000000000000000"

    on_macos do
        on_arm do
            @@file_name = "bgbng_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "bgbng_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "bgbng_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "bgbng_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "bgbng"
    end
end
