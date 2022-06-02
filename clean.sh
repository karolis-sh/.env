#!/bin/bash

set -e

sh ./_ansible.sh clean.yml "$@"

. ~/.profile
