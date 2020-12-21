/**
* @author Henrique Nitatori - Topi
*/

@isTest
public class EventRepositoryTest {
    @isTest
    static void givenCreateWhenCreateEventThenExpectedListOfEvent() {
        Account account = AccountFixeFactory.createAccount();
        DateTime accountDateCreated = DateTime.now();

        Event event = EventFixeFactory.newEvent(account, accountDateCreated.addDays(1), accountDateCreated.addDays(1).addHours(1));

        List<Event> events =  new EventRepository().create(new List<Event>{ event });

        System.assertEquals(1, events.size());
        System.assertEquals(accountDateCreated.addDays(1), event.StartDateTime);
        System.assertEquals(accountDateCreated.addDays(1).addHours(1), event.EndDateTime);
    }
    
}