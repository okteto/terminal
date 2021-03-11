cat << EOF
Welcome to your Kubernetes terminal. Happy coding!
EOF

# add Alias definitions.
if [ -f /root/.bash_aliases ]; then
    . /root/.bash_aliases
fi

export PS1="\[\e[32m\]okteto\[\e[m\]> "