setup:
  yay flatpak flatpak-builder
  flatpak remote-add --if-not-exists --user flathub https://dl.flathub.org/repo/flathub.flatpakrepo

build-install:
  flatpak-builder --force-clean --user --install-deps-from=flathub --repo=repo --install builddir lt.dvim.legacy-clonk.yml

run:
  flatpak run lt.dvim.legacy-clonk

repo:
  flatpak-builder --repo=repo --force-clean build-dir lt.dvim.legacy-clonk.yml

bundle:
  flatpak build-bundle repo legacyclonk.flatpak lt.dvim.legacy-clonk

lint:
  docker run --rm -it -v $(pwd):/flatpak ghcr.io/flathub/flatpak-builder-lint:latest manifest /flatpak/lt.dvim.legacy-clonk.yml
