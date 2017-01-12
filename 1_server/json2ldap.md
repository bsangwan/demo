### server

[ldap address](http://43.254.218.51/superldap/cmd.php?server_id=1&redirect=true)

*	demo_user/admin123
*	admin123

[exampleDirectoryContent ldif](http://connect2id.com/assets/products/json2ldap/exampleDirectoryContent.ldif.txt)

[exampleDirectoryTree.jpg](http://connect2id.com/assets/products/json2ldap/exampleDirectoryTree.jpg)

	
### 运用

#### shell

	java -jar jsonrpc2-shell.jar --auto-id 0 http://localhost:8080/json2ldap/
	java -jar jsonrpc2-shell.jar --auto-id 0 http://localhost:8080/json2ldap2/	

*	1、 ➜  vagrant-ldap git:(master) ✗ vagrant up

*	2、	➜  Json2Ldap-3.0.6 ./connect-json2ldap.sh
	*	chmod +x *.sh	
	
*	3、	获取 CID
	*	JSON-RPC 2.0 > ldap.connect { "host" : "localhost", "port" : 3890 }
*	4	用获取的CID进行操作

		ldap.getEntry { "CID" : "CRCyx_CvdGHvgdI2KnFnxJ8MYMBnqs46rAKmLiIoPnM","DN" : "uid=test,ou=people,dc=brodate,dc=net"}
		
		
		ldap.search	 {"CID":"SBnQ2lgAGTEalBJRgl5GMUbhLcQh0mP5t546ZqxxgfU","baseDN":"ou:employee,ou=people,dc=brodate,dc=net",“scope“ = "ONE","filter":"(objectClass=person)","attributes":"cn","sort":[{"key":"cn"}],"page":{"size":10,"cookie":""}},"id":3,"jsonrpc":"2.0"}


		ldap.search {"CID":"SBnQ2lgAGTEalBJRgl5GMUbhLcQh0mP5t546ZqxxgfU","baseDN":"ou=contractor,ou=people,dc=brodate,dc=net","scope":"ONE","filter":"(objectClass=person)","attributes":"cn","sort":[{"key":"cn"}],"page":{"size":10,"cookie":""}}
		
	*	带sort排序		
		
			ldap.search {"CID":"SBnQ2lgAGTEalBJRgl5GMUbhLcQh0mP5t546ZqxxgfU","baseDN":"ou=contractor,ou=people,dc=brodate,dc=net","scope":"ONE","filter":"(objectClass=person)","attributes":"cn","sort":[{"key":"cn"}]}
		

	*	成功的查询(最简)		
		
			ldap.search {"CID":"SBnQ2lgAGTEalBJRgl5GMUbhLcQh0mP5t546ZqxxgfU","baseDN":"ou=employees,ou=people,dc=brodate,dc=net","scope":"ONE","filter":"(objectClass=person)"}
			
	*	成功的查询(attributes)		
		
			ldap.search {"CID":"SBnQ2lgAGTEalBJRgl5GMUbhLcQh0mP5t546ZqxxgfU","baseDN":"ou=employees,ou=people,dc=brodate,dc=net","scope":"ONE","filter":"(objectClass=person)","attributes":"cn"}
			
	*	成功的查询(追加page)		
		
			ldap.search {"CID":"B9lpLZrn9amWw3I6u5YrbXytlQzIqvIKe1WDHywV6Yg","baseDN":"ou=employees,ou=people,dc=brodate,dc=net","scope":"ONE","filter":"(objectClass=person)","attributes":"cn","page":{"size":10,"cookie":""}}
			
####	12

(nimbus)[http://blog.dzhuvinov.com/?p=1113]									

### OSX

[apache2 install](https://coolestguidesontheplanet.com/get-apache-mysql-php-and-phpmyadmin-working-on-osx-10-11-el-capitan/)