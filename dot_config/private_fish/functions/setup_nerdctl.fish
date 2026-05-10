function setup_nerdctl
    set url $(curl -s https://api.github.com/repos/containerd/nerdctl/releases/latest | grep "browser_download_url.*nerdctl-full.*-linux-amd64.tar.gz" | grep -o 'https://[^"]*')
    echo "Latest release: $url"
    curl -LSsf $url | tar xzv -C $HOME/.local
    echo "If it's a new installation don't forget to run 'containerd-rootless-setuptool.sh install'"
end
