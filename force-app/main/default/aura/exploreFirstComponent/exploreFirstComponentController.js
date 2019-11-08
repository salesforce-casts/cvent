({
	handleFetchRecords : function(component, event, helper) {
		
        //1. Give the name of the apex method to invoke
        var action = component.get(' c.fetchRecords ');
        //2. Set the params if you have any
        action.setParams({
            message: 'Krishna Teja Updated'
        });
        //3. define the callback function 
        action.setCallback(this, function(response){
            var state = response.getState();
            
            if(state === "SUCCESS"){
				var returnValue = response.getReturnValue();
                console.table(returnValue);
                component.set(' v.finalMessage ', returnValue);
            }else if(state === "INCOMPLETE"){
                
            }else if(state === "ERROR"){
                
            }else{
                
            }

        });
        //4. Add it to the queue
        $A.enqueueAction(action);
	}
                     
                     
	
                     
})