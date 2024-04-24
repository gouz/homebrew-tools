class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.11"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.11/release_mac.tar.gz"
        sha256 "e0223aac55632d783d274523f45380e02547b1111c49b160250d4f7afc545353"

        def install
            bin.install "choc" => "choc"
        end
    end
end
