({
	
    
    hideMe : function(component, event, helper) {
        
        //console.log(' 💥 ' + document.getElementById('btn'));
        
        var btn = component.find('hideme');
        
        $A.util.addClass(btn, 'slds-hide');
        
    }
})