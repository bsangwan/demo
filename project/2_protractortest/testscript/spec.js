describe('Protractor Demo App', function() {

	it('should have a title',function(){
		    browser.get('http://10.1.111.180:3000/#/');
		      expect(browser.getTitle()).toEqual('IRIS horizon');
	});
});