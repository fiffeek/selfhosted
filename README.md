## VPS

This repository represents the state of my [VPS][2]. This is a single node system,
and will stay that way for the foreseeable future. The repository allows for deploying
the services on the node using [Ansible][1].

The code contained within this repository is open-source, enabling others to learn and benefit from it.
However, please note that the configuration currently includes hardcoded domain references, limiting its universal applicability for simple reuse. Exploring this repository can provide valuable insights into managing and optimizing your own VPS environment.

The server exposes services by utlizing a reverse proxy with subdomains at [\*.home.filipmikna.com][4].

### Software

Everything runs in Docker containers via Docker Compose:

- Reverse proxy with TLS: [Caddy][5]
- Authentication/Authorization with MFA + SSO: [Authelia][6] & [LLDAP][7]

### Installation

Ansible is required to run the playbook. The correct version can be installed via
[asdf][3] by executing: `asdf install` in the repository root.
Afterwards, ansible with specific tags might be used to trigger the deployment (or any
other set of tasks from `playbook.yaml`).

[1]: https://github.com/ansible/ansible
[2]: https://cloud.google.com/learn/what-is-a-virtual-private-server
[3]: https://asdf-vm.com/
[4]: https://homepage.home.filipmikina.com
[5]: https://caddyserver.com/
[6]: https://www.authelia.com/
[7]: https://github.com/lldap/lldap
