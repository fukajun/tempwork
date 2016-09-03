require 'formula'

class Tempwork < Formula
  VERSION = '0.1.0'

  homepage 'https://github.com/winebarrel/tempwork'
  url "https://github.com/winebarrel/tempwork/releases/download/v#{VERSION}/tempwork-v#{VERSION}-darwin-amd64.gz"
  sha256 '0d2a22e827a26b3db817879564098baa9d57fee19d575435115494ec995cfa66'
  version VERSION
  head 'https://github.com/winebarrel/tempwork.git', :branch => 'master'

  def install
    system "mv tempwork-v#{VERSION}-darwin-amd64 tempwork"
    bin.install 'tempwork'
  end
end
