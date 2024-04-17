class Coc < Formula
    desc "ConferenceHall analyzer"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.0.4"
    on_macos do
        url "https://github.com/gouz/conferencehall-orga-classment/releases/download/0.0.4/release_mac.tar.gz"
        sha256 "305c9501d96ff202f4426871f59b0089883b9481321e04a72eab439c65f3722e"

        def install
            bin.install "coc" => "coc"
        end
    end
end
