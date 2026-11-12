class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.23.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "e50f8c6d9353b399cf79e94093f515a9e7038ce17f89a47b17cd928f7dc20400"
    MAC_AMD_SHA = "3b9f2bed488681beded171d3bdc3d6fe8c8d4465c1a31e848edab5352cde64e9"
    LINUX_ARM_SHA = "aca1717ee7772b98b6f660c85f7914990302d43b1ad7335e85d40253d8211a73"
    LINUX_AMD_SHA = "263a440f646c28c39d8574dc6c910f2fd2ceb424fa2352943ee13d59f2560aef"

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
