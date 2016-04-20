## packer-templates

Packer templates to build base VMs.

## Usage 

### Install Packer

You can install the latest version of packer in
https://www.packer.io/downloads.html

### Run packer

Currently, only virtualbox supported. To build VM:

```
$ packer build -only=virtualbox-iso template.json
```


### Supports

These templates were tested on packer 0.10.0

### License

MIT
