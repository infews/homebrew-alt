require 'formula'

class Kindlegen < Formula
  url 'http://s3.amazonaws.com/kindlegen/KindleGen_Mac_i386_v2_5.zip'
  homepage 'http://www.amazon.com/gp/feature.html?docId=1000234621'
  md5 'ec1d389f865b78fa774370006c83e76b'
  version '2.5'

  skip_clean 'bin'

  def install
    bin.install Dir['kindlegen']
  end

  def test
    system "kindlegen"
  end

  def caveats; <<-EOS
We agreed to the KindleGen License Agreement for you by downloading KindleGen.
If this is unacceptable you should uninstall.

License information at:
http://www.amazon.com/gp/feature.html?ie=UTF8&docId=1000234621
EOS
  end
end
