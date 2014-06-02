## intellij说明
####快捷键

	复制本行		command+D

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
	
	
	



     

 


