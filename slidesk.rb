class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.24.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "1c44e1d1820f7d25210b11de4b2df201cdbfbc0d74a8bf23a5360fce00bae1e3"
    MAC_AMD_SHA = "dae3ae37f387ea5b812a6a8a29e3915e221e40ff9e73d3d5db3121ab787b84ee"
    LINUX_ARM_SHA = "4880fc23ec1b9ae1547852a2ab4dffec50a06cf5864c41c845348820994a15db"
    LINUX_AMD_SHA = "161a080a657af55c4ecf78ae0660394dbc9c38a840033c7b15c24abc637bca88"

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
