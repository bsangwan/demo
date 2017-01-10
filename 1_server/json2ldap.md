### server

[ldap address](http://43.254.218.51/superldap/cmd.php?server_id=1&redirect=true)

*	demo_user/admin123
*	admin123

[exampleDirectoryContent ldif](http://connect2id.com/assets/products/json2ldap/exampleDirectoryContent.ldif.txt)

[exampleDirectoryTree.jpg](http://connect2id.com/assets/products/json2ldap/exampleDirectoryTree.jpg)

	
### 运用

#### shell

	java -jar jsonrpc2-shell.jar --auto-id 0 http://localhost:8080/json2ldap/	

*	1、 ➜  vagrant-ldap git:(master) ✗ vagrant up

*	2、	➜  Json2Ldap-3.0.6 ./connect-json2ldap.sh
	*	chmod +x *.sh	
	
*	3、	JSON-RPC 2.0 > ldap.connect { "host" : "localhost", "port" : 3890 }
	*	获取 CID	
*	4	用获取的CID进行操作

		ldap.getEntry { "CID" : "CRCyx_CvdGHvgdI2KnFnxJ8MYMBnqs46rAKmLiIoPnM","DN" : "uid=test,ou=people,dc=brodate,dc=net"}

### OSX

[apache2 install](https://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-osx-10-11-el-capitan/)