#!/bin/bash
source .tinyenv

tb --semver ${VERSION} deploy --v3
tb pipe populate tmp_move_unchanged_data
tb pipe populate tmp_move_changed_data
tb pipe rm tmp_move_unchanged_data
tb pipe rm tmp_move_changed_data
