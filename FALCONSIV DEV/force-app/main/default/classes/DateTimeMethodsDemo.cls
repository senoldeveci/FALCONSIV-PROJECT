public class DateTimeMethodsDemo {
    public void calculateAgeInMonths() {

        date birthdate = date.newInstance(1980, 4, 8);
        date todayDate = date.today();

        integer ageInMonths = birthdate.monthsBetween(todayDate);

        integer ageInDays = birthdate.daysBetween(todayDate);

        integer ageInYears = birthdate.monthsBetween(todayDate)/12;

        System.debug('Age in months is '+ ageInMonths);
        System.debug('Age in days is '+ ageInDays);
        System.debug('Age in years is '+ ageInYears);

    }

    public void printSubscriptionEndDate() {
        date todayDate2 = date.today();
        date subsEndDate = todayDate2.addDays(1000);
        System.debug(' Subscription End Date is: ' + subsEndDate);

        integer subsYear = subsEndDate.year();
        integer subsMonth = subsEndDate.month();

        System.debug(' Subscription end year is ' + subsYear);
        System.debug(' Subscription end month is ' + subsMonth);
    }
    
    public void printOfferEndTime() {
        datetime dtnow = datetime.now();
        datetime offerEndTime = dtnow.addHours(51);
        System.debug('Offer will end on: ' + offerEndTime);

        date offerEndDate = offerEndTime.date();
        System.debug(' Offer end date is ' + offerEndDate);
    }
    public integer calculateDaysRemaining(date dt1, date dt2){

    date produce = date.today();
    date expiration = produce.addDays(365);
    integer remaining = produce.daysBetween(expiration);
    System.debug(' Days remaining until expiration = '+remaining);
    return remaining;
    }
}