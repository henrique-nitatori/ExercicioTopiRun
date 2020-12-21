/**
* @author Henrique Nitatori - Topi
*/
trigger Account on Account (before insert, after insert) {

    new AccountTH().run();

}