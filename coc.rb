class Coc < Formula
    desc "ConferenceHall analyzer"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.0.3"
    on_macos do
        url "https://github.com/gouz/conferencehall-orga-classment/releases/download/0.0.3/release_mac.tar.gz"
        sha256 "89ef7310407dace8dc44c0d6aa9b6fa3dd2e363d968371e86d1a6705c3be016c"

        def install
            bin.install "coc" => "coc"
        end
    end
end
