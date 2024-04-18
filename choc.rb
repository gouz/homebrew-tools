class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.6"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.6/release_mac.tar.gz"
        sha256 "9fbf39ddae3c095eab194548389843d7038028a0a35f429b7e63e69e9d36b453"

        def install
            bin.install "choc" => "choc"
        end
    end
end
