class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.14.5"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "afe2e03064d832fd0c4f5d315d351e5a31b6391945b0809e57aca655bfa0bd82"
    MAC_AMD_SHA = "c79be380b3e85691c0d22c3a95b99708ae7a2314ae5ead0c3510af94682c059a"
    LINUX_ARM_SHA = "e889fb111a88f6ab6b87036eb4dad5cf85d7d15fbfd74a8ea58e3cc24a09cb89"
    LINUX_AMD_SHA = "f19098d1ed7b819f77e3ee6d23a8e2dcdd0d9e99e3a5975cd5c21443334f25fc"

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
