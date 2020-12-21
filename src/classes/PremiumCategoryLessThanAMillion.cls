/**
* @author Henrique Nitatori - Topi
*/
public class PremiumCategoryLessThanAMillion implements AccountCategory {

    Account account;

    public PremiumCategoryLessThanAMillion(Account account) {
        this.account = account;
    }

    public Event verify() {
        return null;
    }

}