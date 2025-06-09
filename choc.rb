class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.3.0"
    BASE_URL = "https://github.com/gouz/choc/releases/download/#{version}"

    MAC_ARM_SHA = "636b326315eea3d62c762972369de449410e7cc0940bdea3f3fdecac0c60b130"
    MAC_AMD_SHA = "738e3972140b5ec3ffb536d65532130d55df9de470e480c37464bba32335d512"
    LINUX_ARM_SHA = "996965a287fec00c8fdd98f3e529cd7a30ebe9dc8294976219b97d5bcfa1a88d"
    LINUX_AMD_SHA = "02e6542cccf89f0d2a1190d3580b1ac34323d29062dee68b01b051c78d579a31"

    on_macos do
        on_arm do
            @@file_name = "choc_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "choc_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "choc_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "choc_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "choc"
    end
end
