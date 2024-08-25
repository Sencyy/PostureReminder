#include <stdio.h>
#include <libnotify/notify.h>

int main(void) {
    const char NOTIFICATION_TITLE[] = "Posture Reminder";
    const char NOTIFICATION_MESSAGE[] = "This is a reminder to fix your posture!";

    notify_init(NOTIFICATION_TITLE);
    NotifyNotification * Notification = notify_notification_new(NOTIFICATION_TITLE, NOTIFICATION_MESSAGE, "dialog-information");

    notify_notification_show(Notification, NULL);

    g_object_unref(G_OBJECT(Notification));
    notify_uninit();

    return 0;

}
