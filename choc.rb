class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.3.1"
    BASE_URL = "https://github.com/gouz/choc/releases/download/#{version}"

    MAC_ARM_SHA = "7a331c965482d1a526993646c0d1c045deb01c830c008363b4a51f331a4d7ede"
    MAC_AMD_SHA = "fab16a84538bf37af7a0a551b87c2548a75fc7dc4dd0c3a3f88ad880042335b0"
    LINUX_ARM_SHA = "a6e4fdb006df7709de136c3213639f0241a82df20a3e3e25b51f0cf3ca2f3b84"
    LINUX_AMD_SHA = "9825561dc98f68be3a76ab39abe2dd4e360d9c2587b767c0a6c95fccd691af3e"

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
