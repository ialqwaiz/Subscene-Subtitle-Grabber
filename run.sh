if ! pgrep -f 'subgrab'
then
    nohup subgrab -d /media -l $LANG -c $COUNT >> /tmp/log.txt 2>&1
else
    echo "running" >> ~/out_test.txt
fi
