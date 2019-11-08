({
	handleHide : function(component, event, helper) {
		var acc = component.find('accordion');
        
        $A.util.addClass(acc,'slds-hide');
	},
    
    handleShow : function(component, event, helper) {
		var acc = component.find('accordion');
        
        $A.util.removeClass(acc,'slds-hide');
	}
})