class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.9"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "f5068a7d0d5fa94ce2533691460864417ef0fdfc24b1bf5eb8b7bc048f541a97"
    MAC_AMD_SHA = "3489e4d1803ff7dcfa39cbd4570d9d6bfca3064d77df5ded38dcb5141ac7ebff"
    LINUX_ARM_SHA = "b733afe2ab28bff405a193d23b5deb4d001deadd1b8fb59bebf947d654c38ca6"
    LINUX_AMD_SHA = "ec93eb8900d7cf5957a95d14bd30eba05f12ad60e5ff01cc2621b9eee2a79e22"

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
