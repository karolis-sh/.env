#!/usr/bin/env bash

ansible-playbook --inventory localhost, "$@" --ask-become-pass --ask-vault-pass --verbose
