.class Lcom/android/server/WifiService$AsyncServiceHandler;
.super Landroid/os/Handler;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/WifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    .line 466
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 467
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const-wide/16 v8, 0x3e8

    const/16 v7, 0x16

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 471
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 649
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WifiServicehandler.handleMessage ignoring msg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    :goto_0
    return-void

    .line 473
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_1

    .line 474
    const-string v3, "WifiService"

    const-string v4, "New client listening to asynchronous messages"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 477
    :cond_1
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection failure, error="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 482
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 483
    const-string v3, "WifiService"

    const-string v4, "Send failed, client connection lost"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :goto_1
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mClients:Ljava/util/List;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$100(Lcom/android/server/WifiService;)Ljava/util/List;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/util/AsyncChannel;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 485
    :cond_2
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client connection lost with reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 491
    :sswitch_2
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    .line 492
    .local v0, ac:Lcom/android/internal/util/AsyncChannel;
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v0, v3, p0, v4}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)V

    goto :goto_0

    .line 496
    .end local v0           #ac:Lcom/android/internal/util/AsyncChannel;
    :sswitch_3
    iget-object v6, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    move v3, v4

    :goto_2
    #setter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v6, v3}, Lcom/android/server/WifiService;->access$302(Lcom/android/server/WifiService;Z)Z

    .line 497
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-static {v3}, Lcom/android/server/WifiService;->access$408(Lcom/android/server/WifiService;)I

    .line 498
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableTrafficStatsPoll:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$300(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 500
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v3

    invoke-static {p0, v7, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 496
    goto :goto_2

    .line 506
    :sswitch_4
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v4}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 507
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #calls: Lcom/android/server/WifiService;->notifyOnDataActivity()V
    invoke-static {v3}, Lcom/android/server/WifiService;->access$500(Lcom/android/server/WifiService;)V

    .line 508
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mTrafficStatsPollToken:I
    invoke-static {v3}, Lcom/android/server/WifiService;->access$400(Lcom/android/server/WifiService;)I

    move-result v3

    invoke-static {p0, v7, v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3, v8, v9}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 514
    :sswitch_5
    const-string v3, "WifiService"

    const-string v4, "CMD_CONNECT_NETWORK enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x31

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x32

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x23f

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x240

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x241

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x242

    if-eq v3, v4, :cond_5

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x66

    if-eq v3, v4, :cond_5

    .line 525
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v3

    if-nez v3, :cond_4

    .line 526
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    const-string v6, "wireless_display"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/service/WirelessDisplayManager;

    #setter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v4, v3}, Lcom/android/server/WifiService;->access$602(Lcom/android/server/WifiService;Lcom/htc/service/WirelessDisplayManager;)Lcom/htc/service/WirelessDisplayManager;

    .line 528
    :cond_4
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 529
    const-string v3, "WifiService"

    const-string v4, "[WFD] Mirror Mode is ON, force to stop Mirror mode when connect to AP"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWDManager:Lcom/htc/service/WirelessDisplayManager;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$600(Lcom/android/server/WifiService;)Lcom/htc/service/WirelessDisplayManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 537
    :cond_5
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v3}, Lcom/android/server/WifiService;->getWifidisplayApEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 538
    const-string v3, "WifiService"

    const-string v4, "STA select Network to connect but hotspot is ON, turn off hotspot..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-static {v4}, Lcom/android/server/WifiService;->access$700(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/WifiService;->setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 544
    :cond_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v3, :cond_7

    .line 545
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 547
    :cond_7
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->connectNetwork(I)V

    goto/16 :goto_0

    .line 552
    :sswitch_6
    const-string v3, "WifiService"

    const-string v4, "CMD_SAVE_NETWORK enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_0

    .line 557
    :sswitch_7
    const-string v3, "WifiService"

    const-string v4, "CMD_FORGET_NETWORK enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->forgetNetwork(I)V

    goto/16 :goto_0

    .line 562
    :sswitch_8
    const-string v3, "WifiService"

    const-string v4, "CMD_START_WPS enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    invoke-virtual {v3}, Lcom/android/server/WifiService;->disconnect()V

    .line 566
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->stopWps(Landroid/os/Messenger;)V

    .line 568
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WpsInfo;

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiStateMachine;->startWps(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_0

    .line 573
    :sswitch_9
    const-string v3, "WifiService"

    const-string v4, "CMD_STOP_WPS enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->stopWps(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 582
    :sswitch_a
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WpsInfo;

    invoke-virtual {v4, v5, v3}, Landroid/net/wifi/WifiStateMachine;->startWpsRegistrar(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_0

    .line 587
    :sswitch_b
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiStateMachine;->stopWpsRegistrar(Landroid/os/Messenger;)V

    goto/16 :goto_0

    .line 592
    :sswitch_c
    const-string v3, "WifiService"

    const-string v4, "CMD_DISABLE_NETWORK enter"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget v5, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4, v5, v6}, Landroid/net/wifi/WifiStateMachine;->disableNetwork(Landroid/os/Messenger;II)V

    goto/16 :goto_0

    .line 598
    :sswitch_d
    iget-object v5, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v5, v4, v6, v3}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    goto/16 :goto_0

    .line 604
    :sswitch_e
    iget-object v4, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    #calls: Lcom/android/server/WifiService;->setWifiApEnabledBlockingMHS(ZILandroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v4, v5, v6, v3}, Lcom/android/server/WifiService;->access$900(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z

    .line 607
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableMhsFeature:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1000(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v3, v3, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    iget-object v3, v3, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    const/16 v4, -0x43

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/net/ConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I

    .line 609
    :cond_8
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #setter for: Lcom/android/server/WifiService;->mWifiApMhsPermission:Z
    invoke-static {v3, v5}, Lcom/android/server/WifiService;->access$1102(Lcom/android/server/WifiService;Z)Z

    goto/16 :goto_0

    .line 614
    :sswitch_f
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 615
    :cond_9
    const/16 v3, 0x2a

    invoke-static {p0, v3, v5, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/WifiService$AsyncServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 621
    :sswitch_10
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 622
    :cond_a
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiPassword:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1200(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 623
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_password"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_b

    .line 625
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->checkWifiApPassword()V

    .line 628
    .end local v1           #key:Ljava/lang/String;
    :cond_b
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mEnableImeiSsid:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1300(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 629
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$200(Lcom/android/server/WifiService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hotspot_ssid"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 630
    .local v2, ssid:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 631
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->checkWifiApSsid()V

    goto/16 :goto_0

    .line 638
    .end local v2           #ssid:Ljava/lang/String;
    :sswitch_11
    const-string v3, "WifiService"

    const-string v4, "[C+W] registration when screen on but call fail."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mCWRegisteredWhenScreenOff:Z
    invoke-static {v3}, Lcom/android/server/WifiService;->access$1400(Lcom/android/server/WifiService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v3

    if-nez v3, :cond_0

    .line 640
    const-string v3, "WifiService"

    const-string v4, "Trigger CW registration when screen on++"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->resetCwRetryCounter()V

    .line 642
    iget-object v3, p0, Lcom/android/server/WifiService$AsyncServiceHandler;->this$0:Lcom/android/server/WifiService;

    #getter for: Lcom/android/server/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;
    invoke-static {v3}, Lcom/android/server/WifiService;->access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateMachine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->tryToStartCWRegister()V

    .line 643
    const-string v3, "WifiService"

    const-string v4, "Trigger CW registration when screen on--"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 471
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_8
        0x5 -> :sswitch_c
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_b
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1f -> :sswitch_d
        0x20 -> :sswitch_e
        0x29 -> :sswitch_f
        0x2a -> :sswitch_10
        0x64 -> :sswitch_11
        0x11000 -> :sswitch_0
        0x11001 -> :sswitch_2
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
