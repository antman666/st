st
--------------------
st 是一个基于X的简洁轻量的终端模拟器。


依赖
------------
安装st你需要Xlib等一些头文件(xorg)


安装
------------
编辑 config.mk 等文件来完成一些本地化配置 (dwm会默认安装到/usr/local).

之后运行以下命令来安装编辑过的dwm到机器上(需要root权限):

    make install clean


运行st
----------
如果你不想用`make clean install`来安装, 您必须使用以下命令编译st:

    tic -sx st.info

更多信息参考手册。
