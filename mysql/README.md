# mysql

## install



## backup

mysql数据库定时增量和全量备份的shell脚本

### 使用方法

**mysql_backup.sh**

```shell
crontab -e
# 每天凌晨3点全量备份mysql,并把sql备份文件同步到备份服务器上。异地容灾，有备无患！
0 3 * * * /root/mysql-backup.sh
```



