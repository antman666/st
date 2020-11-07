st
--------------------
`st`是一个基于X的简洁轻量的终端模拟器。


依赖
------------
安装 st 你需要 Xlib 等一些头文件(xorg)


安装
------------
编辑`config.mk`等文件来完成一些本地化配置 ( st 会默认安装到 /usr/local ).

之后运行以下命令来安装编辑过的 st 到机器上(需要root权限):

    make install clean

用到的一些插件
--------------
- [st-alpha-0.8.2.diff](https://st.suckless.org/patches/alpha/)
- [st-anysize-0.8.1.diff](https://st.suckless.org/patches/anysize/)
- [st-scrollback-0.8.2.diff](https://st.suckless.org/patches/scrollback/)
- [st-hidecursor-0.8.3.diff](http://st.suckless.org/patches/hidecursor/st-hidecursor-0.8.3.diff)
- [st-blinking_cursor-20200531-a2a7044.diff](http://st.suckless.org/patches/blinking_cursor/st-blinking_cursor-20200531-a2a7044.diff)

更多信息请参考[手册](https://st.suckless.org/)。
