({
    handleNavigation : function(component, event, helper) {
        var navService = component.find('navService');
        
        var pageReference = {    
            "type": "standard__component",
            "attributes": {
                "componentName": "c__exploreDestinationComponent"    
            },    
            "state": {
                "message": "HEY!!! Salesforce Casts"    
            }
        }
        
        navService.navigate(pageReference);
	}
})