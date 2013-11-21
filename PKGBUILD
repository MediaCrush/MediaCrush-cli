pkgname=mediacrush-cli
pkgver=1.0.1
pkgrel=1
pkgdesc="Upload media files to https://mediacru.sh"
arch=('any')
url="https://github.com/MediaCrush/MediaCrush-cli"
license=(MIT)
depends=('bash' 'curl')
makedepends=('asciidoc')
source=(https://github.com/MediaCrush/MediaCrush-cli/archive/$pkgver.tar.gz)
md5sums=('8ea6cf59679f626b6c3a12a7c69e6e05')

build() { 
  make -C "MediaCrush-cli-$pkgver"
}

package() {
  make -C "$srcdir/MediaCrush-cli-$pkgver" DESTDIR="$pkgdir" install
}
