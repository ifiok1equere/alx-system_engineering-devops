#0x0A. Configuration management

This project is part of the devops journey as it realtes to system achithecture
and engineering. The objective is to hone skills in writting declarative
languages like puppet.

##The project requirements are:
`All your files will be interpreted on Ubuntu 20.04 LTS`
`All your files should end with a new line`
`A README.md file at the root of the folder of the project is mandatory`
`Your Puppet manifests must pass puppet-lint version 2.1.1 without any errors`
`Your Puppet manifests must run without error`
`Your Puppet manifests first line must be a comment explaining what the Puppet manifest is about`
`Your Puppet manifests files must end with the extension .pp`

##Puppet Installation was done with the below commands:
`$ apt-get install -y ruby=1:2.7+1 --allow-downgrades`
`$ apt-get install -y ruby-augeas`
`$ apt-get install -y ruby-shadow`
`$ apt-get install -y puppet`

##Puppet code was also validated with a linter called puppet-lint
###Installation code:
`gem install puppet-lint`
