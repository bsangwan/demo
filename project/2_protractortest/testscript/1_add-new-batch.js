describe('Add New Batch', function() {
	
  

	it('should have a title',function(){
		    browser.get('http://127.0.0.1:9000');
		    expect(browser.getTitle()).toEqual('IRIS horizon');
	});

	

	//http://www.ngroutes.com/questions/18ad2a8/protractor-looping-through-table-to-select-option-from-listbox.html
	it('add-new-batch',function(){

		element.all(by.xpath("//table[@id='leftTableDiv']/tbody/tr")).then(function (rows) {
        for (var i = 1; i < (rows.length); i++) {
        	// element.all(by.xpath("//table[@id='leftTableDiv']/tbody/tr[" + i + "]/td[1]")).getText().then(function(currText){
        	// 	varOne = currText
        	// 	console.log(varOne);
        	// });
        	element.all(by.xpath("//table[@id='leftTableDiv']/tbody/tr[" + i + "]/td[1]")).getText()
        	.then(function(currText){
        		// console.log(currText+";="+currText.length);
        		if(currText[0].indexOf('OLKS00006')>-1){
        			console.log("click case:"+currText);
        			element.all(by.xpath("//table[@id='leftTableDiv']/tbody/tr[" + i + "]/td[1]")).click();
        		}
        	});
       		console.log('count = ' + i);
        }
		})
	}); //it add-new-batch end

});