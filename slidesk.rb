class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.22.3"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "9aeb31ba76fae885bbe450f5745b0381c8f2380c6efdbc8780f10d9c02d779b8"
    MAC_AMD_SHA = "b6b404fec456193e50004db5a2af9978a7bff880b6ccd9a26202fff0560b31ee"
    LINUX_ARM_SHA = "58ef099ac2d29d58f9114b3b97189cddb1a12f91e004995079b208d5fc3a01a3"
    LINUX_AMD_SHA = "7904eb9491b27cb0001c27b4b0d202c5d9b5af506939b99386e76b0fe373b726"

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
