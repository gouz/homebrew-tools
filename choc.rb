class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.7"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.7/release_mac.tar.gz"
        sha256 "712540103c3f73cd12e4fb550ffa22901830584d9e1c71281bdfae03d49ebf5e"

        def install
            bin.install "choc" => "choc"
        end
    end
end
