class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.23.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "37da13b84967345e4cd8cd9bf23ab56db315686d2fa112fabf41fe01959d3e51"
    MAC_AMD_SHA = "dedb70e8d0202faedd0b0217996366026936cc5447ba1656974a14343237492b"
    LINUX_ARM_SHA = "72dc9003e703cc2be73159846801c1c0af6bb12eb9baddc3106740c6ae91ab3c"
    LINUX_AMD_SHA = "30d981034cd7382c347a2eb13b65b16bb05244331d943d27e6fc8498f432c1a8"

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
