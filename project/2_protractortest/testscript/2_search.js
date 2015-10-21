describe('Add New Batch', function() {
	
  

	it('should have a title',function(){
		    browser.get('http://127.0.0.1:9000/#/projects/1003/batches');
            // browser.pause();
		    expect(browser.getTitle()).toEqual('IRIS horizon');
                    browser.debugger();

	});

    //https://technpol.wordpress.com/2013/12/01/protractor-and-dropdowns-validation/
    var selectDropdownbyNum = function ( element, optionNum ) {
    if (optionNum){
      var options = element.findElements(by.tagName('option'))   
        .then(function(options){
          options[optionNum].click();
        });
    }
  };

  
    

	//http://www.ngroutes.com/questions/18ad2a8/protractor-looping-through-table-to-select-option-from-listbox.html
	it('2_search',function(){

        element(by.id('JobTypeSearch')).click();
        // element(by.cssContainingText('option','HB')).click();
        // BatchNumbers
        element.all(by.css('select[name="BatchNumbers"] option')).then(function(arr){
            arr.forEach(function(v){
                v.click().then(function(){
                    console.log("Call clicking option");
                })
                
            })
        })

        // Template
        element.all(by.css('select[name="Template"] option')).then(function(arr){
            arr.forEach(function(v){
                v.click().then(function(){
                    console.log("Call clicking template option");
                })
            })
        })

        // browser.sleep(10000);
	}); //search end

});