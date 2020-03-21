variable "root_password" {
    type        = string
    description = "What should the root password be set to?"
}

variable "token" {
    type        = string
    description = "What is your Linode API token?"
}

variable "count" {
    type        = number
    descriptoin = "How many instances do you want to launch?"
}

provider "linode" {
  token = "{var.token}"
}

resource "linode_instance" "exit-node" {
        image = "linode/ubuntu18.04"
        label = "Exit Node"
        group = "ProxyCannon"
        region = "us-east"
        type = "g6-nanode-1"
        root_pass = "{var.root_password}"
}
