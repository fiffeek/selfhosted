#!/bin/bash

fd --regex secrets --type directory | xargs fd . | xargs rg --files-without-match ANSIBLE | xargs ansible-vault encrypt --vault-id vault-secret.txt
