class Ds < Formula
  desc "Convert defaults or any plist into Shell Scripts"
  homepage "https://github.com/aerobounce/defaults.sh"
  url "https://github.com/aerobounce/defaults.sh/archive/2020.04.12.zip"
  sha256 "1b95cdcd635f0ee82edafcc144ea5afdf7102052ab1a1e78a6a9c6bf0f8a7649"
  head "https://github.com/aerobounce/defaults.sh.git"

  bottle :unneeded

  def install
    bin.install "ds"
  end
end
