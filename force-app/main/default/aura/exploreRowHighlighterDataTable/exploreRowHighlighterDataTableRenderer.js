({
    // Your renderer method overrides go here
    render : function(component, helper) {
        var returnVal = this.superRender();
		var cTable = component.find('customTable'); 
        console.log(cTable);
        console.log(returnVal);
        
        
        return returnVal; 
    }
})