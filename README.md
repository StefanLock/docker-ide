# Docker-IDE

## Prerequisites 

* You will need to configure SSH keys for your desired code repository locally as this container mounts the _~/.ssh_ directory.
We purposely left that out of the build for security. Here is the instructions for [Github](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).
* You will need the AWS CLI locally to generate some of the files required for the image. _~/.aws/config_ will be mounted. You do also have the option of the _~/.aws/credentials_ if you choose.

## Getting started

__Note:__ Update the __password__ environment variable in the __.env__ file to something more secure.
You can also change the password using this [method](https://coder.com/docs/code-server/FAQ#how-do-i-change-the-password).

#### We will be using SSO for AWS

* __Run:__ `aws configure sso` and you should end up with a config file at _~/.aws/config_ similar to the following:
```
[profile sso]
sso_start_url = https://xxxx.awsapps.com/start#
sso_region = eu-west-1
sso_account_id = accountid
sso_role_name = role
region = eu-west-1
```
To get started you must run `aws sso login`.

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

* __Run:__ `docker compose build --no-cache`
* __Run:__ `docker compose up`
* __Connect to:__ http://0.0.0.0:8080/

__Success!__....hopefully

#### Overwrite Env variables
You can overwrite the variables in the _.env_ file with the following command syntax.

```
REPOSITORIES_PATH=~/repositories/docker_ide docker compose up
```

## Installing extensions
Simply update the dockerfile and rebuild, it uses _code-server --install-extension_

_Example_: __code-server --install-extension redhat.vscode-yaml__