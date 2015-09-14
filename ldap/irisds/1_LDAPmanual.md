## version
2.4.31



##  reconfig

	dpkg-reconfigure slapd    
	//Ubuntu  
	sudo systemctl stop slapd.service
	sudo slapadd -v -l mygithub/demo/ldap/irisds/root-unit.ldif 
	sudo slapadd -v -l mygithub/demo/ldap/irisds/group.ldif 
	sudo slapadd -v -l mygithub/demo/ldap/irisds/user-login.ldif 
	sudo systemctl start slapd.service
                           

####55f123b1 hdb_db_open: database "dc=irisds,dc=com": database already in use.

*	shut down LDAP first

## ldap nodejs

[ldap auth](http://stackoverflow.com/questions/17795007/node-js-ldap-auth-user)

[stackoverflow相关问题](http://stackoverflow.com/questions/28159093/ldap-authentication-with-nodejs-express-and-passport-ldapauth)

[Online LDAP Test Server](http://www.forumsys.com/tutorials/integration-how-to/ldap/online-ldap-test-server/)

[3-Authenticating nodejs with passport  tuts+](http://code.tutsplus.com/tutorials/authenticating-nodejs-applications-with-passport--cms-21619)

[4-angular-client-side-authen](https://github.com/fnakstad/angular-client-side-auth)




