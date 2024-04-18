class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.5"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.5/release_mac.tar.gz"
        sha256 "f62bf49e0c1f137d6f92a7b47d428d50b071bdd7684c1ac59bb55cbc6c87c231"

        def install
            bin.install "choc" => "choc"
        end
    end
end
