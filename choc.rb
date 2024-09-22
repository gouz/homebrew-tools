class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.2.0"
    on_macos do
        on_arm do
            url "https://github.com/gouz/choc/releases/download/0.2.0/release_mac.tar.gz"
            sha256 "9fda12e56cd3f751ab54e718ddbb5154c0234beea29c9322a3d847a9f43add48"
        end
        on_intel do
            url "https://github.com/gouz/choc/releases/download/0.2.0/release_mac_intel.tar.gz"
            sha256 "c9fd0ebb854a10420d03e851e703ae5cd40629786968f6e5d41b4b3b3181d21d"
        end

        def install
            bin.install "choc" => "choc"
        end
    end
end
