class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.22.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "93931a5550660c8e3ccd62c97ad088362462e13c86ecba470179ab86712378e9"
    MAC_AMD_SHA = "c6698b2a74dcf87e48ce65cb4944bca36433cde16fa1a043a23b5a3d3770c90f"
    LINUX_ARM_SHA = "e082e68bfc6461c5f868730d8485a4ec0eb326d42d09a3276beef014a04a17ff"
    LINUX_AMD_SHA = "cb954d1a8765f238f54023f60657012b90dfb93a37f1dc2fc2b2bd22e8234d5e"

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
