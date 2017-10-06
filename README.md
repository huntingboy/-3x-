# -畅玩3x刷机(基于Ubuntu)-
<h2>准备</h2>
1.手机关机，按住音量下键不松开，数据线接上手机，然后会进入fastboot模式。</br>
2.华为和三星手机需要解锁操作，解锁到官网。不需要解锁的手机可跳过此步骤。</br>
3.准备SD卡，将要下载的ROM包导入。若是强刷，则需要解压，会有/dload/UPDATE.ZIP文件。</br>
4.若是卡刷，还需要提取update.app里面的img：a)split_update.pl-master解压. b)chmod +x splitupdate.  c)./splitupdate update.app

5.电量至少30%.

6. [解锁链接](http://www.emui.com/plugin.php?id=unlock&mod=detail).
<h2>卡刷</h2>
sudo fastboot oem unlock **************　　　　 //解锁 

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

# 畅玩3x刷机（线刷，基于Win7）

*_说明：我的3x手机在无法进入rec，只能进入fastboot模式的情况下，尝试过各种刷机平台、刷机方式、刷机工具和刷机命令，只有这一种工具成功从b145刷入b150_*

1.下载要刷入的ROM包。

2.解压 华为_G750-T01.zip.

3.打开HuaweiUpdateExtractor.exe，选中ROM包，提取BOOT.img，CACHE.img，CUST.img，RECOVERY.img，system.img到"华为_G750-T01/刷机包/images/".

4.手机关机连接电脑，长按音量\-进入fastboot模式。

5.运行Fastboot刷机工具.exe，选中flash_all.bat.等待刷机，100%表示刷机成功，手机自动重启。
