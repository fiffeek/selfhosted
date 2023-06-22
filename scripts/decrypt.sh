#!/bin/bash

xargs -a ./scripts/data/encrypted_files ansible-vault decrypt --vault-id vault-secret.txt
