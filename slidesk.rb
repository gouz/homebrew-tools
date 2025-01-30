class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.11.0"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "95896c6c163da7d852c4ea27ebb03f6c5ada7e1c6b0819678914cecf2d4d0de0"
    MAC_AMD_SHA = "e3b917db8ab94c091633829b9c648e34bd8d6c308b3718adee507ca52db6893f"
    LINUX_ARM_SHA = "ab291267d1d4d12c0a4a2f7a6fd000a467122f852b0710a096420f8115539acd"
    LINUX_AMD_SHA = "73b90ed01c85f7f41ab7f1c4dd4f32daa031ae6216d1fe70b78de6e9f844f3ed"

    on_macos do
        on_arm do
            @@file_name = "release_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "release_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "release_linux_arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "release_ubuntu"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "slidesk" => "slidesk"
    end
end