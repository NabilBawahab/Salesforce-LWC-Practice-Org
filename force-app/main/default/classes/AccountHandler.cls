public class AccountHandler {
  public static Account insertNewAccount(String parameter) {
    try {
      Account acct = new Account(Name = parameter);

      insert acct;
      System.debug(acct);
      return acct;
    } catch (DmlException error) {
      System.debug(error.getMessage());
      return null;
    }
  }
}