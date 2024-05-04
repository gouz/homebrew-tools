class Choc < Formula
    desc "ConferenceHall organization companion"
    homepage "https://github.com/gouz/homebrew-tools"
    version "0.1.12"
    on_macos do
        url "https://github.com/gouz/choc/releases/download/0.1.12/release_mac.tar.gz"
        sha256 "cc08921169685188063abec11804f6df76d46508097e70f4105bcaedab3ddc88"

        def install
            bin.install "choc" => "choc"
        end
    end
end
