.class Lcom/android/server/LocationManagerService$HTCLocationHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HTCLocationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2373
    iput-object p1, p0, Lcom/android/server/LocationManagerService$HTCLocationHandler;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2373
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService$HTCLocationHandler;-><init>(Lcom/android/server/LocationManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    .line 2379
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 2380
    iget-object v3, p0, Lcom/android/server/LocationManagerService$HTCLocationHandler;->this$0:Lcom/android/server/LocationManagerService;

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "htctelephony"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/HtcTelephonyManager;

    .line 2381
    .local v2, htctm:Lcom/htc/service/HtcTelephonyManager;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2383
    .local v0, bundle:Landroid/os/Bundle;
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    .line 2385
    const-string v3, "gps"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2386
    if-eqz v2, :cond_1

    .line 2388
    const-string v3, "SetGpsOneMode"

    invoke-virtual {v2, v3, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2389
    const-string v3, "LocationManagerService"

    const-string v4, " SetGpsOneMode: bundle.putInt( LocationManager.GPS_PROVIDER,1);"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2411
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #htctm:Lcom/htc/service/HtcTelephonyManager;
    :cond_0
    :goto_0
    return-void

    .line 2392
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #htctm:Lcom/htc/service/HtcTelephonyManager;
    :cond_1
    const-string v3, "LocationManagerService"

    const-string v4, "htctm is null !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2406
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #htctm:Lcom/htc/service/HtcTelephonyManager;
    :catch_0
    move-exception v1

    .line 2408
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "Exception in HTCLocationHandler.handleMessage:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2394
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #bundle:Landroid/os/Bundle;
    .restart local v2       #htctm:Lcom/htc/service/HtcTelephonyManager;
    :cond_2
    :try_start_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v5, :cond_0

    .line 2395
    const-string v3, "gps"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2396
    if-eqz v2, :cond_3

    .line 2398
    const-string v3, "SetGpsOneMode"

    invoke-virtual {v2, v3, v0}, Lcom/htc/service/HtcTelephonyManager;->generalSetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2399
    const-string v3, "LocationManagerService"

    const-string v4, "SetGpsOneMode: bundle.putInt(LocationManager.GPS_PROVIDER,0);"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2402
    :cond_3
    const-string v3, "LocationManagerService"

    const-string v4, "htctm is null !!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
