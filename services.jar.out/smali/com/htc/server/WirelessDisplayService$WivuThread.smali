.class Lcom/htc/server/WirelessDisplayService$WivuThread;
.super Ljava/lang/Thread;
.source "WirelessDisplayService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WivuThread"
.end annotation


# instance fields
.field groupNumber:Ljava/lang/String;

.field nethdPid:I

.field networkInterface:Ljava/lang/String;

.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "nwif"
    .parameter "group"

    .prologue
    .line 4367
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4363
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 4368
    iput-object p2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    .line 4369
    iput-object p3, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    .line 4370
    return-void
.end method


# virtual methods
.method public changeInterface(Ljava/lang/String;)V
    .locals 5
    .parameter "ifname"

    .prologue
    .line 4470
    const/4 v1, -0x1

    .line 4471
    .local v1, ret:I
    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4472
    const-string v2, "WirelessDisplayService"

    const-string v3, "changeInterface: ifname is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4478
    :goto_0
    return-void

    .line 4474
    :cond_0
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInterface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4475
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4476
    .local v0, inter:Ljava/lang/String;
    const-string v2, "INTERFACE"

    invoke-static {v2, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public changeInterface(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "ifname"
    .parameter "staBssid"

    .prologue
    .line 4482
    const/4 v1, -0x1

    .line 4483
    .local v1, ret:I
    if-nez p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4484
    const-string v2, "WirelessDisplayService"

    const-string v3, "changeInterface: ifname is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4495
    :goto_0
    return-void

    .line 4486
    :cond_0
    const-string v2, "WirelessDisplayService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeInterface:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4488
    if-nez p2, :cond_1

    const-string v2, ""

    invoke-virtual {p2, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4489
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4493
    .local v0, inter:Ljava/lang/String;
    :goto_1
    const-string v2, "INTERFACE"

    invoke-static {v2, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    .line 4491
    .end local v0           #inter:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "BSSID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #inter:Ljava/lang/String;
    goto :goto_1
.end method

.method public getBssid()I
    .locals 3

    .prologue
    .line 4535
    const/4 v0, -0x1

    .line 4536
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getBSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4537
    const-string v1, "BSSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4538
    return v0
.end method

.method public getDiscoveryStatus()I
    .locals 3

    .prologue
    .line 4557
    const/4 v0, -0x1

    .line 4558
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getDiscoveryStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4559
    const-string v1, "DISCOVERY"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4560
    return v0
.end method

.method public getDongleInfo(Ljava/lang/String;)I
    .locals 4
    .parameter "Bssid"

    .prologue
    .line 4549
    const/4 v0, -0x1

    .line 4550
    .local v0, ret:I
    const-string v2, "WirelessDisplayService"

    const-string v3, "getDongleInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4551
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VALUE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4552
    .local v1, val:Ljava/lang/String;
    const-string v2, "PEER_GET_INFO"

    invoke-static {v2, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4553
    return v0
.end method

.method public getPID()V
    .locals 2

    .prologue
    .line 4571
    const-string v0, "PID"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 4572
    return-void
.end method

.method public getPluggedStatus()I
    .locals 3

    .prologue
    .line 4564
    const/4 v0, -0x1

    .line 4565
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getPluggedStatus"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4566
    const-string v1, "PLUGGED"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4567
    return v0
.end method

.method public getSSID()I
    .locals 3

    .prologue
    .line 4542
    const/4 v0, -0x1

    .line 4543
    .local v0, ret:I
    const-string v1, "WirelessDisplayService"

    const-string v2, "getSSID"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4544
    const-string v1, "SSID"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4545
    return v0
.end method

.method public getWivuInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4411
    iget-object v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    return-object v0
.end method

.method public requestDiscover()V
    .locals 4

    .prologue
    .line 4508
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu discovery command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DISCOVERY"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4509
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu plugged command, ret = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "PLUGGED"

    const-string v3, "VALUE=1 "

    invoke-static {v2, v3}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4510
    return-void
.end method

.method public requestJoin(Z)I
    .locals 4
    .parameter "join"

    .prologue
    .line 4525
    const/4 v0, -0x1

    .line 4526
    .local v0, ret:I
    if-eqz p1, :cond_0

    .line 4527
    const-string v1, "JOIN"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4531
    :goto_0
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu join command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4532
    return v0

    .line 4529
    :cond_0
    const-string v1, "JOIN"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public requestPlugged(Z)I
    .locals 4
    .parameter "plug"

    .prologue
    .line 4513
    const/4 v0, -0x1

    .line 4514
    .local v0, ret:I
    if-eqz p1, :cond_0

    .line 4515
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=1 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 4519
    :goto_0
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send wivu plugged command, value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4520
    return v0

    .line 4517
    :cond_0
    const-string v1, "PLUGGED"

    const-string v2, "VALUE=0 "

    invoke-static {v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public requestSetMCastRoute(Ljava/lang/String;Z)I
    .locals 10
    .parameter "ifname"
    .parameter "clearOldRoute"

    .prologue
    .line 4421
    const/4 v5, -0x1

    .line 4423
    .local v5, ret:I
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestSetMCastRoute, ifname = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", value = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4425
    if-nez p1, :cond_0

    const-string v7, ""

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4426
    const-string v7, "WirelessDisplayService"

    const-string v8, "requestSetMCastRoute: ifname is empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 4465
    .end local v5           #ret:I
    .local v6, ret:I
    :goto_0
    return v6

    .line 4429
    .end local v6           #ret:I
    .restart local v5       #ret:I
    :cond_0
    const-string v7, "WirelessDisplayService"

    const-string v8, "requestSetMCastRoute: ifname is NOT empty"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4431
    const/4 v2, 0x0

    .line 4433
    .local v2, destAddr:Landroid/net/LinkAddress;
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4434
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 4436
    .local v4, mNetd:Landroid/os/INetworkManagementService;
    new-instance v2, Landroid/net/LinkAddress;

    .end local v2           #destAddr:Landroid/net/LinkAddress;
    const-string v7, "224.0.0.0"

    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v7

    const/4 v8, 0x4

    invoke-direct {v2, v7, v8}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    .line 4437
    .restart local v2       #destAddr:Landroid/net/LinkAddress;
    new-instance v1, Landroid/net/RouteInfo;

    const/4 v7, 0x0

    invoke-direct {v1, v2, v7}, Landroid/net/RouteInfo;-><init>(Landroid/net/LinkAddress;Ljava/net/InetAddress;)V

    .line 4439
    .local v1, dest:Landroid/net/RouteInfo;
    if-eqz p2, :cond_1

    .line 4440
    const-string v7, "WirelessDisplayService"

    const-string v8, "Remove all Multicast Route for netHD/WiVu"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4441
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 4443
    :try_start_0
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4455
    :cond_1
    :goto_1
    const-string v7, "WirelessDisplayService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add Multicast Route for netHD/WiVu at Interface:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    :try_start_1
    invoke-interface {v4, p1, v1}, Landroid/os/INetworkManagementService;->addRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 4464
    :goto_2
    const/4 v5, 0x0

    move v6, v5

    .line 4465
    .end local v5           #ret:I
    .restart local v6       #ret:I
    goto :goto_0

    .line 4444
    .end local v6           #ret:I
    .restart local v5       #ret:I
    :catch_0
    move-exception v3

    .line 4445
    .local v3, e:Ljava/lang/Exception;
    const-string v7, "WirelessDisplayService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4449
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_2
    iget-object v7, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mSoftapInterface:Ljava/lang/String;
    invoke-static {v7}, Lcom/htc/server/WirelessDisplayService;->access$7100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v1}, Landroid/os/INetworkManagementService;->removeRoute(Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 4450
    :catch_1
    move-exception v3

    .line 4451
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "WirelessDisplayService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4459
    .end local v3           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 4460
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v7, "WirelessDisplayService"

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public run()V
    .locals 3

    .prologue
    .line 4375
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 4376
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4382
    :goto_0
    return-void

    .line 4380
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public selectPeer(Ljava/lang/String;)V
    .locals 4
    .parameter "staBssid"

    .prologue
    .line 4415
    const-string v1, "WirelessDisplayService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "selectPeer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4416
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VALUE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4417
    .local v0, value:Ljava/lang/String;
    const-string v1, "PEER_SELECT"

    invoke-static {v1, v0}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 4418
    return-void
.end method

.method public setTransmit(Z)V
    .locals 3
    .parameter "trans"

    .prologue
    .line 4498
    if-eqz p1, :cond_0

    .line 4499
    const-string v0, "LISTEN"

    const-string v1, "VALUE=1 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    :goto_0
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send wivu LISTEN command, transmit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4504
    return-void

    .line 4501
    :cond_0
    const-string v0, "LISTEN"

    const-string v1, "VALUE=0 "

    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->wivuIpcSend(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopThread()V
    .locals 2

    .prologue
    .line 4385
    const-string v0, "WirelessDisplayService"

    const-string v1, "stopThread()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    if-lez v0, :cond_0

    .line 4391
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuIpcExit()I

    .line 4392
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 4394
    :cond_0
    return-void
.end method

.method public transactEvent(Ljava/lang/String;)V
    .locals 12
    .parameter "event"

    .prologue
    .line 4575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 4577
    .local v1, b:Landroid/os/Bundle;
    if-eqz p1, :cond_8

    const-string v8, "STATUS"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 4578
    const/4 v0, -0x1

    .line 4579
    .local v0, arg2:I
    const-string v8, "SUCCEED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4580
    const/4 v0, 0x1

    .line 4582
    :cond_0
    const-string v8, "PID"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 4583
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4584
    .local v4, pids:[Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pids:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    array-length v8, v4

    const/4 v9, 0x3

    if-lt v8, v9, :cond_1

    .line 4586
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, v4, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4587
    const/4 v8, 0x2

    aget-object v8, v4, v8

    const-string v9, " "

    const-string v10, ""

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 4588
    .local v6, res:Ljava/lang/String;
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "res:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4589
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 4590
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "intpid:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    .end local v4           #pids:[Ljava/lang/String;
    .end local v6           #res:Ljava/lang/String;
    :cond_1
    const-string v8, "wivu_res"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4595
    const-string v8, "DISCOVERY"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 4596
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x3f

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4609
    .local v2, m:Landroid/os/Message;
    :goto_0
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4610
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 4682
    .end local v0           #arg2:I
    .end local v2           #m:Landroid/os/Message;
    :cond_2
    :goto_1
    return-void

    .line 4597
    .restart local v0       #arg2:I
    :cond_3
    const-string v8, "PLUGGED"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 4598
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x3e

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 4599
    .end local v2           #m:Landroid/os/Message;
    :cond_4
    const-string v8, "ROTATION"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 4600
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x40

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 4601
    .end local v2           #m:Landroid/os/Message;
    :cond_5
    const-string v8, "PEER_HRTBEAT"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 4602
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x41

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 4603
    .end local v2           #m:Landroid/os/Message;
    :cond_6
    const-string v8, "PEER_GET_INFO"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 4604
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/16 v10, 0x42

    invoke-virtual {v8, v9, v10, v0}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 4606
    .end local v2           #m:Landroid/os/Message;
    :cond_7
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transactEvent: unhandled event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4607
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x3d

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_0

    .line 4611
    .end local v0           #arg2:I
    .end local v2           #m:Landroid/os/Message;
    :cond_8
    if-eqz p1, :cond_2

    .line 4612
    const-string v8, "wivu_req"

    invoke-virtual {v1, v8, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4613
    const-string v8, "WIVUSTART"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 4614
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x16

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4679
    .restart local v2       #m:Landroid/os/Message;
    :goto_2
    invoke-virtual {v2, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 4680
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1

    .line 4615
    .end local v2           #m:Landroid/os/Message;
    :cond_9
    const-string v8, "WIVUSTOP"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 4616
    const-string v8, "BSSID"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    .line 4617
    const-string v8, "BSSID="

    invoke-virtual {p1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 4618
    .local v3, mWIVUSTOP_BSSID:Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 4619
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x17

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4625
    .end local v3           #mWIVUSTOP_BSSID:Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x17

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto :goto_2

    .line 4621
    .end local v2           #m:Landroid/os/Message;
    .restart local v3       #mWIVUSTOP_BSSID:Ljava/lang/String;
    :cond_b
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ignroe WIVUSTOP, due to curDongle is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v10}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4626
    .end local v3           #mWIVUSTOP_BSSID:Ljava/lang/String;
    :cond_c
    const-string v8, "PEER_LIST"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 4627
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x18

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 4628
    .end local v2           #m:Landroid/os/Message;
    :cond_d
    const-string v8, "PEER_ADD"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 4629
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x1b

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 4630
    .end local v2           #m:Landroid/os/Message;
    :cond_e
    const-string v8, "SWUPGRADE"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    .line 4631
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x19

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 4632
    .end local v2           #m:Landroid/os/Message;
    :cond_f
    const-string v8, "RATE_FEEDBACK"

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 4633
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4634
    .local v7, values:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 4635
    .local v5, rate:I
    array-length v8, v7

    const/4 v9, 0x1

    if-lt v8, v9, :cond_10

    .line 4636
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 4637
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Receive RATE_FEEDBACK from dongle, rate = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4639
    :cond_10
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/16 v10, 0x1a

    invoke-virtual {v8, v9, v10, v5}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4640
    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .end local v2           #m:Landroid/os/Message;
    .end local v5           #rate:I
    .end local v7           #values:[Ljava/lang/String;
    :cond_11
    const-string v8, "SWITCH_MOD="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_13

    sget-short v8, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x26

    if-ne v8, v9, :cond_13

    .line 4641
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4642
    .restart local v7       #values:[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v8, v7, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const v9, 0xf4240

    if-gt v8, v9, :cond_12

    .line 4665
    :cond_12
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 4666
    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 4667
    .end local v2           #m:Landroid/os/Message;
    .end local v7           #values:[Ljava/lang/String;
    :cond_13
    const-string v8, "WirelessDisplayService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "transactEvent: unhandled event="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    const-string v8, "BITRATE="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_15

    .line 4669
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4670
    .restart local v7       #values:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 4671
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    .line 4677
    .end local v7           #values:[Ljava/lang/String;
    :cond_14
    :goto_3
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v8

    const/16 v9, 0x15

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v8, v9, v10, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .restart local v2       #m:Landroid/os/Message;
    goto/16 :goto_2

    .line 4672
    .end local v2           #m:Landroid/os/Message;
    :cond_15
    const-string v8, "REQ_VIDEO_I_FRAME="

    invoke-virtual {p1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_14

    .line 4673
    const-string v8, "="

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 4674
    .restart local v7       #values:[Ljava/lang/String;
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    if-eqz v8, :cond_14

    .line 4675
    iget-object v8, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->this$0:Lcom/htc/server/WirelessDisplayService;

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static {v8}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/media/MediaRecorder;->requestVideoIFrame(I)V

    goto :goto_3
.end method

.method public wivuInit()I
    .locals 3

    .prologue
    .line 4397
    const-string v0, "WirelessDisplayService"

    const-string v1, "wivuInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4400
    :try_start_0
    const-string v0, "/system/bin/netHDencode"

    iget-object v1, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->networkInterface:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->groupNumber:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->wivuIpcInit(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    .line 4401
    const-string v0, "WirelessDisplayService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init wivu netHDencoder, pid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4407
    :goto_0
    iget v0, p0, Lcom/htc/server/WirelessDisplayService$WivuThread;->nethdPid:I

    return v0

    .line 4405
    :catch_0
    move-exception v0

    goto :goto_0
.end method
