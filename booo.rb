class Booo < Formula
    desc "IA companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.3"
    BASE_URL = "https://github.com/gouz/booo/releases/download/#{version}"

    MAC_ARM_SHA = "fec9e212491f8502676bd84d2367d3356ad0f032b435e319946e879dc4249a17"
    MAC_AMD_SHA = "167618bded108c463cf5d960f286b3d64742cc7394e0e7b572fa855370dcb5d4"
    LINUX_ARM_SHA = "7a9429bad1ea587115b1055e86b86e1cad9463c84a9ebd95b0b930007a59d00c"
    LINUX_AMD_SHA = "2a7b1a86cb887d380c00f8ff17c9f1bbfc8280a4282eb7c9c638ee618b82f6a2"

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
