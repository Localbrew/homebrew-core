class Ds < Formula
    desc "Convert defaults or any plist into Shell Scripts"
    homepage "https://github.com/aerobounce/defaults.sh"
    url "https://github.com/aerobounce/defaults.sh/archive/2020.04.10.zip"
    sha256 "e7458724f861c656725eaad19d78405fb12cca4bee43aa191278530e4b6300a8"
    head "https://github.com/aerobounce/defaults.sh.git"

    bottle :unneeded

    def install
        bin.install "ds"
    end
end
