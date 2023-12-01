({
	helperMethod : function(component,event) {
            
        alert('I am Helper Method.');
        
        var eName=component.get('v.employeeName');
        alert('Employee Name : '+eName)
        var eFatherName=component.get('v.employeeFatherName');
        alert('Employee Father Name : '+eFatherName);
        var eAddress=component.get('v.employeeAddress');
        alert('Employee Address : '+eAddress);
        var eDept=component.get('v.employeeDept');
        alert('Employee Department : '+ eDept);
        var eSalary=component.get('v.employeeSalary');
        alert('Employee Salary : '+eSalary);
        
		var action=component.get('c.insertEmployee');
        
        // method name i.e. insertEmpDetails should be same as defined in apex class
        // params name i.e. Parameters should be same as defined in insertEmpDetails method
        
        var details={
            "eName":eName,
            "eFatherName":eFatherName,
            "eAddress":eAddress,
            "eDept":eDept,
            "eSalary":eSalary
        }
        
        action.setParams(details);
        
        action.setCallback(this,function(a){
            var state=a.getState();
        if(state == 'SUCCESS'){
            alert(eName+'s Record Inserted Successfully...');
        }
        });
        $A.enqueueAction(action);
	}
})