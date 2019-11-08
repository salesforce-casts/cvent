({
	fetchAllAccountRecords : function(component) {
		//Step 1: make a call to the apex method
        var action = component.get(' c.fetchRecords ');
        
        //Step 2: Pad paramenets to the request in case you have any
        action.setParams({
            'firstname': 'Krishna',
            'lastname': 'Teja'
        });
        
        //Step 3: Define the callback function
        action.setCallback(this, function(response){
			
            //Get the state
            var state = response.getState();
            console.log(state);
            //Check whats the state
            if(state === 'SUCCESS'){
              var returnValue = response.getReturnValue();
                console.log(returnValue);
            }else if(state === 'INCOMPLETE'){
                
            }else if(state === 'ERROR'){
                
            }else{
                console.log(' 💥 unknown error'); 
            }
        });  
        //Step 4: Add the request to the queue
        $A.enqueueAction(action);
	}
})