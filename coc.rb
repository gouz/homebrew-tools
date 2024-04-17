class Coc < Formula
    desc "ConferenceHall analyzer"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.0.1"
    on_macos do
        url "https://github.com/gouz/conferencehall-orga-classment/releases/download/0.0.1/release_mac.tar.gz"
        sha256 "16621fcb970d6f2a0b6750b1a18246a66cebd47f4cd413cd29d9115f7fe26a9d"

        def install
            bin.install "coc" => "coc"
        end
    end
end
