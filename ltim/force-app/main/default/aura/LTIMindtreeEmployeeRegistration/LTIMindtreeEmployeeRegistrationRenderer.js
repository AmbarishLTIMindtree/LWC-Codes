({
	// Your renderer method overrides go here
    render : function(component , helper){
        var ret = this.superRender();
        alert('I am from render');
        return ret;
    },
        afterRender : function(component , helper){
            this.superAfterRender();
            alert('I am from afterRender');
    },
        rerender : function(component , helper){
             this.superRerender();
             alert('I am from reRender');
    },
        unrender : function(component , helper){
             this.superUnrender();
             alert('I am from Unrender - going to destroy');
    }
 
})