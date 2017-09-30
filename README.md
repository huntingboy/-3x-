# -畅玩3x刷机(基于Ubuntu)-
<h2>准备</h2>
1.手机关机，按住音量下键不松开，数据线接上手机，然后会进入fastboot模式。<br>
2.华为和三星手机需要解锁操作，解锁到官网。不需要解锁的手机可跳过此步骤。<br>
3.准备SD卡，将要下载的ROM包导入。若是强刷，则需要解压，会有/dload/UPDATE.ZIP文件。
4.若是卡刷，还需要提取update.app里面的img：a)split_update.pl-master解压. b)chmod +x splitupdate.  c)./splitupdate update.app
<h2>卡刷</h2>
sudo fastboot oem unlock **************　　　　 //解锁<br>
sudo fastboot oem get-bootinfo 　　　　//判断解锁是否成功，成功则显示unlocked<br>
sudo fastboot flash recovery recovery.img　　　　 //写入recovery.img（会擦除官方recovery）<br>
sudo fastboot reboot 　　　　 //重启手机<br>
按住音量上+电源键，进入rec模式，找到ROM包刷入。（若是第三方rec,可能按住音量上下键即可进入。)<br>
强刷：音量上下键+电源键
<h2>线刷</h2>
fastboot erase boot<br>
fastboot erase recovery<br>
fastboot erase system<br>
fastboot erase userdata<br>
fastboot flash boot boot.img<br>
fastboot flash recovery recovery.img<br>
fastboot flash system system.img<br>
fastboot flash userdata userdata.img<br>
fastboot reboot<br>
