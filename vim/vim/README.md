# MYVIMRC
## 配置过程

**注意，在安装插件前应先将coc插件注释掉，稍后安装**

### vim
在家目录下建立`.vim`文件夹，将本文件夹内的所有内容复制到`.vim`文件夹中</br>
将`init.vim`改名为`vimrc`，即完成配置

一开始配置之后进入vim会报错，是主题插件没有检测到的缘故</br>
执行:Plugin install 命令安装插件，安装完成之后即可使用

### neovim
在`~/.config/`下建立`nvim`文件夹，将本文件夹内的所有内容复制到`nvim`文件夹中</br>
一开始执行`nvim`也会报错，解决办法和`vim`相同

## C/C++环境搭建

首先需要安装一些基本依赖


#### Debian系
```shell
sudo apt install nodejs
sudo apt install npm
sudo apt install clangd
sudo apt install bear
```

#### ARCH系
```shell
sudo pacman -S nodejs
sudo pacman -S npm
yay clangd
# clangd根据使用的vim来确定选哪个
sudo pacman -S bear
```
再执行上个步骤的命令,进入`vim`，执行

```
:CocInstall coc-json coc-clangd
```
至此，就可以在编辑c/c++文件是达成只能提示的效果

#### Bear的使用方法
编辑完成c/c++文件之后，写上对应的`Makefile`文件，执行：
```shell
bear -- make
```
bear会自动生成json文件，此时就可以用vim编辑文件，并且可以只能提示其他文件中的内容

## Python 自动补全

首先安装一些基本依赖

```shell
 pip3 install 'python-language-server[all]'
```
进入vim，执行

~~~shell
:CocInstall coc-python
~~~

就会自动安装，安装之后退出vim，再进入vim就可以智能提示Python的内容

## 基本操作使用方法

基本操作基本与原版vim相同，将jk连按映射到esc上

