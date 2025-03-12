FROM ghcr.io/coder/code-server:4.98.0-39

RUN sudo yum install zip -y

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && sudo ./aws/install \
    && rm awscliv2.zip

RUN code-server --install-extension ms-python.python \
    && code-server --install-extension amazonwebservices.aws-toolkit-vscode hashicorp.terraform \
    && code-server --install-extension hashicorp.terraform \
    && code-server --install-extension redhat.vscode-yaml
