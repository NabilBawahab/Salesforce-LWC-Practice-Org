public with sharing class ContactSearch {
  public static List<Contact> searchForContacts(
    String parameter1,
    String parameter2
  ) {
    Contact[] filteredContact = [
      SELECT Id, Name
      FROM Contact
      WHERE LastName = :parameter1 AND MailingPostalCode = :parameter2
    ];
    System.debug(filteredContact);
    return filteredContact;
  }
}