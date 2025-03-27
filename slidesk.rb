class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.12.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "c998aa653432df71b0f72ba5c0c1a2447870a78d8692b560a577ade8b4942ddd"
    MAC_AMD_SHA = "614eac80473192f8743fa4f48f752582ac5348c307afb47f0d9b6488ec979d08"
    LINUX_ARM_SHA = "2e5f9691f743f02605f51a9e36597e6c39cc276a1a391d798940d0ff13a190d2"
    LINUX_AMD_SHA = "f603d97b807c13b438da28e5809ff44f393805568604b264242e0248a8f54eec"

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
