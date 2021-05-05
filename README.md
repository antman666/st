st
--------------------
`st`是一个基于X的简洁轻量的终端模拟器。


依赖
------------
安装 st 你需要 Xlib 等一些头文件(xorg-apps and xorg-server)


安装
------------
编辑`config.h`等文件来完成一些本地化配置 ( st 会默认安装到 /usr/local/bin ).

之后运行以下命令来安装 st 到机器上:

    sudo make install clean

用到的一些插件
--------------
- [st-alpha](https://st.suckless.org/patches/alpha/)
- [st-anysize](https://st.suckless.org/patches/anysize/)
- [st-scrollback](https://st.suckless.org/patches/scrollback/)
- [st-hidecursor](http://st.suckless.org/patches/hidecursor/st-hidecursor-0.8.3.diff)
- [st-blinking_cursor](http://st.suckless.org/patches/blinking_cursor/st-blinking_cursor-20200531-a2a7044.diff)

更多信息请参考[手册](https://st.suckless.org/)。
