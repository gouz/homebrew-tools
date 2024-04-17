class Coc < Formula
    desc "ConferenceHall analyzer"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.0.2"
    on_macos do
        url "https://github.com/gouz/conferencehall-orga-classment/releases/download/0.0.2/release_mac.tar.gz"
        sha256 "f538893f47159bcf5a5598bc194d4b714eeb69e6414b890545d649558cd089b4"

        def install
            bin.install "coc" => "coc"
        end
    end
end
