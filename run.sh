if ! pgrep -f 'subgrab'
then
    nohup subgrab -d $TARGET -l $LANG >> /tmp/log.txt 2>&1
else
    echo "running" >> ~/out_test.txt
fi
