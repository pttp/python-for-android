#!/bin/bash

VERSION_trello=${VERSION_trello:-0.1.6}
URL_trello=https://pypi.python.org/packages/source/p/py-trello/py-trello-$VERSION_trello.tar.gz
DEPS_trello=()
MD5_trello=d5cdb37d7fe57f330d23fc5f087f5eff
BUILD_trello=$BUILD_PATH/trello/$(get_directory $URL_trello)
RECIPE_trello=$RECIPES_PATH/trello


function prebuild_trello() {
	true
}

function shouldbuild_trello() {
	if [ -f "$BUILD_trello/trello" ]; then
		DO_BUILD=0
	fi
}

function build_trello() {
	cd $BUILD_trello

	push_arm

	pop_arm
}

function postbuild_trello() {
	true
}
