class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.9"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.9/release_mac.tar.gz"
        sha256 "184b3f6d7e5c800d30fe8229db0bc6204d7dc53b993a2466f1d9bb2f77109439"

        def install
            bin.install "choc" => "choc"
        end
    end
end
