({
	deleteRecord : function(component, event, helper) {
        component.find('deleteRecord').deleteRecord($A.getCallback(function(response){
            console.log(JSON.stringify(response));
        }));	
	}
})