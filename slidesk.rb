class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "2.16.1"
    BASE_URL = "https://github.com/slidesk/slidesk/releases/download/#{version}"

    MAC_ARM_SHA = "f31058b2ed9a56bdd35f652c61f64cbc945f20c72890e4cfdfd10bb9bd17363d"
    MAC_AMD_SHA = "69ee4de0c221f86d902d8bf2d8955782d372d3be01478713d586ac7bd8c4248f"
    LINUX_ARM_SHA = "a8e669b29a243eac05539df86758de4ad07435df4e632dbb53a313afb8e81150"
    LINUX_AMD_SHA = "91fdbeed0a6f5dd08bd1ca791fa86d8e03ef29729ae4f4b1ef8c360f77edc194"

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
