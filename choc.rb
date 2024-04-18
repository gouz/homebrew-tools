class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.2"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.2/release_mac.tar.gz"
        sha256 "36592c9db995ed5a4d4639b5af479114ba6ce6a637c4e9d55acbd35cbe5d6a8e"

        def install
            bin.install "choc" => "choc"
        end
    end
end
