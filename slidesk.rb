class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "6c2f28b48ab45beec16ccafd71c3c20f36a45dacc355742caf801554e3d5d4ca"
    MAC_AMD_SHA = "b21233e3423f1fe8d4a650af38ffde07788e9b99a051fcc31727f58da1ad0f01"
    LINUX_ARM_SHA = "a65d400cb1d4c2bbce85b1b8525a4da673dca76dd4d0fbe59ea27d7afd318998"
    LINUX_AMD_SHA = "6050641a29959de6cdc7ff7598480752d7df743b0629d3f02c947779216899c1"

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
