public class EmpInfo {
    
    @AuraEnabled
    public static void insertEmployee(String eName,String eFatherName,String eAddress,String eDept,String eSalary){
        Employee__c employee=new Employee__c();
        employee.Name=eName;
        employee.Employee_Father_Name__c=eFatherName;
        employee.Employee_Address__c=eAddress;
        employee.Employee_Department__c=eDept;
        employee.Employee_Salary__c=Integer.valueOf(eSalary);
        insert employee;
    }

}