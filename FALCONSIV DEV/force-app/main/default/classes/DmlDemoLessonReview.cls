public class DmlDemoLessonReview {
    public static void 
    dmlInsertDemo_StdObj() {
        Account acc = new Account();
        acc.Name = 'Lesson Review Account';
        acc.Description = ' I need to keep practicing';

        insert acc;
        System.debug(acc);
    }
}