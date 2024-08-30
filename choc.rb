class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.12"
    on_macos do
        on_arm do
            url "https://github.com/gouz/choc/releases/download/0.1.13/release_mac.tar.gz"
            sha256 "c189547a510ea433acbfc0c0f98de6144ef870cdb9eb9bb92f4eb2e89d7c7dc5"
        end
        on_intel do
            url "https://github.com/gouz/choc/releases/download/0.1.13/release_mac.tar.gz"
            sha256 "bb8fb41cccac4539b770afd957bfd1bec016d609300e2b28ac616fa374e201b1"
        end

        def install
            bin.install "choc" => "choc"
        end
    end
end
