({
	fetchData : function(component, event, helper) {	
       alert('Hello');
       helper.fetchAllAccountRecords(component);
       component.set( 'v.message', 'HEY!!!!!'); 
	}
    
})