#!/bin/bash

fd --regex secrets --type directory | xargs fd . | xargs ansible-vault encrypt --vault-id vault-secret.txt
