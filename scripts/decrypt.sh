#!/bin/bash

fd --regex secrets --type directory | xargs fd . | xargs rg --files-with-matches ANSIBLE | xargs ansible-vault decrypt --vault-id vault-secret.txt
