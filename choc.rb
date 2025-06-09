class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.3.0"
    BASE_URL = "https://github.com/gouz/choc/releases/download/#{version}"

    MAC_ARM_SHA = "9c96bb541207f8e9a8f5aa8e7d9dea9fe6673045ecde8ff40889eabfab0eba2f"
    MAC_AMD_SHA = "af6c5ecb0ffda2feef804ffcda3678de97cc42372cc70c20a6d54a4fd4657f7d"
    LINUX_ARM_SHA = "7797c48577a0ac4a1bdfc0c3d1bf61b7b93d39c3e54f2c6ff91f7a653a328850"
    LINUX_AMD_SHA = "e7ebf430831be5985ae994a6bf9e05875d26fc1116a430dd98c05a6c3406a6e2"

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
