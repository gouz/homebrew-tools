class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.13.2"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "3d2476ac7defe5e16d9631b0cae5ca133c387f1b4716db4967f26b5b5f5edce2"
    MAC_AMD_SHA = "619c13b755d2a06f93c8324874fa6650aa525e7abd1c447c7bc3387fef630eaf"
    LINUX_ARM_SHA = "8e00fc45e0c398bcdb507ddeb5fd515651b31095e19c271a3e252195c2b7744b"
    LINUX_AMD_SHA = "e996d46418855320b760e61245e7691722f9829b389387a3224f9f43e6590a14"

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
