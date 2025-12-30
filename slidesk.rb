class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.10"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "3193fb671002edb8349ac8f1d9c051352a443fb2a43313ca46f6fc078ecfc664"
    MAC_AMD_SHA = "f4eb06f0f0382f968c69f6f81497c8ef4d8d7879b94def39c2586db008a25096"
    LINUX_ARM_SHA = "5a235b4c697f1598263cfc4efa3620ab56626de3e1b25a165f734e20f1126f85"
    LINUX_AMD_SHA = "d8418caf8ed031f63a37d6cf35302830cd045e1986dc1b4923139c68c1bd99ea"

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
