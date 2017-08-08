# aws ssh socks
- one ssh command to setup a local socks proxy
- run on linux/mac 
- run heartbeat.sh periodly (example: put it into crontab, and run it every one minute, using * * * * * ) 
- modify var.sh.tpl to update awsHost, awsHostKey variables and rename file to vars.sh
- localhost:12306 acts as socks proxy
