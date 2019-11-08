({
	handleClick : function(component, event, helper) {
        var msg = component.get('v.message');
        console.log(msg);
		component.set( 'v.message', 'Teja');
	}
})