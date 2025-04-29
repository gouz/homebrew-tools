class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "63c12cf8d0cca2525acc9ca886fe7439eb5fe62b558f5c19ee1f070bfd00cb39"
    MAC_AMD_SHA = "0b2760b5b04edda2606fa3b349e321544f8e92fd6c549a714ab59418185e763c"
    LINUX_ARM_SHA = "a9d8f9025c5d73da755a703a062d5fd96b76732d9f8ad98399744f28a4401ceb"
    LINUX_AMD_SHA = "62fab2b2cbac50c002da267e557d77176b2b10cf7bdf88ffb57c44443976cc50"

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
