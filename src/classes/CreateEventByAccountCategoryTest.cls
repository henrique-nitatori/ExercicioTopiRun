/**
* @author Henrique Nitatori - Topi
*/
@isTest
public class CreateEventByAccountCategoryTest {
    @isTest
    static void givenCreateEventWhenAccountCategoryPremiumAndAnnualRevenueAboveThanAMillionThenExpectedEventObject() {
       Event event = new CreateEventByAccountCategory( AccountFixeFactory.newAccount('Henrique', 150000000, 'Premium') )
            .createEvent();
       DateTime accountDateCreated = DateTime.now();

        System.assert(event != null);
        System.assertEquals(accountDateCreated.addDays(1), event.StartDateTime);
        System.assertEquals(accountDateCreated.addDays(1).addHours(1), event.EndDateTime);
    }
    @isTest
    static void givenCreateEventWhenAccountCategoryPremiumAndAnnualRevenueLessThanAMillionThenExpectedNullEventObject() {
       Event event = new CreateEventByAccountCategory( AccountFixeFactory.newAccount('Henrique', 1000000, 'Premium') )
            .createEvent();

        System.assert(event == null);
    }
    @isTest
    static void givenCreateEventWhenAccountCategoryStandardThenExpectedNullEventObject() {
       Event event = new CreateEventByAccountCategory( AccountFixeFactory.newAccount('Henrique', 1000000, 'Standard') )
            .createEvent();

        System.assert(event == null);
    }
    @isTest
    static void givenCreateEventWhenInvalidAccountCategoryThenExpectedNullEventObject() {
       Event event = new CreateEventByAccountCategory( AccountFixeFactory.newAccount('Henrique', 1000000, 'Invalid') )
            .createEvent();

        System.assert(event == null);
    }
}