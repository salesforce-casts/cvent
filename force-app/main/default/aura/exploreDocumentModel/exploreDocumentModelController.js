({
    
    
    createRecord : function (component, event, helper) {
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": "Contact"
        });
        createRecordEvent.fire();
        
    },
    showElement : function(component, event, helper) {
        var testing = component.find('testing');
        $A.util.toggleClass(testing,'slds-hide');
    },    
    hideElement : function(component, event, helper) {
        var testing = component.find('testing');
        $A.util.toggleClass(testing,'slds-hide');
    }
})