#!/bin/bash

set -e

export DATABASE_URL=postgres://prompt_job_board_user:RCk9kQ6iObXG1mtwMk7G2RYGhLW88sxU@dpg-cgmvi97dvk4k01720ai0-a/prompt_job_board

bundle install
yarn install
rails db:migrate
rails assets:precompile