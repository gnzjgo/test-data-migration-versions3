#!/bin/bash
source .tinyenv

tb --semver ${VERSION} deploy --v3
tb --semver ${VERSION} pipe populate tmp_move_unchanged_data --node events_old_to_new_unchanged --wait
tb --semver ${VERSION} pipe populate tmp_move_changed_data --node events_old_to_new_changed --wait