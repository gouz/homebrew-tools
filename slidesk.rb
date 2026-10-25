class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.19.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "466b412c2dd826746a35d8ff920e5d4c7f50d2bf1916b6e2a4045f23df7af172"
    MAC_AMD_SHA = "89ef584658e4aaa0ec41ca0f210cd3269e70c983f00d7558e7d41f6faec3473c"
    LINUX_ARM_SHA = "3aa5dacda0192aa877ddc8377b3994d38ea9ca370c63633ebb69c664fd0caeca"
    LINUX_AMD_SHA = "4f49152dddd2b8d86621088004c97dbf973a9984346253480176201f285165c2"

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
