/**
* @author Henrique Nitatori - Topi
*/
public class StandardCategory implements AccountCategory {
    Account account;

    public StandardCategory(Account account) {
        this.account = account;
    }


    public Event verify() {
        return null;
    }
}