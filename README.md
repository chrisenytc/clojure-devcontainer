# Dev Container For Clojure

> This repo provides a VSCode Devcontainer for the Clojure language

## Example Usage

1. Create a `.devcontainer` folder in the root of your repository
2. Create a `devcontainer.json` file inside the folder you created
3. Copy the code example and modify it to your needs

```json
// For format details, see https://aka.ms/devcontainer.json. For config options, see the
// README at: https://github.com/chrisenytc/clojure-devcontainer/tree/main/src/clojure
{
  "name": "Example",
  // Or use a Dockerfile or Docker Compose file. More info: https://containers.dev/guide/dockerfile
  "image": "ghcr.io/chrisenytc/clojure-devcontainer/clojure",
  // Run args
  "runArgs": ["--name", "${localEnv:USER}_devcontainer"],
  // Features to add to the dev container. More info: https://containers.dev/features.
  "features": {},
  // Use 'forwardPorts' to make a list of ports inside the container available locally.
  "forwardPorts": [],
  // Use 'postCreateCommand' to run commands after the container is created.
  "postCreateCommand": "git config --global --add safe.directory /workspaces/example",
  // Configure tool-specific properties.
  "customizations": {
    "vscode": {
      "extensions": []
    }
  }
  // Uncomment to connect as root instead. More info: https://aka.ms/dev-containers-non-root.
  // "remoteUser": "root"
}
```

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/chrisenytc/clojure-devcontainer](https://github.com/chrisenytc/clojure-devcontainer). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

1. Fork it [chrisenytc/clojure-devcontainer](https://github.com/chrisenytc/clojure-devcontainer/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am "Add some feature"`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Support

If you have any problem or suggestion please open an issue [here](https://github.com/chrisenytc/clojure-devcontainer/issues).

## License

Check [here](LICENSE).