## GIT说明
1. [工作协同](http://www.worldhello.net/gotgithub/04-work-with-others/010-fork-and-pull.html)
2. [git常用 命令](http://www.xbc.me/git-commands/)
3. [git 简明操作手册 EDGE CASE](http://gitimmersion.googol.im/lab_13.html)
4. [Git 分支 - 何谓分支](http://git-scm.com/book/zh/Git-%E5%88%86%E6%94%AF-%E4%BD%95%E8%B0%93%E5%88%86%E6%94%AF)
5. 切换到远程分支[git remote-branch ](http://stackoverflow.com/questions/945654/git-checkout-on-a-remote-branch-does-not-work)
6. git 强制 push : git push origin master --force
7. 如何恢复删除的文件 git checkout file
8. 如何将本地项目上传到一个新分支 ; 首先新建git branch test；第二 git push origin test:test;
9. 切换到某一分支 git checkout -b test;
10. [git常用命令](http://blog.csdn.net/sunboy_2050/article/details/7529022) CSDN ithomer 新站添加远程仓库
11. [cannot-pushto-github-keeping-saying-need-merge](http://stackoverflow.com/questions/10298291/cannot-pushto-github-keeping-saying-need-merge/13448568#13448568)
12. [git-scm 基础](http://git-scm.com/book/zh/Git-%E5%9F%BA%E7%A1%80-%E6%9F%A5%E7%9C%8B%E6%8F%90%E4%BA%A4%E5%8E%86%E5%8F%B2)
13. [官方 帮助 添加一个 remote](https://help.github.com/articles/adding-a-remote)
14. [官方 帮助 同步一个 fork](https://help.github.com/articles/syncing-a-fork)
15. [官方 帮助 上传一个本地 remote 分支](https://help.github.com/articles/pushing-to-a-remote#pushing-a-branch)
16. [git-upstreams-forks](https://blogs.atlassian.com/2013/07/git-upstreams-forks/)
17. [github pages 的生成](http://pages.github.com/)
18. [库尼啦 新建并管理 branch](https://github.com/Kunena/Kunena-Forum/wiki/Create-a-new-branch-with-git-and-manage-branches)
19. [git-scm 中文说明书](http://git-scm.com/book/zh/Git-%E5%9F%BA%E7%A1%80-%E6%9F%A5%E7%9C%8B%E6%8F%90%E4%BA%A4%E5%8E%86%E5%8F%B2)
11. [git 恢复上次提交](http://stackoverflow.com/questions/927358/how-to-undo-the-last-git-commit)
12. [官方 fork并保持更新](https://help.github.com/articles/fork-a-repo)
12. 

2. [Using Pull Requests](https://help.github.com/articles/using-pull-requests)
   * 增加 当前目录文件 git add .
   * [GIT svn简明对比手册 英文](http://git.or.cz/course/svn.html)
   * [GIT 小乌龟 图文](http://www.ihiro.org/use-git-synchronize-code-to-github)   
   * 
   
## git-scm
1. [git-scm ignore](http://git-scm.com/docs/gitignore)
2. 




## osx上的git使用
1. [git中文设置](http://blog.csdn.net/shuhuai007/article/details/7276195)


## GIT配置
1. [git中文设置](http://blog.csdn.net/shuhuai007/article/details/7276195)
2. [git中文配置-2012年7月](http://blog.sina.com.cn/s/blog_4cd5d2bb01017w76.html)
3. 

## osx git使用 实践
1. ### git 上checkout 某一 tag 版本  
git checkout -b V4.1.0.GA origin/V4.1.0.GA

2. ### ss4项目本地搭建次序  
	首先打包 modules/test
	
	其次上传 modules/parent/pom.xml文件
	
	再次上传 modules/extends
	
	最后上传 modules/core
3. ### 开始工作git checkout 一个 tag 命名为branch. 从tag版本checkout为开发版本。

	git checkout V4.1.0.GA	（这里是checkout一个tag）
	
	git checkout -b v4.1.1		(这里是一个branch)
	
	git branch -D v4.1.1
	
	
4. ### 上面的做完之后 git checkout -b v4.1.1 origin/v4.1.1

###pull one,push other	
	git checkout -b test origin/test		//从服务器上检出一个分支开始工作
	git remote -v 							//git 查看远程分支
	git remote remove activiti				//删除一个远程分支
	
	git remote add upstream https://github.com/henryyan/kft-activiti-demo.git								//添加一个远程分支
	git tag
	git checkout activiti-5.15
	git checkout -b activiti-5.15-dev
	git push origin activiti-5.15-dev:activiti-5.15-dev
	
	git log --pretty=oneline --abbrev-commit
											//一行显示日志
	git show sdfkljsldkfjlsajfsadfsd
	
	git branch <new_branch>					//本机创建branch
	git push origin <new_branch>			//push branch
	git checkout <new_branch>		
	git branch -d <new_branch>				//删除本地 branch
	git push origin :<new_branch>			//删除服务器上的branch
	
	git remote add v1_branch https://github.com/jnuc093/pms.git
	git checkout en-GB.com_lendr.ini		//恢复某个文件
	
	git reset 6b795a9442e95e6036273adb6064dea2eac4dbcd //恢复到上次提交
	
	
	



     

 


