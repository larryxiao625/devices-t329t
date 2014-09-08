.class Lcom/android/server/PowerManagerService$13;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3541
    iput-object p1, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 3544
    iget-object v0, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 3545
    :try_start_0
    const-string v0, "PowerManagerService"

    const-string v2, "mTPEAlgorithmTimeoutTask: TPE algorithm. restore."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    iget-object v0, p0, Lcom/android/server/PowerManagerService$13;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7200()I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;IZ)V

    .line 3547
    monitor-exit v1

    .line 3548
    return-void

    .line 3547
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
