class Slidesk < Formula
    desc "Speaker companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "2.7.7"
    on_macos do
        on_arm do
            url "https://github.com/gouz/slidesk/releases/download/2.7.7/release_mac.tar.gz"
            sha256 "9c026c69e7c83fb602a3f1fa42d26f80d6bcbe410d629a9295660afa7ebc479f"
        end
        on_intel do
            url "https://github.com/gouz/slidesk/releases/download/2.7.7/release_mac_intel.tar.gz"
            sha256 "59457ba380ba1ded0a453145969f95e4fdec6bcd0271482d943e6d4c947a397e"
        end

        def install
            bin.install "slidesk" => "slidesk"
        end
    end
end
