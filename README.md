# Docker-IDE

## Getting started

_Note:_ Update the __password__ environment variable in the docker-compose file to something more secure.

* __Run:__ _aws configure_ to set up the credentials and ensure you credentials file is updated here: _~/.aws/credentials_
* Make sure you have the repositories are here: _~/repositories_
    * Modify the docker-compose.yml if you want to change this location.
* __Run:__ _docker compose build --no-cache_
* __Run:__ _docker compose up_
* __Connect to:__ http://0.0.0.0:8080/

__Success!__....hopefully

## Installing extensions
Simply update the dockerfile and rebuild, it uses _code-server --install-extension_

_Example_: code-server --install-extension redhat.vscode-yaml