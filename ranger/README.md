# Ranger的相关改动

#### 生成配置文件
执行

```shell
ranger --copy-config=all
```

自动生成配置文件

#### 改动
ranger终端显示图片

set preview_images true
set preview_images_method w3m

没有w3m需要进行下载


map gC cd ~/.config
map gW cd ~/Workspace
map gL cd ~/Library


#### 插件
显示图标icon

先下载插件,在ranger的wiki上有

default__linemode devicons
