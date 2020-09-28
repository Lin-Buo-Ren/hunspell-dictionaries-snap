#!/usr/bin/env bash
# Program to set snap's version, used by the `adopt-info` keyword
# 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com> © 2020
set \
	-o errexit \
	-o nounset \
	-o pipefail

declare \
	libhunspell_version \
	ubuntu_version \
	packaging_revision

libhunspell_version="$(
	# 1. Library package
	# 2. Library package line
	# 3. Package name
	# 4. Major-minor version string
	apt search '^libhunspell.*[0-9]$' 2>/dev/null \
		| grep '^libhunspell' \
		| cut --delimiter=/ --fields=1 \
		| cut --delimiter=- --fields=2
)"

ubuntu_version="$(
	lsb_release \
		--release \
		--short
)"

packaging_revision="$(
	git \
		-C "${SNAPCRAFT_PROJECT_DIR}" \
		describe \
		--abbrev=4 \
		--always \
		--match=nothing \
		--dirty=-d
)"

snapcraftctl \
	set-version \
	"${libhunspell_version}"-"${ubuntu_version}"+pkg-"${packaging_revision}"

exit 0
