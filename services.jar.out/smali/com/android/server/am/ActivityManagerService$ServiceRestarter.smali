.class Lcom/android/server/am/ActivityManagerService$ServiceRestarter;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceRestarter"
.end annotation


# instance fields
.field private mService:Lcom/android/server/am/ServiceRecord;

.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 11570
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11570
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 11582
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v2

    .line 11583
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 11584
    .local v0, sr:Lcom/android/server/am/ServiceRecord;
    if-nez v0, :cond_0

    .line 11585
    monitor-exit v2

    .line 11596
    :goto_0
    return-void

    .line 11587
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mDuringHibernate:Z

    if-eqz v1, :cond_2

    .line 11588
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->htcDebugFlag:Z

    if-eqz v1, :cond_1

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceRestarter: postAtTime "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11589
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->restarter:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x1388

    add-long/2addr v4, v6

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 11594
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #sr:Lcom/android/server/am/ServiceRecord;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11591
    .restart local v0       #sr:Lcom/android/server/am/ServiceRecord;
    :cond_2
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/ActivityManagerService;->htcDebugFlag:Z

    if-eqz v1, :cond_3

    const-string v1, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ServiceRestarter: performServiceRestartLocked "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11592
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->performServiceRestartLocked(Lcom/android/server/am/ServiceRecord;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method setService(Lcom/android/server/am/ServiceRecord;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 11574
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ServiceRestarter;->mService:Lcom/android/server/am/ServiceRecord;

    .line 11575
    return-void
.end method
