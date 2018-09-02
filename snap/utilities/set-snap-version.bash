#!/usr/bin/env bash
# Program to set snap's version, used by the `version-script` keyword
# 林博仁(Buo-ren, Lin) <Buo.Ren.Lin@gmail.com> © 2018

set \
	-o errexit \
	-o errtrace \
	-o nounset \
	-o pipefail

init(){
	local \
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
			describe \
			--abbrev=4 \
			--always \
			--match nothing \
			--dirty=-d
	)"

	printf \
		-- \
		'%s' \
		"${libhunspell_version}"-"${ubuntu_version}"+pkg-"${packaging_revision}"

	exit 0
}

init "${@}"
