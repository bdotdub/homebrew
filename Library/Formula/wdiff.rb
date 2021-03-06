require 'formula'

class Wdiff <Formula
  url 'http://ftp.gnu.org/gnu/wdiff/wdiff-0.6.1.tar.gz'
  homepage 'http://www.gnu.org/software/wdiff/'
  md5 'cb8ed3569f9c020edbfbc145df6ba602'

  depends_on 'gettext' => :optional

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
