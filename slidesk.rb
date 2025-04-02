class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.12.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "97027e462f0a27690d906291ebb353dba8406ad534017fc01820efef2092d545"
    MAC_AMD_SHA = "69142f54192e503c07c93bd3b9b5884fd0e1daefc828e9801ee9fdb57265237b"
    LINUX_ARM_SHA = "bb1459515f4b3a564ca9327366ff0b52ff9cf0a28d056db559233be74f05c3c8"
    LINUX_AMD_SHA = "ae42364aa418139231f9ee1d35c2a3ebeb70803524ab93694e4a541c6f8d7b7d"

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
