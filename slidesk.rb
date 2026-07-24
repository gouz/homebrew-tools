class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.17.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "f98b428d402184902dfa787b42451fedd630ff550ac0ea36d01e69f3dd1af2e7"
    MAC_AMD_SHA = "57c6672deab41d9690296804e9f68c2eeccd4952d044daae16d21581ad6ef71f"
    LINUX_ARM_SHA = "58462e6143e25f7f70c40b804b453ebd15b91434b4f8de7ff01a99cfb116c5c1"
    LINUX_AMD_SHA = "c7de820918bf9ec011b8e681fabb0695b646077d0c271ff9687c00763286b6af"

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
