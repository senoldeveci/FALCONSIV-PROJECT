public class TurkishRevision3 {
    public void welcome() {
        system.debug('Welcome');
    }

    public string firstName;
    public string lastName;
    public string className = 'new Batch';
    private string courseName = 'softiinovas';

    public void newCourse (string cName) {
        courseName = cName;
        system.debug(courseName);
    
    }
}