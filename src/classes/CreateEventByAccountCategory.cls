/**
* @author Henrique Nitatori - Topi
*/
public class CreateEventByAccountCategory {
    Account account;
    PresentationSchedule presentationSchedule;

    public CreateEventByAccountCategory(Account account) {
        this.account = account;
        this.presentationSchedule = new PresentationSchedule();
    }

    public Event createEvent() {
        switch on account.category__c {
            when 'Premium' {
                Event event;
                if(account.annualRevenue > 100000000) {
                    event = presentationSchedule.schedule( new PremiumCategoryAboveThanAMillion( account ) );
                }
                if(account.annualRevenue < 100000000) {
                    event = presentationSchedule.schedule( new PremiumCategoryLessThanAMillion( account ) );
                }
                return event;
            }
            when 'Standard' {
                return presentationSchedule.schedule( new StandardCategory( account ) );
            }
            when else {
                return null;
            }
        }
    }

}