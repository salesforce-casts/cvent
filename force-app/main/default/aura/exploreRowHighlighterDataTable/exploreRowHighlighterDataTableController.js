({
    doInit : function(component, event, helper) {
        
        component.set('v.columns', [
            {label: 'Account name', fieldName: 'Name', type: 'text'},
            {label: 'Rating', fieldName: 'Rating', type: 'text'},
            {label: 'Industry', 
             fieldName: 'Industry', 
             type: 'text',
             cellAttributes:{  
                class:{  
                    fieldName:"mystyle"
                }
            }}
        ]);
        
        var action = component.get("c.fetchAccounts");
        
        action.setCallback(this, function(response) {
            var state = response.getState();
            if (state === "SUCCESS") {
                console.log(response.getReturnValue());
                component.set( 'v.accounts', response.getReturnValue());
            }
            else if (state === "INCOMPLETE") {
                
            }
			else if (state === "ERROR") {
                   
			}
        });
        
        $A.enqueueAction(action);
        
    }
})