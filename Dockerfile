FROM ghcr.io/coder/code-server:4.98.0-39

RUN code-server --install-extension ms-python.python \
    && code-server --install-extension amazonwebservices.aws-toolkit-vscode