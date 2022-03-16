#!/bin/sh

dokku apps:create klaradev-$1
dokku postgres:create klaradev-$1
dokku postgres:link klaradev-$1 klaradev-$1

dokku domains:set klaradev-$1 $1.klaradev.com
