# sysconf install script for conf: nef.common

# update /etc/gitconfig as we just installed files into /etc/gitconfig.d/
# (nef-update-gitconfig is provided by sysconf.base which is listed our ./deps)
nef-update-gitconfig

######################################################################
#
# Same thing with /etc/hosts.d and ~/.ssh/config.d, in case other sysconf profiles change files in them
nef-update-hosts
nef-update-ssh-config

