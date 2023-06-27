#!/bin/bash

ansible-playbook -i hosts playbook.yaml --tags deploy --vault-id=vault-secret.txt
