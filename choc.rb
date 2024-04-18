class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.3"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.3/release_mac.tar.gz"
        sha256 "f4d23c69d2bf773802dba6c0bf27b74e8542b809ca560307e2a390d51d77b88f"

        def install
            bin.install "choc" => "choc"
        end
    end
end
