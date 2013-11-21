pkgname=mediacrush-cli
pkgver=1.0.0
pkgrel=1
pkgdesc="Upload media files to https://mediacru.sh"
arch=('any')
url="https://github.com/MediaCrush/MediaCrush-cli"
license=(MIT)
depends=('bash' 'curl')
makedepends=('asciidoc')
source=(https://github.com/MediaCrush/MediaCrush-cli/archive/$pkgver.tar.gz)
md5sums=('b3f30e468b716c54380928e2d9595dad')

build() { 
  cd "MediaCrush-cli-$pkgver"
  make
}

package() {
  cd "$srcdir/MediaCrush-cli-$pkgver"
  make install
}
