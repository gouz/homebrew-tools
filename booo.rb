class Booo < Formula
    desc "IA companion"
    homepage "https://github.com/gouz/homebrew-tools"

    version "0.0.1"
    BASE_URL = "https://github.com/gouz/booo/releases/download/#{version}"

    MAC_ARM_SHA = "4cd3120c4d10fd7807115de796e04dc1c91b116af619159db04f7e3539a6199e"
    MAC_AMD_SHA = "80932ef804a68da35b24a62fc54878989e88c2efab92ecf5537df8ba66622ceb"
    LINUX_ARM_SHA = "f6e675866d4dab408b8cd7f907c4ff347d3fceb9d04540599245a6db0724853d"
    LINUX_AMD_SHA = "da74e9d316751b44d6c154d3019f3ad9445887d5f438338c430182aa55dd2777"

    depends_on "openspec"
    depends_on "opencode"

    on_macos do
        on_arm do
            @@file_name = "booo_mac"
            sha256 MAC_ARM_SHA
        end
        on_intel do
            @@file_name = "booo_mac_intel"
            sha256 MAC_AMD_SHA
        end
    end
    on_linux do
        on_arm do
            @@file_name = "booo_linux-arm"
            sha256 LINUX_ARM_SHA
        end
        on_intel do
            @@file_name = "booo_linux-amd"
            sha256 LINUX_AMD_SHA
        end
    end

    url "#{BASE_URL}/#{@@file_name}.tar.gz"

    def install
        bin.install "#{@@file_name}" => "booo"
    end
end
