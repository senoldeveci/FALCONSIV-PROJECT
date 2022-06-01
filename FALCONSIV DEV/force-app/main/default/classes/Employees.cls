public class Employees {
    public static void printEmployees() {
        
        List<string> employeeNames = new List<string>{'John Doe','Ashley Tucker', 'David Dean', 'Mary Atkinson'};
        System.debug(' Employee Names (Unsorted) ==>'+employeeNames);
        
        employeeNames.sort();
        System.debug(' Employee Names (Sorted) ==>'+employeeNames);
    }
}