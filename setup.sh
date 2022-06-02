#!/bin/bash

set -e

sh ./_ansible.sh setup.yml "$@"

. ~/.profile
