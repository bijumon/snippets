require 'formula'

class Autoconf213 <Formula
  url 'http://ftp.gnu.org/gnu/autoconf/autoconf-2.13.tar.gz'
  homepage 'http://www.gnu.org/software/autoconf/'
  md5 '9de56d4a161a723228220b0f425dc711'

  depends_on 'gawk'

  keg_only <<-EOS
autoconf-2.13 is required to build mozilla source. In order to prevent conflicts with OSX or homebrew supplied autoconf, we are defaulting this installation to keg-only.

more info on building mozilla - developer.mozilla.org/en/build_documentation.
EOS

  def install
    system "./configure", "--program-suffix=213", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
