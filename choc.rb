class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.8"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.8/release_mac.tar.gz"
        sha256 "32f448bd08a46e85bb10b2c19d250acb4b2092eb39d66a21e4fb7a6ffa16d6f3"

        def install
            bin.install "choc" => "choc"
        end
    end
end
