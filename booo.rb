class Booo < Formula
    desc "IA companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.2"
    BASE_URL = "https://github.com/gouz/booo/releases/download/#{version}"

    MAC_ARM_SHA = "64514a33df85271bb51523a98d04ea2394d47be16fc7496eae18d038cf118127"
    MAC_AMD_SHA = "040ad7254a28527cbe4deb0b8c6652637932e6ecb22fe88ca08005dd1db12fbb"
    LINUX_ARM_SHA = "93a73dd49c3f511fac72e680df9b7a404fef2553e45feef3c9b61df86e7d5244"
    LINUX_AMD_SHA = "d898a204769bc57028491be0b17798d9c50faf89a29bf4cdad360f57346c8f9d"

    depends_on "openspec"
    depends_on "opencode"

    on_macos do
        on_arm do
            @@file_name = "booo_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "booo_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "booo_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "booo_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "booo"
    end
end
