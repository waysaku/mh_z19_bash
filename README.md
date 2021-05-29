# What's this?
mh_z19を使ってmackerel.ioにメトリクス送ってるだけのシェルスクリプト    
https://waysaku.hatenablog.com/entry/2020/08/22/144737  
  

# 動作確認
```
$ sudo ~/mh_z19_bash/measure_co2.sh 
```

# rootユーザーのCronにセット
```
$ sudo crontab -u root -e
* * * * * /home/watanabe_yusaku/mh_z19_bash/measure_co2.sh > /home/watanabe_yusaku/co2_log 2>&1
```
