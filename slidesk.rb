class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "56a471af23b3276f1f80cdac0c1c37234d4695981db416c0706c8c9936ab7162"
    MAC_AMD_SHA = "e90e6b7bafbd0d16a0611d93eae4a9ae9fd934d4f900a61d0a20a79669195484"
    LINUX_ARM_SHA = "fc8da4f7b186fed4f2175903360c43b306f4ed5bedf656e0fd0315f6417399e6"
    LINUX_AMD_SHA = "3820cf6848eb0dba379050c71fe1c70833ba603ee05354e9ddaa24e505602964"

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
