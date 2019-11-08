({
	handleSearch : function(component, event, helper) {
		
        //Step 1 
        var action = component.get('c.customSearch');
        
        //Step 2
        var searchInput = component.get(' v.message ');
        action.setParams({
            'searchText': searchInput
        });
        //Step 3
        action.setCallback(this, function(response){
            var state = response.getState();
            
            if(state === 'SUCCESS'){
                var responseText = response.getReturnValue();
                
				component.set( 'v.leads',responseText );
            }else if(state === 'INCOMPLETE'){
                
            }else if(state === 'ERROR'){
                
            }else{
                console.log(' Unknown error ');
            }
        });
        
        //Step 4
        $A.enqueueAction(action);
        
        
        
        
	}
})