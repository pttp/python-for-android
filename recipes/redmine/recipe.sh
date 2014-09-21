#!/bin/bash

VERSION_redmine=${VERSION_redmine:-0.9.0}
URL_redmine=https://pypi.python.org/packages/source/p/python-redmine/python-redmine-$VERSION_redmine.tar.gz
DEPS_redmine=()
MD5_redmine=0eff9a334d25f807b6b87a552f75d9d2
BUILD_redmine=$BUILD_PATH/redmine/$(get_directory $URL_redmine)
RECIPE_redmine=$RECIPES_PATH/redmine


function prebuild_redmine() {
	true
}

function shouldbuild_redmine() {
	if [ -f "$BUILD_redmine/redmine" ]; then
		DO_BUILD=0
	fi
}

function build_redmine() {
	cd $BUILD_redmine

	push_arm

	pop_arm
}

function postbuild_redmine() {
	true
}
