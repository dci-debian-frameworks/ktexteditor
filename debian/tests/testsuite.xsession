#!/bin/sh
#!/bin/sh
export LANG=C.UTF-8
export LC_ALL=C.UTF-8
export HOME=debian/tests.home
export XDG_CACHE_HOME=debian/tests.home
[ -e debian/tests.home ] || mkdir debian/tests.home
openbox &
sleep 5
kbuildsycoca5
HOME=debian/tests.home dh_auto_test
rm -rf debian/home/tests.home

