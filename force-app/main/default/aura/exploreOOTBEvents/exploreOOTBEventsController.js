({
    handleToast : function(component, event, helper) {
        var createRecordEvent = $A.get("e.force:createRecord");
        createRecordEvent.setParams({
            "entityApiName": "Contact",
            "defaultFieldValues": {
                'Phone' : '415-240-6590',
                'AccountId' : '001xxxxxxxxxxxxxxx'
            }
        });
        createRecordEvent.fire();
    }
})