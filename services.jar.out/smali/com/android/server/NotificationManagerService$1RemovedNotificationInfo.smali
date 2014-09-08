.class Lcom/android/server/NotificationManagerService$1RemovedNotificationInfo;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->cancelAllNotificationsInt(Ljava/lang/String;IIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RemovedNotificationInfo"
.end annotation


# instance fields
.field public id:I

.field public pkg:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "_id"
    .parameter "_pkg"

    .prologue
    .line 1321
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$1RemovedNotificationInfo;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1322
    iput p2, p0, Lcom/android/server/NotificationManagerService$1RemovedNotificationInfo;->id:I

    .line 1323
    iput-object p3, p0, Lcom/android/server/NotificationManagerService$1RemovedNotificationInfo;->pkg:Ljava/lang/String;

    .line 1324
    return-void
.end method
