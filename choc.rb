class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.4"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.4/release_mac.tar.gz"
        sha256 "a691c2b9bd61740fc03b295fdacdec371e82a0362c2fa1213c3b8fa44314d06d"

        def install
            bin.install "choc" => "choc"
        end
    end
end
