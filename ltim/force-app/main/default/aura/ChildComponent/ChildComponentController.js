({
	fireEvent : function(component, event, helper) {
        
        alert("Yes, I get Called...");
        var e=component.getEvent("myEvent");
        e.setParams({"myText":"Last Class for aura"});
        e.fire();
		
	}
})