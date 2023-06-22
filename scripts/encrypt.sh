#!/bin/bash

xargs -a ./scripts/data/encrypted_files ansible-vault encrypt --vault-id vault-secret.txt
