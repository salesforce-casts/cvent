({
    
    
    
    doInit : function(component, event, helper){
        /**component.set( 'v.labelOfButton', 'Teja' );
        var custButton = component.find('cstButton');
        console.log(custButton);
        $A.util.addClass(custButton, 'custButton');**/
        
    },
    
    
    //This is the javascript function that gets invoked when user clicks on the button
	getAllAccountRecords : function(component, event, helper) {
		//Now we need to make a call to the Apex method from the JS function
		/**
		//1. Make a call to the apex method
		var action = component.get(' c.getAllAccounts ');
        
		//2. Pad in all the Parameters if you have any parameters
        action.setParams({
            'msg': component.get(' v.greeting ')
        });
        
        //3. Define the callback function
        action.setCallback(this, function(response){
            //Process the response
            
            var state = response.getState();
            
            if(state === 'SUCCESS'){
                var responseValue = response.getReturnValue();  
                component.set(' v.accounts ', responseValue);
                
                //console.log(' 💥 ' + JSON.stringify(responseValue));
            }else if(state === 'INCOMPLETE'){
                
                
            }else if(state === 'ERROR'){
                var error = response.getError();
            }else{
                
            }
            
        });
        //4. Add the method call to queue
        $A.enqueueAction(action);
        
        */
        
	}
})