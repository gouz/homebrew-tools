class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "6858da26da0a8b59e6e4dead833096dabb08eb0f1196bb2a70f68729effce2e1"
    MAC_AMD_SHA = "617bcd3f5032d0d91f56ea2151688c2d0c5cf9330302100d749a2889de391383"
    LINUX_ARM_SHA = "b146eb0a4113eec9018e12deefd911d886d4c3d9dc44f37fac0e379f90aa6ab2"
    LINUX_AMD_SHA = "6fe1d09816ba52708ec43fbc7749caff2df6043f1e96c3ac4e803446b2cdc885"

    on_macos do
        on_arm do
            @@file_name = "slidesk_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "slidesk_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "slidesk_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "slidesk"
    end
end
