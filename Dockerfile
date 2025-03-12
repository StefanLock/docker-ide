FROM ghcr.io/coder/code-server:4.98.0-39

RUN sudo dnf update -y && sudo dnf install -y zip

RUN curl "https://releases.hashicorp.com/terraform/1.11.2/terraform_1.11.2_linux_arm.zip" -o "terraform.zip" \
    && unzip terraform.zip \
    && sudo mv terraform /usr/local/bin/ \
    && rm -f terraform.zip

RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-aarch64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && sudo ./aws/install \
    && rm awscliv2.zip

RUN sleep 30

RUN code-server --install-extension ms-python.python \
    && code-server --install-extension amazonwebservices.aws-toolkit-vscode hashicorp.terraform \
    && code-server --install-extension hashicorp.terraform \
    && code-server --install-extension redhat.vscode-yaml
