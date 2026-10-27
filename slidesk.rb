class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.20.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "99b2748bb9c3f93f8f0321d48e12b0faf686951e30d04f35650311816b058fa0"
    MAC_AMD_SHA = "fa97fd4a111deb441942bf2d660883743eb3dfe0432714c03641e53a884c5649"
    LINUX_ARM_SHA = "4564daf7733e7bd9423a0168956a7a87564e24dad1a125365400ec688831010d"
    LINUX_AMD_SHA = "b9fae3a4cac769366e7a4f3a1ccbab552b3750ac70481b1f106f0638de910ceb"

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
