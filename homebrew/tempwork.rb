require 'formula'

class Tempwork < Formula
  VERSION = '0.1.5'

  homepage 'https://github.com/winebarrel/tempwork'
  url "https://github.com/winebarrel/tempwork/releases/download/v#{VERSION}/tempwork-v#{VERSION}-darwin-amd64.gz"
  sha256 '42f9dcf207eb2e1f86d0abfdc8359034b7610cb36166b547b35d5d275d9434c0'
  version VERSION
  head 'https://github.com/winebarrel/tempwork.git', :branch => 'master'

  def install
    system "mv tempwork-v#{VERSION}-darwin-amd64 tempwork"
    bin.install 'tempwork'
  end
end
