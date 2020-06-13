1.git init    初始化操作，当前目录变成git可以管理的仓库
2.git add readme.txt     添加到暂存区里面
3.git commit  -m "****"    告诉Git，把文件提交到仓库
4.git status    来查看是否还有文件未提交
5.git diff ***     查看文件到底改了什么内容
6.git log     命令显示从最近到最远的历史日志
7.git reset --hard HEAD^    回退上个版本(git reset --hard HEAD~100)
8.git reset --hard ****     通过历史记录恢复到指定版本
9.cat ****     查看文件内容
10.git restore -- ****     把****文件在工作区做的修改全部撤销
11.rm ****    删除文件
12.git remote add origin https://github.com/18515592159zhu/testgit.git    把本地仓库的内容推送到GitHub仓库
13.git push -u origin master