#!/bin/bash

mkdir -p ~/go/bin

cat <<EOF > ~/.terraformrc
provider_installation {

  dev_overrides {
      "github.com/kawataki-yoshika/sample" = "/home/vscode/go/bin"
  }

  # For all other providers, install them directly from their origin provider
  # registries as normal. If you omit this, Terraform will _only_ use
  # the dev_overrides block, and so no other providers will be available.
  direct {}
}
EOF

docker-compose -f docker_compose/docker-compose.yml --project-directory docker_compose up -d
