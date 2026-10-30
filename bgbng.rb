class Bgbng < Formula
    desc "Parallel dev environments on git worktrees"
    homepage "https://gouz.github.io/bgbng/"

    version "0.1.0"
    BASE_URL = "https://github.com/gouz/bgbng/releases/download/#{version}"

    MAC_ARM_SHA = "dd5472953b068eb2303ce27f291809100913048aefd53bfc3d640fee7006dd40"
    MAC_AMD_SHA = "1034f6dfad222c4bfdd8d550c8dad49a07f16e85418b1ee38db885c8d992ae41"
    LINUX_ARM_SHA = "35017cd997729dc3817289339ab76cd34683b58096e3c3216542f998bc789f88"
    LINUX_AMD_SHA = "379731c8f759bcc567c080506078ea1555b7254ebda8fab1b3c3011bf97b1bf1"

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
