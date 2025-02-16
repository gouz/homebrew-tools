class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.11.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "030c8063573b86cbe39a975c029ede40bb7c3409e76c10e1a0c3d48285d24740"
    MAC_AMD_SHA = "25b5a3bcbd2ec211971c4812d947bb3538ef3bda8f13964350e0876c9c99054c"
    LINUX_ARM_SHA = "bf091972c183c71223a62c62a3a3e1c9ab906268fa639cf8d11dd1b960696328"
    LINUX_AMD_SHA = "74914194df1d8bb59baf0e70d3d0f83605ca308aaeecc8f16dbd695b7fbf7a52"

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
