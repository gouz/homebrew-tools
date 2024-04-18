class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.1"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.1/release_mac.tar.gz"
        sha256 "58949f51619a5d09a9fdf71ebf408e387c51e07a5ee3fc775ca0458f8b818d8b"

        def install
            bin.install "choc" => "choc"
        end
    end
end
