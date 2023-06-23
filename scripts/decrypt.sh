#!/bin/bash

fd --regex secrets --type directory | xargs fd . | xargs ansible-vault decrypt --vault-id vault-secret.txt
