public class EmployeeInfo {
    
    public static Map<integer,String> employeeMap;

    public static string showInfo(integer employeeNumber) {
        string employeeName='';
        if (employeeMap.containsKey(employeeNumber)){
            employeeName += employeeMap.get(employeeNumber);

        }else{
            employeeName += 'Invalid entry. Please reenter the employee number';

        }
        return employeeName;
    }
}