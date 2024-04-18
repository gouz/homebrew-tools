class Coc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.0"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.0/release_mac.tar.gz"
        sha256 "8e684ae15d46fce52e76b6363d43431f74d9d0fea182e9a512fcd1a97254e72d"

        def install
            bin.install "coc" => "coc"
        end
    end
end
