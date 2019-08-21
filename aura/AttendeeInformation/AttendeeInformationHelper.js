({
	getWrapperData : function(component) {
		var action = component.get("c.getAttendeeInformation");
        action.setCallback(this, function(response){
            var state = response.getState();
            if(state == 'SUCCESS'){
                component.set("v.lstAttendeeWrapper", response.getReturnValue());
            }
        });
        
        $A.enqueueAction(action);
	}
})