#!/bin/bash

cur_date=`date +%Y%m%d%k`
rm -rf /usr/local/redis-5.0.4/snapshotting/$cur_date
mkdir -p /usr/local/redis-5.0.4/snapshotting/$cur_date
cp /var/redis/6379/dump.rdb /usr/local/redis-5.0.4/snapshotting/$cur_date

del_date=`date -d -48hour +%Y%m%d%k`
rm -rf /usr/local/redis-5.0.4/snapshotting/$del_date
