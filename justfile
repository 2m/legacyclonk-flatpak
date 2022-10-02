build:
  flatpak-builder build-dir --force-clean lt.dvim.legacy-clonk.yml

install:
  flatpak-builder --user --install --force-clean build-dir lt.dvim.legacy-clonk.yml

run:
  flatpak run lt.dvim.legacy-clonk
