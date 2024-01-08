#!/bin/bash
source .tinyenv

tb --semver ${VERSION} deploy --v3
tb --semver ${VERSION} pipe populate tmp_move_unchanged_data
tb --semver ${VERSION} pipe populate tmp_move_changed_data