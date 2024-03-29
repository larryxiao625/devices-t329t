.class Lcom/android/server/MountService$QuickbootBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QuickbootBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method private constructor <init>(Lcom/android/server/MountService;)V
    .locals 0
    .parameter

    .prologue
    .line 2567
    iput-object p1, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MountService;Lcom/android/server/MountService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2567
    invoke-direct {p0, p1}, Lcom/android/server/MountService$QuickbootBroadcastReceiver;-><init>(Lcom/android/server/MountService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 2570
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2683
    :goto_0
    return-void

    .line 2574
    :cond_0
    :try_start_0
    iget-object v10, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static {v10}, Lcom/android/server/MountService;->access$2400(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v10

    const-string v11, "volume list"

    const/16 v12, 0x6e

    invoke-virtual {v10, v11, v12}, Lcom/android/server/NativeDaemonConnector;->doListCommand(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v8

    .line 2576
    .local v8, vols:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v9, v0, v2

    .line 2577
    .local v9, volstr:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2579
    .local v7, tok:[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v4, v7, v10

    .line 2580
    .local v4, path:Ljava/lang/String;
    const-string v6, "removed"

    .line 2582
    .local v6, state:Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2583
    .local v5, st:I
    if-nez v5, :cond_2

    .line 2584
    const-string v6, "removed"

    .line 2597
    :goto_2
    if-eqz v6, :cond_1

    .line 2599
    iget-object v10, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v4, v6}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2585
    :cond_2
    const/4 v10, 0x1

    if-ne v5, v10, :cond_3

    .line 2586
    const-string v6, "unmounted"

    goto :goto_2

    .line 2587
    :cond_3
    const/4 v10, 0x4

    if-ne v5, v10, :cond_5

    .line 2588
    const-string v6, "mounted"

    .line 2589
    const-string v10, "MountService"

    const-string v11, "Media already mounted on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2602
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 2603
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "MountService"

    const-string v11, "Error processing initial volume state"

    invoke-static {v10, v11, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2604
    iget-object v10, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    iget-object v11, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    #getter for: Lcom/android/server/MountService;->mExternalStoragePath:Ljava/lang/String;
    invoke-static {v11}, Lcom/android/server/MountService;->access$2700(Lcom/android/server/MountService;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "removed"

    #calls: Lcom/android/server/MountService;->updatePublicVolumeState(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v10, v11, v12}, Lcom/android/server/MountService;->access$2600(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;)V

    .line 2612
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    iget-object v10, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x1

    #setter for: Lcom/android/server/MountService;->mReady:Z
    invoke-static {v10, v11}, Lcom/android/server/MountService;->access$2902(Lcom/android/server/MountService;Z)Z

    .line 2618
    const-string v10, "simulator"

    const-string v11, "ro.product.device"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2619
    iget-object v10, p0, Lcom/android/server/MountService$QuickbootBroadcastReceiver;->this$0:Lcom/android/server/MountService;

    const/4 v11, 0x0

    const-string v12, "/sdcard"

    const/4 v13, 0x0

    const/4 v14, 0x4

    #calls: Lcom/android/server/MountService;->notifyVolumeStateChange(Ljava/lang/String;Ljava/lang/String;II)V
    invoke-static {v10, v11, v12, v13, v14}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 2590
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v4       #path:Ljava/lang/String;
    .restart local v5       #st:I
    .restart local v6       #state:Ljava/lang/String;
    .restart local v7       #tok:[Ljava/lang/String;
    .restart local v8       #vols:[Ljava/lang/String;
    .restart local v9       #volstr:Ljava/lang/String;
    :cond_5
    const/4 v10, 0x7

    if-ne v5, v10, :cond_6

    .line 2591
    :try_start_1
    const-string v6, "shared"

    .line 2592
    const-string v10, "MountService"

    const-string v11, "Media shared on daemon connection"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2594
    :cond_6
    new-instance v10, Ljava/lang/Exception;

    const-string v11, "Unexpected state %d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2623
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #path:Ljava/lang/String;
    .end local v5           #st:I
    .end local v6           #state:Ljava/lang/String;
    .end local v7           #tok:[Ljava/lang/String;
    .end local v8           #vols:[Ljava/lang/String;
    .end local v9           #volstr:Ljava/lang/String;
    :cond_7
    new-instance v10, Lcom/android/server/MountService$QuickbootBroadcastReceiver$1;

    invoke-direct {v10, p0}, Lcom/android/server/MountService$QuickbootBroadcastReceiver$1;-><init>(Lcom/android/server/MountService$QuickbootBroadcastReceiver;)V

    invoke-virtual {v10}, Lcom/android/server/MountService$QuickbootBroadcastReceiver$1;->start()V

    goto/16 :goto_0
.end method
