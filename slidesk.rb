class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.25.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "6fef1a8f187de438cc946674165e4c98e92d1e7ed5ff52715296eb052aea6934"
    MAC_AMD_SHA = "89672a9721c89b584dc2b8634c0e003327f68b972ce70ac8f65e2d884e4a7603"
    LINUX_ARM_SHA = "1657501cd718da2f97c5d3f4784614ee128bc62c7d3302d27e685e2c9dde628a"
    LINUX_AMD_SHA = "045c0d4b6345344590516aefd00f10a3fe5aa228cc4105f0afd5fb7d871bdc33"

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
