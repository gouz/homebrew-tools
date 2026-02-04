class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "665c8dafbcc2b56546f5d0b8af124b67c890f9221dc749023cec8b771338cdb4"
    MAC_AMD_SHA = "9ad2b7527317e0c22e2b0c26ec5c66214aaf01d568b4edb439088d52d485e5ed"
    LINUX_ARM_SHA = "085d9ea5fa656bbc18040a27d32b8105479926b3c25bfc68ecbefc7e5d63bad7"
    LINUX_AMD_SHA = "f112c4e869b2e9c041de0bff318d6015b2a485486bde5749da022beae69e60d5"

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
