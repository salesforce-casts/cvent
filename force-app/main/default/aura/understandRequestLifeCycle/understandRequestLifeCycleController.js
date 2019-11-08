({
	handleRequest : function(component, event, helper) {
		//1. Make a call to the apex method
		var action = component.get('c.fetchAccounts');
        
		//2. Pad the request with parameters
        action.setParams({
            'message': component.get(' v.message ')
        });
        
		//3. Define the callback function
        action.setCallback(this, function(response){
            
            //1. .getState();
            //2. .getError();
            //3. .getReturnValue();
            var state = response.getState();
            
            if(state === 'SUCCESS'){
                var res = response.getReturnValue();
                component.set( 'v.finalMessage', res);
            }else if(state === 'INCOMPLETE'){
                
            }else if(state === 'ERROR'){
                
            }else{
                
            }
            
        });
		
	}
})