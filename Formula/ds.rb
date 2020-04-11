class Ds < Formula
    desc "Convert defaults or any plist into Shell Scripts"
    homepage "https://github.com/aerobounce/defaults.sh"
    url "https://github.com/aerobounce/defaults.sh/archive/2020.04.10.zip"
    sha256 "d90489973e0c3277077cbe12b9ee050ed132beaaf80adde37d541985a4dbed2c"
    head "https://github.com/aerobounce/defaults.sh.git"

    bottle :unneeded

    def install
        bin.install "ds"
    end
end
