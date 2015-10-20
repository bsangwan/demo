describe('Add New Project', function() {
	var first = element.all(by.css('my-animation')).first();
	// var AddNewProject = element(by.css('.btn.btn-primary.btn-sm.pull-right'));
	it('should have a title',function(){
		    // browser.get('http://127.0.0.1:9000/#/');

		    browser.get('http://127.0.0.1:9000/#/projects/new');
		      expect(browser.getTitle()).toEqual('IRIS horizon');
	});


	it('should have a list',function(){
		var inputProjectNumber=element(by.id('inputProjectNumber'));
		var inputProjectName=element(by.id('inputProjectName'));
		var inputMatterNumber=element(by.id('inputMatterNumber'));
		// var btn=element(by.css('.btn.btn-success'))

		inputProjectNumber.sendKeys("CH40006")
		inputProjectName.sendKeys("v1.2 auto")
		inputMatterNumber.sendKeys("00001")
		var btn=element(by.css('.btn.btn-success'));
		btn.click();
		btn.submit();
		var projectNum = element(by.binding('project.ProjectNumber')).getText();
		console.log(projectNum)

			// by.id('inputProjectName').sendKeys("Change Order 4v2")

		// AddNewProject.click();
	});

});