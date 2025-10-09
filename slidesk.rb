class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "6cc0e586da208d9c6f839774d7e2294668b9afe4c6cfad5f22c08c6cf6b3a80f"
    MAC_AMD_SHA = "a384b2416408126f74f846b5257b8c741170340fd694d5507e6b1c7cf21e2abb"
    LINUX_ARM_SHA = "dacfb96b3caad4945a31ac8912778f6a62ea971c8a2e85a5d8dcd98bdc2d75ae"
    LINUX_AMD_SHA = "c3f1fa528e8c60cfbd6a682ddb08b98c2878c3257ad17b56f416e816a1f4e5ca"

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
