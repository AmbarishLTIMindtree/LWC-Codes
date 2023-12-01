({
	handleEvent : function(component, event, helper) {
		alert("Yes, I am ready to handle the event...");
        var v=event.getParam("myText");
        alert(v);
	}
})