class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.15.4"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "f335b6bbfaf08fd1c59d2c929f336852695781867a006f2cceddc4f9f30c5e2b"
    MAC_AMD_SHA = "05ccc1c0fda3a71493d2923f21f64a28e220d389f0a39633f7bd0ffeeb2b5a0c"
    LINUX_ARM_SHA = "2e5b7f5ce01b049e5a365f893d624ed3d89b540063d17ca0fe9e3ce20e32765f"
    LINUX_AMD_SHA = "f4fb1247675ff029d1eff6c366bc33372cc98e177afa8705227359ea888578ff"

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
