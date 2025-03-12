# Docker-IDE

## Getting started

_Note:_ Update the __password__ environment variable in the docker-compose file to something more secure.

* Update:__ Update up the aws credentials file here: _~/.aws/credentials_ to reflect the following:
```
[default]
aws_access_key_id=<key_id>
aws_secret_access_key=<secret_key>
aws_session_token=<token>
```
* Make sure you have your repositories locally here: _~/repositories_
    * Modify the _docker-compose.yml_ if you want to change this location.
* __Run:__ _docker compose build --no-cache_
* __Run:__ _docker compose up_
* __Connect to:__ http://0.0.0.0:8080/

__Success!__....hopefully

## Installing extensions
Simply update the dockerfile and rebuild, it uses _code-server --install-extension_

_Example_: __code-server --install-extension redhat.vscode-yaml__