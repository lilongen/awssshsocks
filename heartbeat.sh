#!/bin/bash
#

D="$(cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd)"
source $D/vars.sh

res=$(curl --proxy socks5h://localhost:12306 http://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png -I -w %{http_code} -s -o /dev/null)
if [ "$res" = "200" ]; then
	exit 0
fi

pkill -9 -f 'ec2-user';ssh -g -f -N -D 0.0.0.0:12306 -i $awsHostKey  ec2-user@$awsHost 2&>/dev/null;pgrep -l -f 'ec2-user'

