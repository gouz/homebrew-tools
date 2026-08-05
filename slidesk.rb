class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.18.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "874ebfeb689d0ad0f54bf01aacebb27f3e9bb481a50748212048315b8b277196"
    MAC_AMD_SHA = "cbf880d58095fbcd09db4543bdc9bb7630f24a0ade575b953d9737eacbe90a40"
    LINUX_ARM_SHA = "04002165739f7f85d66adb46fe48ef9a390d40478499eedcdc7770d6b7965f86"
    LINUX_AMD_SHA = "3d328ab7aba31be0f99e6c5eb09c58ae5b7d9ad281501cae796aaa9561bf21d9"

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
