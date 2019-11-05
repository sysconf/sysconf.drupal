# /sysconf repository

## Git subtrees

git subtree push -P sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree push -P sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree push -P sysconf.nef.common git@github.com:geonef/sysconf.nef.common.git master
git subtree push -P sysconf.nef.machine ggit:sysconf.nef.machine.git master

git subtree pull -P sysconf.base git@github.com:geonef/sysconf.base.git master
git subtree pull -P sysconf.gitted git@github.com:geonef/sysconf.gitted.git master
git subtree pull -P sysconf.nef.common git@github.com:geonef/sysconf.nef.common.git master
git subtree pull -P sysconf.nef.machine ggit:sysconf.nef.machine.git master
