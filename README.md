# 畅玩3x刷机（线刷，基于Win7）

*_说明：我的3x手机在无法进入rec，只能进入fastboot模式的情况下，尝试过各种刷机平台、刷机方式、刷机工具和刷机命令，只有这一种工具成功从b145刷入b150_*

1.下载要刷入的ROM包。

2.解压 华为_G750-T01.zip.

3.打开HuaweiUpdateExtractor.exe，选中ROM包，提取BOOT.img，CACHE.img，CUST.img，RECOVERY.img，system.img到"华为_G750-T01/刷机包/images/".

4.手机关机连接电脑，长按音量\-进入fastboot模式。

5.运行Fastboot刷机工具.exe，选中flash_all.bat.等待刷机，100%表示刷机成功，手机自动重启。
