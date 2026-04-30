class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "8fe4ca0c5c95555bded517ba74b339948db4140b3c4a1bd6ba85ad61408f266c"
    MAC_AMD_SHA = "3a7ffb05f4ba932cf5d76b693e72962f136877dc6b119ad5db6854fb7d010952"
    LINUX_ARM_SHA = "f99bae9e8012469d407c52f59d13ae8a9808729280722cc90792ea1f2bf3681b"
    LINUX_AMD_SHA = "0a9006785d4bfc8d5cb8dad85cce5c510c21d807a5a704479dc30166eb8495c4"

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
