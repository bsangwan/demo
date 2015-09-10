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




