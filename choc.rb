class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.10"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.10/release_mac.tar.gz"
        sha256 "f6d091fb3f0659ef1b48476ccaeb97053d17f5003536e20c1c19de492823de07"

        def install
            bin.install "choc" => "choc"
        end
    end
end
