public with sharing class CustomContactNotification {
  public static void notifyUsers(
    Set<String> recipientsIds,
    Integer recordCount
  ) {
    // Get ID for the custom notificationtype in setup
    CustomNotificationType notificationType = [
      SELECT Id, DeveloperName
      FROM CustomNotificationType
      WHERE DeveloperName = 'New_Contact_Notification'
    ];

    // Create new custom notification
    Messaging.CustomNotification notification = new Messaging.CustomNotification();
    notification.setTitle('Trailhead Trigger Tutorial');
    notification.setBody(recordCount + ' contact(s) were inserted.');

    // Set the notification type and target

    notification.setNotificationTypeId(notificationType.Id);
    notification.setTargetId('000000000000000AAA');

    //Send the notification

    try {
      notification.send(recipientsIds);
      System.debug('Custom notification sent successfully');
    } catch (Exception error) {
      System.debug('Problem sending notification ' + error.getMessage());
    }
  }
}