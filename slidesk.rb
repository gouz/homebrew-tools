class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.12.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "b9dcd7d88511966199c66c3f347098abe29314828bbc8fcdc8ad2ce632b13c91"
    MAC_AMD_SHA = "ed430ed9d7a07ce8e1c802f910354a89702832238f593ed60fa318d3439652ed"
    LINUX_ARM_SHA = "e23483cc570dd9e6be972f28f11036367e4f13ab7ce3cad4de7ea69f7ef60571"
    LINUX_AMD_SHA = "cde84328ccb96191b11964de2d31039d304430af7624c2bd24c22b650714e3c0"

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
