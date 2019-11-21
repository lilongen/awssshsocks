#/bin/bash
#

alias resocksec2="pkill -9 -f 'ec2-user';sleep 1;ssh -g -f -N -D 0.0.0.0:12306 -i $awsHostKey  ec2-user@$awsHost 2&>/dev/null;pgrep -l -f '$awsHost'"
alias cec2="ssh -i $awsHostKey ec2-user@$awsHost"
alias cec2private="ssh -i $awsHostKey ec2-user@$awsHostPrivate"

resource="http://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png"
alias test_ec2_socks="curl --proxy socks5h://localhost:12306 $resource -I -w %{http_code} -s -o /dev/null"
