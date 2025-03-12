# Docker-IDE

## Getting started

__Note:__ Update the __password__ environment variable in the __.env__ file to something more secure.

__Note:__ We will be using SSO for AWS

* __Run:__ _aws configure sso_ and you should end up with a config file at _~/.aws/config_ similar to the following:
```
[profile sso]
sso_start_url = https://xxxx.awsapps.com/start#
sso_region = eu-west-1
sso_account_id = accountid
sso_role_name = role
region = eu-west-1
```
To get started you must run __aws sso login__.

__Note:__ The _.env_ sets the profile to _sso_ so make sure you name your profile _sso_ or update the _.env_.

You also have the option of creating the aws credentials file here: _~/.aws/credentials_ to reflect the following:
```
[default]
aws_access_key_id=<key_id>
aws_secret_access_key=<secret_key>
aws_session_token=<token>
```
* Make sure you have your repositories locally here: _~/repositories_
    * Modify the _.env_ if you want to change this location.

### Docker compose variables
These can be found in the _.env_ file and can be used to define which repository to use, using the local path.

* __Run:__ _docker compose build --no-cache_
* __Run:__ _docker compose up_
* __Connect to:__ http://0.0.0.0:8080/

__Success!__....hopefully

## Installing extensions
Simply update the dockerfile and rebuild, it uses _code-server --install-extension_

_Example_: __code-server --install-extension redhat.vscode-yaml__