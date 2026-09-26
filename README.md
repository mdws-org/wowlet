# wowlet

wowlet is a Wownero desktop wallet, written in C++ with the Qt framework. Upstream builds it for Linux, macOS and Windows. This fork builds it for macOS on Apple Silicon only.

## Fork of wownero/wowlet

This repository continues [wownero/wowlet](https://codeberg.org/wownero/wowlet), which derives from [Feather](https://github.com/feather-wallet/feather), the Monero desktop wallet. It is maintained in the [mdws-org](https://github.com/mdws-org) organization and has no affiliation with the Wownero project, the Feather project, or the Monero Project. Those projects did not produce this build and cannot support it.

Forked from upstream commit `93d13a65` (2026-06-27).

Changes in this fork:

- A native Apple Silicon build, packaged as a dmg by CI on every push. Upstream disabled its macOS job while bringing up the wownero submodule.
- A macOS bundle with its own identity. Earlier builds of this fork carried Feather's bundle identifier and URL handlers, so installing wowlet replaced an existing Feather Wallet installation.
- Polyseed recovery using the Wownero coin ID registered in tevador/polyseed. Before this change, seeds created by Wownero tooling failed to restore, in this fork and in upstream wowlet, with a checksum error.

Code in this repository is written with AI assistance and reviewed by one maintainer. It has had no independent security audit. The dmg attached to each CI run is build output, not a reviewed release.

This software is provided as is, with no warranty and no support commitment. Back up your seed phrase before you install it.

## Install

No release is published yet. CI attaches a dmg to each run on the [Actions tab](https://github.com/mdws-org/wowlet/actions). Released builds will appear on the [releases page](https://github.com/mdws-org/wowlet/releases).

These builds carry an ad-hoc signature. They are not signed with an Apple Developer ID and are not notarized, so Gatekeeper refuses to open them.

1. Drag the app to your Applications folder. Do not open it from the mounted disk image. macOS runs a quarantined app from a temporary read-only location, and the wallet can fail to find its data directory.
2. Open the app once and dismiss the warning.
3. Open System Settings, go to Privacy and Security, and scroll to Security.
4. Select Open Anyway, then enter your login password.

The Open Anyway button appears for about an hour after the blocked launch. If it is gone, open the app again to bring it back.

## Report a problem

Open an issue on [this repository](https://github.com/mdws-org/wowlet/issues). Do not report problems with this fork to the Wownero, Feather, or Monero projects.

For a security vulnerability, follow [SECURITY.md](SECURITY.md) instead. Do not open a public issue.

## Upstream projects

- wowlet: https://codeberg.org/wownero/wowlet
- Feather: https://github.com/feather-wallet/feather
- Wownero: https://wownero.org

## License

wowlet is free and open-source software, licensed under BSD-3. See [LICENSE](LICENSE).

Copyright (c) 2020-2025, The Monero Project. Wownero and wowlet contributors retain copyright in their own changes.
