.class final Lcom/htc/server/WirelessDisplayService$H;
.super Landroid/os/Handler;
.source "WirelessDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/WirelessDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/server/WirelessDisplayService;


# direct methods
.method constructor <init>(Lcom/htc/server/WirelessDisplayService;)V
    .locals 0
    .parameter

    .prologue
    .line 676
    iput-object p1, p0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 677
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 73
    .parameter "msg"

    .prologue
    .line 681
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v64, v0

    .line 682
    .local v64, type:I
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 683
    .local v10, arg1:I
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg2:I

    .line 684
    .local v11, arg2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v48

    .line 686
    .local v48, previousState:I
    sparse-switch v64, :sswitch_data_0

    .line 1634
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 688
    :sswitch_0
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_CHANGE_STATE previousState = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", state="

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, " err="

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    move/from16 v0, v48

    if-eq v10, v0, :cond_0

    .line 692
    const/16 v68, 0x8

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_1

    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v10, v0, :cond_1

    .line 694
    const-string v68, "WirelessDisplayService"

    const-string v69, "[WFDERR][2] Wait 90000 secs and dongle not found."

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 697
    :cond_1
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v10, v0, :cond_2

    .line 699
    const/16 v68, 0x33

    const/16 v69, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2, v11}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v32

    .line 700
    .local v32, msg2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 705
    .end local v32           #msg2:Landroid/os/Message;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v10, v11}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto :goto_0

    .line 708
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v68

    if-lez v68, :cond_4

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$310(Lcom/htc/server/WirelessDisplayService;)I

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v68

    if-nez v68, :cond_3

    .line 711
    const-string v68, "WirelessDisplayService"

    const-string v69, "wifi scan fail!"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_3
    const/16 v68, 0x11

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v41

    .line 713
    .local v41, msgWifiScan:Landroid/os/Message;
    const-wide/16 v68, 0x1770

    move-object/from16 v0, p0

    move-object/from16 v1, v41

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 715
    .end local v41           #msgWifiScan:Landroid/os/Message;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x3

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWifiScanCount:I
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$302(Lcom/htc/server/WirelessDisplayService;I)I

    goto/16 :goto_0

    .line 719
    :sswitch_2
    new-instance v47, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 720
    .local v47, notifyUserSwitch:Landroid/content/Intent;
    const-string v68, "visible"

    const/16 v69, 0x0

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 722
    const-string v68, "WirelessDisplayService"

    const-string v69, "Disable INTENT_WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 725
    .end local v47           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v67

    .line 726
    .local v67, wifiInfo:Landroid/net/wifi/WifiInfo;
    if-eqz v67, :cond_0

    .line 729
    invoke-virtual/range {v67 .. v67}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v23

    .line 730
    .local v23, ipAddress:I
    move/from16 v60, v23

    .line 731
    .local v60, temp:I
    const-string v68, "%d.%d.%d.%d"

    const/16 v69, 0x4

    move/from16 v0, v69

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v69, v0

    const/16 v70, 0x0

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0xff

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    aput-object v71, v69, v70

    const/16 v70, 0x1

    shr-int/lit8 v71, v23, 0x8

    move/from16 v0, v71

    and-int/lit16 v0, v0, 0xff

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    aput-object v71, v69, v70

    const/16 v70, 0x2

    shr-int/lit8 v71, v23, 0x10

    move/from16 v0, v71

    and-int/lit16 v0, v0, 0xff

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    aput-object v71, v69, v70

    const/16 v70, 0x3

    shr-int/lit8 v71, v23, 0x18

    move/from16 v0, v71

    and-int/lit16 v0, v0, 0xff

    move/from16 v71, v0

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v71

    aput-object v71, v69, v70

    invoke-static/range {v68 .. v69}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 736
    .local v24, ipStr:Ljava/lang/String;
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_GET_DEVICE_IP:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, "  "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$600()Ljava/util/regex/Pattern;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v28

    .line 738
    .local v28, matcher2:Ljava/util/regex/Matcher;
    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->find()Z

    move-result v68

    if-eqz v68, :cond_7

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v68

    const-string v69, "0.0.0.0"

    invoke-virtual/range {v68 .. v69}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v68

    if-nez v68, :cond_7

    .line 739
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Got the IP address"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v28 .. v28}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-nez v68, :cond_6

    .line 741
    new-instance v68, Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    const-string v71, "3655"

    invoke-direct/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService$WivuThread;-><init>(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 742
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->wivuInit()I

    move-result v68

    const/16 v69, -0x1

    move/from16 v0, v68

    move/from16 v1, v69

    if-ne v0, v1, :cond_5

    .line 743
    const-string v68, "WirelessDisplayService"

    const-string v69, "Something Wrong with netHD initialization Delete mWivuThread"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 759
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 747
    :cond_5
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_GET_DEVICE_IP: REQ_SET_MCAST_ROUTE, clearOldRoute = false"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 749
    .local v12, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0x1f

    const/16 v70, 0x191

    const/16 v71, -0x1

    invoke-virtual/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v54

    .line 750
    .local v54, setif:Landroid/os/Message;
    const-string v68, "interfaceRoute"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    move-object/from16 v0, v54

    invoke-virtual {v0, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 752
    invoke-virtual/range {v54 .. v54}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 756
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v54           #setif:Landroid/os/Message;
    :cond_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    const/16 v70, 0x0

    invoke-virtual/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    .line 757
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto :goto_1

    .line 760
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 761
    const/16 v68, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    .line 762
    .local v21, getIp:Landroid/os/Message;
    const-wide/16 v68, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 768
    .end local v21           #getIp:Landroid/os/Message;
    .end local v23           #ipAddress:I
    .end local v24           #ipStr:Ljava/lang/String;
    .end local v28           #matcher2:Ljava/util/regex/Matcher;
    .end local v60           #temp:I
    .end local v67           #wifiInfo:Landroid/net/wifi/WifiInfo;
    :sswitch_4
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_STOP_DIS"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v68, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1100(Lcom/htc/server/WirelessDisplayService;)Landroid/net/ConnectivityManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    .line 772
    .local v5, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v5, :cond_c

    .line 773
    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v68

    const/16 v69, 0x1

    move/from16 v0, v68

    move/from16 v1, v69

    if-ne v0, v1, :cond_a

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->setInterface(Ljava/lang/String;)V

    .line 775
    const-string v68, "WirelessDisplayService"

    const-string v69, "Wifi Connected, don\'t exit netHDencode"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :goto_2
    const/16 v68, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 789
    const/16 v68, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 790
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 791
    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v35

    .line 792
    .local v35, msgChangeState:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_8

    .line 796
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 797
    const-string v68, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->clearDongleCache()Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-eqz v68, :cond_9

    .line 802
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->notifyWHDMI()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1500(Lcom/htc/server/WirelessDisplayService;)V

    .line 804
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v68

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->clear()V

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x49

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1002(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 777
    .end local v35           #msgChangeState:Landroid/os/Message;
    :cond_a
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_b

    .line 778
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 780
    :cond_b
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 783
    :cond_c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_d

    .line 784
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 786
    :cond_d
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    goto/16 :goto_2

    .line 811
    .end local v5           #activeNetwork:Landroid/net/NetworkInfo;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->saveLimitedApInfo()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2000(Lcom/htc/server/WirelessDisplayService;)V

    .line 812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    .line 813
    new-instance v47, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.WIRELESS_NOTIFY_MIRROR_CONNECTED_SWITCH"

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 814
    .restart local v47       #notifyUserSwitch:Landroid/content/Intent;
    const-string v68, "visible"

    const/16 v69, 0x1

    move-object/from16 v0, v47

    move-object/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 815
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 816
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0xde

    const/16 v70, 0x0

    const/16 v71, 0x0

    invoke-virtual/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    .line 817
    .local v17, disableSwitchMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0xde

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 818
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const-wide/16 v69, 0x1388

    move-object/from16 v0, v68

    move-object/from16 v1, v17

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 820
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0x6f

    const/16 v70, 0x1

    const/16 v71, 0x0

    invoke-virtual/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v29

    .line 821
    .local v29, mirrorMsg:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0x6f

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 822
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const-wide/16 v69, 0x13ba

    move-object/from16 v0, v68

    move-object/from16 v1, v29

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 828
    .end local v17           #disableSwitchMsg:Landroid/os/Message;
    .end local v29           #mirrorMsg:Landroid/os/Message;
    .end local v47           #notifyUserSwitch:Landroid/content/Intent;
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2100(Lcom/htc/server/WirelessDisplayService;)Landroid/media/AudioManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v68

    if-eqz v68, :cond_e

    .line 829
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_TIMEOUT_STOP, But Music Keep Playing, Wait 2 min later"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v69, 0x4

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    .line 831
    .local v39, msgTimeOut:Landroid/os/Message;
    const-wide/32 v68, 0x1d4c0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 833
    .end local v39           #msgTimeOut:Landroid/os/Message;
    :cond_e
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_TIMEOUT_STOP"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/16 v68, 0x1f

    const/16 v69, 0x21

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v62

    .line 835
    .local v62, timeOutStop:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 840
    .end local v62           #timeOutStop:Landroid/os/Message;
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->fallBackFromAppPause()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2200(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 843
    :sswitch_8
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_STOP_TRANSMIT: transmit:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_0

    .line 845
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v10, v0, :cond_f

    .line 846
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 848
    :cond_f
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->setTransmit(Z)V

    goto/16 :goto_0

    .line 852
    :sswitch_9
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_TURN_OFF_CONCURRENT_HOTSPOT, getWifidisplayApEnabled: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, "Mirror State: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v68, 0x1

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->getWifidisplayApEnabled()Z

    move-result v68

    if-eqz v68, :cond_0

    .line 854
    new-instance v68, Lcom/htc/server/WirelessDisplayService$H$1;

    move-object/from16 v0, v68

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/htc/server/WirelessDisplayService$H$1;-><init>(Lcom/htc/server/WirelessDisplayService$H;)V

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$H$1;->start()V

    goto/16 :goto_0

    .line 869
    :sswitch_a
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_WIFI_DIS"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->stopWivuDiscovery()V

    goto/16 :goto_0

    .line 873
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-nez v68, :cond_0

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v69

    new-instance v70, Landroid/content/Intent;

    const-string v71, "com.htc.wifidisplay.IWfdService"

    invoke-direct/range {v70 .. v71}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v71

    const/16 v72, 0x1

    invoke-virtual/range {v69 .. v72}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 876
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Bind WHDMI WfdService = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 880
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-eqz v68, :cond_10

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigConnection:Landroid/content/ServiceConnection;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/ServiceConnection;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2402(Lcom/htc/server/WirelessDisplayService;Z)Z

    .line 883
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$2602(Lcom/htc/server/WirelessDisplayService;Landroid/os/IBinder;)Landroid/os/IBinder;

    .line 884
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Unbind WfdService = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIsBoundToAutoConfigService:Z
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2400(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_10
    const/16 v68, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 887
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 890
    :sswitch_d
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_RESET_WDS_USABLE_FLAG"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/16 v68, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 895
    :sswitch_e
    const-string v68, "WirelessDisplayService"

    const-string v69, "HANDLE_RESET_FINGERGESTURE_FLAG"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const-string v69, "HANDLE_RESET_FINGERGESTURE_FLAG"

    const/16 v70, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    goto/16 :goto_0

    .line 900
    :sswitch_f
    move v13, v10

    .line 901
    .local v13, configState:I
    const/16 v68, 0x3

    move/from16 v0, v68

    if-eq v10, v0, :cond_11

    const/16 v68, 0x4

    move/from16 v0, v68

    if-ne v10, v0, :cond_14

    .line 902
    :cond_11
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "receiver WfdServices Call back, "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    new-instance v30, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v30, mirrorResultIntent:Landroid/content/Intent;
    const/16 v68, 0x3

    move/from16 v0, v68

    if-ne v10, v0, :cond_13

    .line 905
    const-string v68, "RESULT"

    const-string v69, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    :cond_12
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_finishService()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2900(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 906
    :cond_13
    const/16 v68, 0x4

    move/from16 v0, v68

    if-ne v10, v0, :cond_12

    .line 907
    const-string v68, "RESULT"

    const-string v69, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto :goto_3

    .line 912
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    :cond_14
    const/16 v68, 0x5

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 913
    const/16 v68, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 923
    .end local v13           #configState:I
    :sswitch_10
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_WIFI_SCAN_RESULT_AVAILABLE, dongle scan = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v10, v0, :cond_15

    const/16 v68, 0x1

    :goto_4
    move-object/from16 v0, v69

    move/from16 v1, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->constructDongleInfoFromWifi(Z)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3000(Lcom/htc/server/WirelessDisplayService;Z)V

    .line 926
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateNotification()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$3100(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 924
    :cond_15
    const/16 v68, 0x0

    goto :goto_4

    .line 931
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    const-string v69, "wivu_res"

    invoke-virtual/range {v68 .. v69}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v58

    .line 932
    .local v58, status:Ljava/lang/String;
    const/16 v68, 0x3e

    move/from16 v0, v68

    if-ne v10, v0, :cond_18

    .line 934
    const-string v68, "WirelessDisplayService"

    move-object/from16 v0, v68

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_17

    .line 936
    const-string v68, "VALUE=1"

    move-object/from16 v0, v58

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v68

    if-eqz v68, :cond_16

    .line 937
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 938
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_0

    const/16 v68, 0x1

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x2

    const/16 v70, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 941
    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, -0x6

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v61

    .line 942
    .local v61, timeOut2:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const-wide/32 v69, 0x15f90

    move-object/from16 v0, v68

    move-object/from16 v1, v61

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 945
    .end local v61           #timeOut2:Landroid/os/Message;
    :cond_16
    const-string v68, "VALUE=0"

    move-object/from16 v0, v58

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 946
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 949
    :cond_17
    const/16 v68, -0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_0

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    const/16 v70, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 952
    :cond_18
    const/16 v68, 0x3f

    move/from16 v0, v68

    if-ne v10, v0, :cond_1b

    .line 954
    const-string v68, "WirelessDisplayService"

    move-object/from16 v0, v68

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_1a

    .line 956
    const-string v68, "VALUE=1"

    move-object/from16 v0, v58

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v68

    if-eqz v68, :cond_19

    .line 957
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 959
    :cond_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3300()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 960
    :cond_1a
    const/16 v68, -0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    const/16 v70, -0x5

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 963
    :cond_1b
    const/16 v68, 0x40

    move/from16 v0, v68

    if-ne v10, v0, :cond_1c

    .line 964
    const-string v68, "WirelessDisplayService"

    move-object/from16 v0, v68

    move-object/from16 v1, v58

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 965
    :cond_1c
    const/16 v68, 0x41

    move/from16 v0, v68

    if-eq v10, v0, :cond_0

    .line 967
    const/16 v68, 0x42

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 968
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_0

    .line 969
    move-object/from16 v63, v58

    .line 970
    .local v63, tosend:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v63

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 976
    .end local v58           #status:Ljava/lang/String;
    .end local v63           #tosend:Ljava/lang/String;
    :sswitch_12
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    const-string v69, "wivu_req"

    invoke-virtual/range {v68 .. v69}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 977
    .local v51, request:Ljava/lang/String;
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "WIVU_REQ:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", arg1 = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, " , arg2 = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    if-eqz v51, :cond_25

    const/16 v68, 0x16

    move/from16 v0, v68

    if-ne v10, v0, :cond_25

    .line 980
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x16

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 981
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 982
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3600()Ljava/util/regex/Pattern;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 983
    .local v27, matcher:Ljava/util/regex/Matcher;
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v68

    if-eqz v68, :cond_1d

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3702(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 985
    :cond_1d
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3800()Ljava/util/regex/Pattern;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 986
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v68

    if-eqz v68, :cond_1e

    .line 987
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3902(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 988
    :cond_1e
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4000()Ljava/util/regex/Pattern;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v27

    .line 989
    invoke-virtual/range {v27 .. v27}, Ljava/util/regex/Matcher;->find()Z

    move-result v68

    if-eqz v68, :cond_1f

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$4102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 991
    :cond_1f
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "IP = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", audioPort = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", videoPort = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mDongleIp:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$3700(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAudioPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$3900(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mVideoPort:Ljava/lang/String;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v71

    #calls: Lcom/htc/server/WirelessDisplayService;->setIPandPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_24

    const/16 v68, 0x2

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_20

    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_24

    .line 996
    :cond_20
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_22

    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_22

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v69

    monitor-enter v69

    .line 998
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v68

    if-eqz v68, :cond_21

    .line 999
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const/16 v70, 0x29

    const/16 v71, 0x2a

    const/16 v72, 0x2c

    move-object/from16 v0, v68

    move/from16 v1, v70

    move/from16 v2, v71

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v33

    .line 1000
    .local v33, msg3:Landroid/os/Message;
    const/16 v68, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1002
    const-wide/16 v70, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-wide/from16 v2, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1006
    .end local v33           #msg3:Landroid/os/Message;
    :goto_5
    monitor-exit v69

    goto/16 :goto_0

    :catchall_0
    move-exception v68

    monitor-exit v69
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v68

    .line 1004
    :cond_21
    :try_start_1
    const-string v68, "WirelessDisplayService"

    const-string v70, "Application wants to PAUSE so ignore WIVUSTART"

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 1007
    :cond_22
    const/16 v68, 0x2

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->callOnGoing:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4500(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-eqz v68, :cond_23

    .line 1012
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x3

    const/16 v70, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1013
    const/16 v68, 0x1

    const/16 v69, 0x9

    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v68

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x2

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1015
    const-string v68, "WirelessDisplayService"

    const-string v69, "IncomingCallReceiver during configuring set mAppCallScreen:2"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1017
    :cond_23
    const/16 v68, 0x33

    const/16 v69, 0x34

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v31

    .line 1019
    .local v31, msg1:Landroid/os/Message;
    const-wide/16 v68, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1025
    .end local v31           #msg1:Landroid/os/Message;
    :cond_24
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_0

    .line 1026
    const-string v68, "WirelessDisplayService"

    const-string v69, "Dongle wrong state: take it out"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1028
    const/16 v68, 0x1f

    const/16 v69, 0x21

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    .line 1029
    .local v26, makeSure:Landroid/os/Message;
    const-wide/16 v68, 0xa

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1032
    .end local v26           #makeSure:Landroid/os/Message;
    .end local v27           #matcher:Ljava/util/regex/Matcher;
    :cond_25
    const/16 v68, 0x17

    move/from16 v0, v68

    if-ne v10, v0, :cond_29

    .line 1034
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$3500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x17

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1035
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1036
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_26

    .line 1037
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1038
    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_26

    .line 1039
    const-string v68, "WirelessDisplayService"

    const-string v69, "Stop Initialized by Dongle, stop transmitting packets after timeout of 16sec"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v68, 0x6

    const/16 v69, -0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v59

    .line 1041
    .local v59, stopTrans:Landroid/os/Message;
    const-wide/16 v68, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1044
    .end local v59           #stopTrans:Landroid/os/Message;
    :cond_26
    const/16 v68, 0x1

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_27

    .line 1045
    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_28

    .line 1054
    const-string v68, "WirelessDisplayService"

    const-string v69, "Receive WIVUSTOP in APP_PAUSE State"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_27
    :goto_6
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$4600()Ljava/lang/Boolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_0

    .line 1066
    const-string v68, "WirelessDisplayService"

    const-string v69, "Switching the dongle"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1069
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v68

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4602(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto/16 :goto_0

    .line 1056
    :cond_28
    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v36

    .line 1057
    .local v36, msgChangeState1:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1060
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_6

    .line 1072
    .end local v36           #msgChangeState1:Landroid/os/Message;
    :cond_29
    const/16 v68, 0x18

    move/from16 v0, v68

    if-ne v10, v0, :cond_2a

    .line 1073
    const-string v68, "="

    move-object/from16 v0, v51

    move-object/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 1074
    .local v25, macs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v25

    #calls: Lcom/htc/server/WirelessDisplayService;->updateWivuList([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$4700(Lcom/htc/server/WirelessDisplayService;[Ljava/lang/String;)V

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_0

    const/16 v68, 0x8

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-interface/range {v68 .. v69}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1077
    const-string v68, "WirelessDisplayService"

    const-string v69, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->selectDongle(Ljava/lang/String;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1084
    .end local v25           #macs:[Ljava/lang/String;
    :cond_2a
    const/16 v68, 0x1b

    move/from16 v0, v68

    if-ne v10, v0, :cond_2b

    .line 1085
    move-object/from16 v6, v51

    .line 1086
    .local v6, addToList:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    #calls: Lcom/htc/server/WirelessDisplayService;->updteDongleInfo(Ljava/lang/String;)V
    invoke-static {v0, v6}, Lcom/htc/server/WirelessDisplayService;->access$3400(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_0

    const/16 v68, 0x8

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-interface/range {v68 .. v69}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1089
    const-string v68, "WirelessDisplayService"

    const-string v69, "Found the dongle: now remove the HANDLE_CHANGE_STATE"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1092
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x2

    const/16 v70, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1093
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1094
    const/16 v68, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1095
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$102(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1099
    .end local v6           #addToList:Ljava/lang/String;
    :cond_2b
    const/16 v68, 0x19

    move/from16 v0, v68

    if-ne v10, v0, :cond_2c

    .line 1100
    const-string v68, "WirelessDisplayService"

    const-string v69, "SWUPGRADE and send notification"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->updateFWUpgradeNotification()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4800(Lcom/htc/server/WirelessDisplayService;)V

    goto/16 :goto_0

    .line 1176
    :cond_2c
    const/16 v68, 0x1a

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 1177
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "RATE_FEEDBACK, rate: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    if-eqz v11, :cond_2d

    const/16 v68, 0x2

    move/from16 v0, v68

    if-ge v11, v0, :cond_2d

    .line 1179
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Current Interface"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", Mirror State:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mCurNetworkInterface:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1000(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWiFiInterface:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$800(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-virtual/range {v68 .. v69}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v68

    if-eqz v68, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorDisplayState:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$000(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v68

    const/16 v69, 0x3

    move/from16 v0, v68

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v16

    .line 1182
    .local v16, dfDongle:Lcom/htc/service/DongleInfo;
    if-eqz v16, :cond_0

    .line 1183
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "curDongle state:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v70, v0

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    move-object/from16 v0, v16

    iget v0, v0, Lcom/htc/service/DongleInfo;->status:I

    move/from16 v68, v0

    const/16 v69, 0x3

    move/from16 v0, v68

    move/from16 v1, v69

    if-ne v0, v1, :cond_0

    .line 1185
    const/16 v68, 0x72

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 1189
    .end local v16           #dfDongle:Lcom/htc/service/DongleInfo;
    :cond_2d
    if-eqz v11, :cond_2e

    .line 1190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v68

    if-eqz v68, :cond_0

    .line 1191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mRecorder:Landroid/media/MediaRecorder;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4900(Lcom/htc/server/WirelessDisplayService;)Landroid/media/MediaRecorder;

    move-result-object v68

    move-object/from16 v0, v68

    invoke-virtual {v0, v11}, Landroid/media/MediaRecorder;->changeVideoBitRate(I)V

    goto/16 :goto_0

    .line 1194
    :cond_2e
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Should be not here, dongle feedbake rate is "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1200
    .end local v51           #request:Ljava/lang/String;
    :sswitch_13
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_0

    .line 1202
    const/16 v68, 0x20

    move/from16 v0, v68

    if-ne v10, v0, :cond_2f

    .line 1203
    const-string v68, "WirelessDisplayService"

    const-string v69, "REQ_DISCOVERY"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestDiscover()V

    goto/16 :goto_0

    .line 1205
    :cond_2f
    const/16 v68, 0x21

    move/from16 v0, v68

    if-ne v10, v0, :cond_31

    .line 1207
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "REQ_PLUGGED:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v50, -0x1

    .line 1209
    .local v50, req:I
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_30

    .line 1210
    const/16 v68, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1211
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v50

    goto/16 :goto_0

    .line 1215
    :cond_30
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    move-result v50

    .line 1216
    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v37

    .line 1217
    .local v37, msgChangeState2:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1221
    .end local v37           #msgChangeState2:Landroid/os/Message;
    .end local v50           #req:I
    :cond_31
    const/16 v68, 0x22

    move/from16 v0, v68

    if-ne v10, v0, :cond_32

    .line 1223
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getDiscoveryStatus()I

    goto/16 :goto_0

    .line 1225
    :cond_32
    const/16 v68, 0x23

    move/from16 v0, v68

    if-ne v10, v0, :cond_33

    .line 1227
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->getPluggedStatus()I

    goto/16 :goto_0

    .line 1229
    :cond_33
    const/16 v68, 0x24

    move/from16 v0, v68

    if-ne v10, v0, :cond_35

    .line 1231
    const-string v68, "WirelessDisplayService"

    const-string v69, "REQ_STOP_DIS"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService$WivuThread;->stopThread()V

    .line 1233
    const/16 v68, 0x1f

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1234
    const/16 v68, 0x33

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1235
    const/16 v68, 0x29

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1236
    const/16 v68, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1238
    const/16 v68, 0x1

    const/16 v69, 0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v38

    .line 1239
    .local v38, msgChangeState3:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1243
    const/16 v68, 0x0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$702(Lcom/htc/server/WirelessDisplayService$WivuThread;)Lcom/htc/server/WirelessDisplayService$WivuThread;

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v68

    if-eqz v68, :cond_34

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1200(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1302(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1246
    const-string v68, "persist.sys.wfd.lastdongle"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->lastDongle:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->wivuList:Ljava/util/List;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1600(Lcom/htc/server/WirelessDisplayService;)Ljava/util/List;

    move-result-object v68

    invoke-interface/range {v68 .. v68}, Ljava/util/List;->clear()V

    .line 1250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mExceptions:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1800(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x49

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAppCallScreen:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1900(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto/16 :goto_0

    .line 1253
    .end local v38           #msgChangeState3:Landroid/os/Message;
    :cond_35
    const/16 v68, 0x25

    move/from16 v0, v68

    if-ne v10, v0, :cond_36

    .line 1254
    const-string v68, "WirelessDisplayService"

    const-string v69, "REQ_PEER_SELECT"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/16 v68, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1256
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    const-string v69, "dongle_staBssid"

    invoke-virtual/range {v68 .. v69}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 1257
    .local v55, staBssid2:Ljava/lang/String;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->selectPeer(Ljava/lang/String;)V

    .line 1258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v55

    #setter for: Lcom/htc/server/WirelessDisplayService;->curDongle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$1202(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1259
    .end local v55           #staBssid2:Ljava/lang/String;
    :cond_36
    const/16 v68, 0x27

    move/from16 v0, v68

    if-ne v10, v0, :cond_38

    .line 1260
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "REQ_SET_INTERFACE:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    const-string v69, "interface"

    invoke-virtual/range {v68 .. v69}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1262
    .local v22, ifname:Ljava/lang/String;
    const/16 v50, -0x1

    .line 1263
    .restart local v50       #req:I
    if-eqz v22, :cond_0

    .line 1264
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_37

    .line 1265
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    .line 1269
    :goto_7
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->changeInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1267
    :cond_37
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    goto :goto_7

    .line 1272
    .end local v22           #ifname:Ljava/lang/String;
    .end local v50           #req:I
    :cond_38
    const/16 v68, 0x28

    move/from16 v0, v68

    if-ne v10, v0, :cond_3a

    .line 1273
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "REQ_JOIN_GROUP:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v50, -0x1

    .line 1275
    .restart local v50       #req:I
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_39

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-nez v68, :cond_39

    .line 1276
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1277
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    move-result v50

    goto/16 :goto_0

    .line 1278
    :cond_39
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_0

    .line 1279
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$5000()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1280
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestJoin(Z)I

    goto/16 :goto_0

    .line 1283
    .end local v50           #req:I
    :cond_3a
    const/16 v68, 0x191

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 1284
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "REQ_SET_MCAST_ROUTE:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v68

    const-string v69, "interfaceRoute"

    invoke-virtual/range {v68 .. v69}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1286
    .restart local v22       #ifname:Ljava/lang/String;
    const/16 v50, -0x1

    .line 1287
    .restart local v50       #req:I
    if-eqz v22, :cond_0

    .line 1288
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_3b

    .line 1289
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x1

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    move-result v50

    goto/16 :goto_0

    .line 1291
    :cond_3b
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    move-object/from16 v0, v68

    move-object/from16 v1, v22

    move/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestSetMCastRoute(Ljava/lang/String;Z)I

    goto/16 :goto_0

    .line 1298
    .end local v22           #ifname:Ljava/lang/String;
    .end local v50           #req:I
    :sswitch_14
    const/16 v68, 0x34

    move/from16 v0, v68

    if-ne v10, v0, :cond_3e

    .line 1300
    const-string v68, "WirelessDisplayService"

    const-string v69, "MEDIA_START"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const/16 v68, 0x3

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_0

    .line 1306
    const/16 v56, -0x1

    .line 1307
    .local v56, star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v56

    .line 1308
    if-nez v56, :cond_3c

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x3

    const/16 v70, 0x0

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1310
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStart()Z

    goto/16 :goto_0

    .line 1313
    :cond_3c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_3d

    .line 1314
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1315
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    const/16 v70, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1317
    .end local v56           #star:I
    :cond_3e
    const/16 v68, 0x35

    move/from16 v0, v68

    if-ne v10, v0, :cond_40

    .line 1319
    const-string v68, "WirelessDisplayService"

    const-string v69, "MEDIA_STOP"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    const/16 v68, 0x4

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_3f

    .line 1325
    :cond_3f
    const/16 v56, -0x1

    .line 1326
    .restart local v56       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v56

    .line 1328
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->wivuSQoSStop()Z

    goto/16 :goto_0

    .line 1329
    .end local v56           #star:I
    :cond_40
    const/16 v68, 0x36

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 1330
    const-string v68, "WirelessDisplayService"

    const-string v69, "MEDIA_RESTART"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    const/16 v56, -0x1

    .line 1332
    .restart local v56       #star:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v69

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v56

    .line 1336
    const/16 v68, -0x1

    move/from16 v0, v56

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    .line 1337
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_41

    .line 1338
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1339
    :cond_41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    const/16 v70, -0x4

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static/range {v68 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1345
    .end local v56           #star:I
    :sswitch_15
    move/from16 v57, v48

    .line 1346
    .local v57, state:I
    const/16 v19, 0x0

    .line 1348
    .local v19, err:I
    const/16 v68, 0x1

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_0

    .line 1350
    const/16 v68, 0x2b

    move/from16 v0, v68

    if-ne v10, v0, :cond_45

    .line 1351
    const-string v68, "WirelessDisplayService"

    const-string v69, "MEDIA_PAUSE event"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    const/16 v68, 0x2c

    move/from16 v0, v68

    if-ne v11, v0, :cond_43

    .line 1353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1354
    .local v8, app:I
    if-nez v8, :cond_42

    .line 1355
    const/16 v57, 0x7

    .line 1365
    .end local v8           #app:I
    :cond_42
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move/from16 v1, v57

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    goto/16 :goto_0

    .line 1356
    :cond_43
    const/16 v68, 0x2d

    move/from16 v0, v68

    if-ne v11, v0, :cond_44

    .line 1357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1358
    const/16 v57, 0x4

    goto :goto_8

    .line 1359
    :cond_44
    const/16 v68, 0x2e

    move/from16 v0, v68

    if-ne v11, v0, :cond_42

    .line 1360
    const-string v68, "WirelessDisplayService"

    const-string v69, "MEDIA_PAUSE: CALL_PAUSE event"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->stopDisplayRecorder()I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5300(Lcom/htc/server/WirelessDisplayService;)I

    move-result v8

    .line 1362
    .restart local v8       #app:I
    if-nez v8, :cond_42

    .line 1363
    const/16 v57, 0x9

    goto :goto_8

    .line 1366
    .end local v8           #app:I
    :cond_45
    const/16 v68, 0x2a

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 1367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->synchronize_lock:Ljava/lang/Object;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4300(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Object;

    move-result-object v69

    monitor-enter v69

    .line 1368
    :try_start_2
    const-string v68, "WirelessDisplayService"

    new-instance v70, Ljava/lang/StringBuilder;

    invoke-direct/range {v70 .. v70}, Ljava/lang/StringBuilder;-><init>()V

    const-string v71, "MEDIA_RESUME event, App Resutest: "

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v70

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v71, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v71 .. v71}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v71

    invoke-virtual/range {v70 .. v71}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->app_req_status:Ljava/lang/Boolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$4400(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/Boolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v68

    if-nez v68, :cond_46

    .line 1370
    monitor-exit v69

    goto/16 :goto_0

    .line 1408
    :catchall_1
    move-exception v68

    monitor-exit v69
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v68

    .line 1372
    :cond_46
    const/16 v68, 0x2c

    move/from16 v0, v68

    if-ne v11, v0, :cond_4a

    .line 1373
    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_47

    .line 1374
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1375
    .local v9, app2:I
    if-nez v9, :cond_48

    .line 1376
    const/16 v57, 0x3

    .line 1407
    .end local v9           #app2:I
    :cond_47
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move/from16 v1, v57

    move/from16 v2, v19

    #calls: Lcom/htc/server/WirelessDisplayService;->setMirrorModeState(II)V
    invoke-static {v0, v1, v2}, Lcom/htc/server/WirelessDisplayService;->access$200(Lcom/htc/server/WirelessDisplayService;II)V

    .line 1408
    monitor-exit v69

    goto/16 :goto_0

    .line 1378
    .restart local v9       #app2:I
    :cond_48
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_49

    .line 1379
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v70, 0x0

    move-object/from16 v0, v68

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I

    .line 1380
    :cond_49
    const/16 v57, 0x1

    .line 1381
    const/16 v19, -0x4

    goto :goto_9

    .line 1384
    .end local v9           #app2:I
    :cond_4a
    const/16 v68, 0x2d

    move/from16 v0, v68

    if-ne v11, v0, :cond_4b

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->gotoPauseState()V
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5400(Lcom/htc/server/WirelessDisplayService;)V

    .line 1392
    const/16 v57, 0x3

    goto :goto_9

    .line 1393
    :cond_4b
    const/16 v68, 0x2e

    move/from16 v0, v68

    if-ne v11, v0, :cond_47

    .line 1394
    const-string v68, "WirelessDisplayService"

    const-string v70, "MEDIA_RESUME: CALL_PAUSE event"

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/16 v68, 0x9

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_47

    .line 1396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mIpAndPort:Ljava/lang/String;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5100(Lcom/htc/server/WirelessDisplayService;)Ljava/lang/String;

    move-result-object v70

    move-object/from16 v0, v68

    move-object/from16 v1, v70

    #calls: Lcom/htc/server/WirelessDisplayService;->startDisplayRecorder(Ljava/lang/String;)I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$5200(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)I

    move-result v9

    .line 1397
    .restart local v9       #app2:I
    if-nez v9, :cond_4c

    .line 1398
    const/16 v57, 0x3

    goto :goto_9

    .line 1400
    :cond_4c
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    if-eqz v68, :cond_4d

    .line 1401
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$700()Lcom/htc/server/WirelessDisplayService$WivuThread;

    move-result-object v68

    const/16 v70, 0x0

    move-object/from16 v0, v68

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$WivuThread;->requestPlugged(Z)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1402
    :cond_4d
    const/16 v57, 0x1

    .line 1403
    const/16 v19, -0x4

    goto/16 :goto_9

    .line 1426
    .end local v9           #app2:I
    .end local v19           #err:I
    .end local v57           #state:I
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->writeConcurrentAPMacAddress()Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5500(Lcom/htc/server/WirelessDisplayService;)Z

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    const-string v70, "/data/misc/wifidisplay.conf"

    #calls: Lcom/htc/server/WirelessDisplayService;->readConfigFile(Ljava/lang/String;)Ljava/lang/String;
    invoke-static/range {v69 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5700(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v69

    #setter for: Lcom/htc/server/WirelessDisplayService;->mAP_M_MacAddress:Ljava/lang/String;
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5602(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 1430
    :sswitch_17
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_PROCESS_WFDSERVICE, mWfdServiceRetryCount: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)I

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, ", arg:"

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v68

    if-nez v68, :cond_4e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5800(Lcom/htc/server/WirelessDisplayService;)I

    move-result v68

    if-lez v68, :cond_4e

    .line 1432
    const/16 v68, 0x70

    const/16 v69, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    invoke-virtual {v0, v1, v10, v2}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1433
    .local v40, msgUseWfdService:Landroid/os/Message;
    const-wide/16 v68, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1434
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "WfdService not ready, resent, type = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$5810(Lcom/htc/server/WirelessDisplayService;)I

    goto/16 :goto_0

    .line 1436
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mAutoConfigService:Landroid/os/IBinder;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$2600(Lcom/htc/server/WirelessDisplayService;)Landroid/os/IBinder;

    move-result-object v68

    if-eqz v68, :cond_50

    .line 1437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x5

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5802(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1438
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_4f

    .line 1439
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$2700()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1440
    const/16 v68, 0x13

    const/16 v69, 0x0

    const/16 v70, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v52

    .line 1441
    .local v52, resetWFD_Flag:Landroid/os/Message;
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    const-wide/32 v69, 0x249f0

    move-object/from16 v0, v68

    move-object/from16 v1, v52

    move-wide/from16 v2, v69

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1442
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Use WfdService, type = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_0

    .line 1445
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x3

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_setMode(I)V
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5900(Lcom/htc/server/WirelessDisplayService;I)V

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v69, v0

    invoke-virtual/range {v69 .. v69}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v69

    #calls: Lcom/htc/server/WirelessDisplayService;->binder_attemptToConfigure(Lcom/htc/service/DongleInfo;)V
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$6000(Lcom/htc/server/WirelessDisplayService;Lcom/htc/service/DongleInfo;)V

    goto/16 :goto_0

    .line 1458
    .end local v52           #resetWFD_Flag:Landroid/os/Message;
    :cond_4f
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Can\'t use WfdService, WfdService is processing ignore message, type = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1461
    :cond_50
    const-string v68, "WirelessDisplayService"

    const-string v69, "Can\'t use WfdService, WfdService bind false during 2 sec"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1465
    :sswitch_18
    move v4, v10

    .line 1466
    .local v4, absoluteDirection:I
    move/from16 v49, v11

    .line 1467
    .local v49, relativeDirection:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move/from16 v1, v49

    #calls: Lcom/htc/server/WirelessDisplayService;->mirrorOnOffDirection(II)I
    invoke-static {v0, v4, v1}, Lcom/htc/server/WirelessDisplayService;->access$6100(Lcom/htc/server/WirelessDisplayService;II)I

    move-result v20

    .line 1468
    .local v20, fingerIndicator:I
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HANDLE_FINGER_GESTURE_DIRECTION, fingerIndicator = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1470
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Landroid/net/wifi/WifiManager;->startDongleSingleCscan(I)Z

    .line 1471
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    move-object/from16 v0, v68

    move/from16 v1, v20

    #setter for: Lcom/htc/server/WirelessDisplayService;->tempFingerIndicator:I
    invoke-static {v0, v1}, Lcom/htc/server/WirelessDisplayService;->access$6302(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1472
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v68

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$900()Lcom/htc/server/WirelessDisplayService$H;

    move-result-object v69

    const/16 v70, 0x6f

    const/16 v71, 0x1

    move-object/from16 v0, v69

    move/from16 v1, v70

    move/from16 v2, v20

    move/from16 v3, v71

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v69

    const-wide/16 v70, 0x3e8

    invoke-virtual/range {v68 .. v71}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1475
    .end local v4           #absoluteDirection:I
    .end local v20           #fingerIndicator:I
    .end local v49           #relativeDirection:I
    :sswitch_19
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-nez v68, :cond_51

    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_51

    .line 1476
    const-string v68, "WirelessDisplayService"

    const-string v69, "ignore HANDLE_FINGER_GESTURE, due to already handle, it is error handling message"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1478
    :cond_51
    const/16 v68, 0x6f

    move-object/from16 v0, p0

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->removeMessages(I)V

    .line 1479
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6200()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1480
    const/16 v68, 0x3

    move/from16 v0, v68

    if-ne v10, v0, :cond_53

    .line 1481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x1

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->setFingerGestureEnable(Z)V

    .line 1482
    const/16 v68, 0x1

    move/from16 v0, v68

    new-array v14, v0, [Ljava/lang/Object;

    .line 1483
    .local v14, debug2:[Ljava/lang/Object;
    const/16 v68, 0x0

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "curMirrStatus: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v70, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v70 .. v70}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v70

    invoke-virtual/range {v70 .. v70}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v70

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    aput-object v69, v14, v68

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const-string v69, "HANDLE_FINGER_GESTURE, arg=3"

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    #calls: Lcom/htc/server/WirelessDisplayService;->addToHtcWDSrvHistory(Ljava/lang/String;[Ljava/lang/Object;)V
    invoke-static {v0, v1, v14}, Lcom/htc/server/WirelessDisplayService;->access$2800(Lcom/htc/server/WirelessDisplayService;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mMirrorOnOff:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$1700(Lcom/htc/server/WirelessDisplayService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_52

    .line 1486
    const-string v68, "WirelessDisplayService"

    const-string v69, "Stop mirror mode from finger gesture indicator."

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0x0

    invoke-virtual/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->mirrorModeStartStop(Z)Z

    goto/16 :goto_0

    .line 1489
    :cond_52
    const-string v68, "WirelessDisplayService"

    const-string v69, "Notify DLNA Service 3-finer down, mirror state is false"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    new-instance v45, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_OFF"

    move-object/from16 v0, v45

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1491
    .local v45, notifyDLNA_MirrrorOff:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1495
    .end local v14           #debug2:[Ljava/lang/Object;
    .end local v45           #notifyDLNA_MirrrorOff:Landroid/content/Intent;
    :cond_53
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v10, v0, :cond_0

    .line 1497
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_54

    .line 1498
    const-string v68, "WirelessDisplayService"

    const-string v69, "Pre Load DLNA Services"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    new-instance v69, Landroid/content/Intent;

    const-string v70, "com.htc.dlnainterface.IDLNAPluginService"

    invoke-direct/range {v69 .. v70}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v68 .. v69}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1506
    :cond_54
    :goto_a
    const/16 v68, 0x3

    move/from16 v0, v48

    move/from16 v1, v68

    if-eq v0, v1, :cond_55

    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_56

    .line 1507
    :cond_55
    new-instance v30, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1508
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v68, "RESULT"

    const-string v69, "SUCCESS"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1509
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1510
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "mirror mode status: "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    const-string v70, " ,ignore finger gesture, sendBroadcast Intent with SUCCESS "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    const/16 v68, 0x7

    move/from16 v0, v48

    move/from16 v1, v68

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-nez v68, :cond_0

    .line 1512
    const-string v68, "WirelessDisplayService"

    const-string v69, "Notify DLNA Service user want to mirror replace DLNA"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    new-instance v44, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.NOTIFY_DLNA_WIRELESS_DISPLAY_MIRROR_REPLACE"

    move-object/from16 v0, v44

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1514
    .local v44, notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v44

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1501
    .end local v30           #mirrorResultIntent:Landroid/content/Intent;
    .end local v44           #notifyDLNA_Mirror_Replace:Landroid/content/Intent;
    :catch_0
    move-exception v53

    .line 1502
    .local v53, se:Ljava/lang/SecurityException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "Pre Load DLNA Services occur SecurityException "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1517
    .end local v53           #se:Ljava/lang/SecurityException;
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #calls: Lcom/htc/server/WirelessDisplayService;->getEnvironmentDongleState()I
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6500(Lcom/htc/server/WirelessDisplayService;)I

    move-result v18

    .line 1518
    .local v18, environmentDongleState:I
    const-string v68, "WirelessDisplayService"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "Start mirror mode from finger gesture indicator, environmentDonleState = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    new-instance v43, Landroid/content/Intent;

    const-string v68, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_LIST"

    move-object/from16 v0, v43

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1520
    .local v43, notifyConfigerTool:Landroid/content/Intent;
    new-instance v42, Landroid/content/Intent;

    const-string v68, "com.htc.wifidisplay.CONFIGURE_MODE_NOTIFICATION_CONFIG"

    move-object/from16 v0, v42

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1521
    .local v42, notifyConfigToolToConfig:Landroid/content/Intent;
    new-instance v46, Landroid/content/Intent;

    const-string v68, "com.htc.wifidisplay.CONFIGURE_MODE_NORMAL"

    move-object/from16 v0, v46

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1522
    .local v46, notifyNormalConfigTool:Landroid/content/Intent;
    const/high16 v68, 0x1000

    move-object/from16 v0, v43

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1523
    const/high16 v68, 0x1000

    move-object/from16 v0, v42

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1524
    const/high16 v68, 0x1000

    move-object/from16 v0, v46

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1525
    new-instance v30, Landroid/content/Intent;

    const-string v68, "com.android.internal.app.intent.WIRELESS_DISPLAY_MIRROR_RESULT"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1526
    .restart local v30       #mirrorResultIntent:Landroid/content/Intent;
    const-string v68, "RESULT"

    const-string v69, "FAIL"

    move-object/from16 v0, v30

    move-object/from16 v1, v68

    move-object/from16 v2, v69

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$400(Lcom/htc/server/WirelessDisplayService;)Landroid/net/wifi/WifiManager;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v68

    if-nez v68, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-nez v68, :cond_58

    .line 1529
    const-string v68, "WirelessDisplayService"

    const-string v69, "FINGER GESTURE, WIFI DISABLED"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_57

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1534
    :cond_57
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 1535
    :catch_1
    move-exception v7

    .line 1536
    .local v7, ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyNormalConfigTool "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1540
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_58
    packed-switch v18, :pswitch_data_1

    .line 1615
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_5f

    .line 1616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1542
    :pswitch_2
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_59

    .line 1543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1546
    :cond_59
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_6
    .catch Landroid/content/ActivityNotFoundException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 1547
    :catch_2
    move-exception v7

    .line 1548
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1553
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->notSupportConcurrent:Z
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$6600(Lcom/htc/server/WirelessDisplayService;)Z

    move-result v68

    if-eqz v68, :cond_5a

    .line 1554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->getDefaultDongle()Lcom/htc/service/DongleInfo;

    move-result-object v15

    .line 1555
    .local v15, defaultDongle:Lcom/htc/service/DongleInfo;
    if-eqz v15, :cond_5a

    iget-boolean v0, v15, Lcom/htc/service/DongleInfo;->isDiscoveredByWivu:Z

    move/from16 v68, v0

    if-nez v68, :cond_5a

    .line 1557
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    .line 1558
    :catch_3
    move-exception v7

    .line 1559
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1565
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    .end local v15           #defaultDongle:Lcom/htc/service/DongleInfo;
    :cond_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    const/16 v69, 0xa

    #setter for: Lcom/htc/server/WirelessDisplayService;->mWfdServiceRetryCount:I
    invoke-static/range {v68 .. v69}, Lcom/htc/server/WirelessDisplayService;->access$5802(Lcom/htc/server/WirelessDisplayService;I)I

    .line 1569
    const/16 v68, 0xb

    const/16 v69, -0x1

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v34

    .line 1570
    .local v34, msgBindWfdService:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lcom/htc/server/WirelessDisplayService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1571
    const/16 v68, 0x70

    const/16 v69, 0x0

    const/16 v70, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v68

    move/from16 v2, v69

    move/from16 v3, v70

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->obtainMessage(III)Landroid/os/Message;

    move-result-object v40

    .line 1572
    .restart local v40       #msgUseWfdService:Landroid/os/Message;
    const-wide/16 v68, 0xc8

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-wide/from16 v2, v68

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/server/WirelessDisplayService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1579
    .end local v34           #msgBindWfdService:Landroid/os/Message;
    .end local v40           #msgUseWfdService:Landroid/os/Message;
    :pswitch_4
    const/16 v68, 0x1

    move/from16 v0, v68

    if-ne v11, v0, :cond_5b

    .line 1580
    const-string v68, "WirelessDisplayService"

    const-string v69, "Don\'t receive Wifi Scan, it\'s Timer trigger, trigger Configuration Tool"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1583
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    invoke-virtual/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->getunConfigDongleList()Ljava/util/List;

    move-result-object v66

    .line 1584
    .local v66, unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    invoke-interface/range {v66 .. v66}, Ljava/util/List;->size()I

    move-result v68

    if-lez v68, :cond_5d

    .line 1585
    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Lcom/htc/service/DongleInfo;

    if-eqz v68, :cond_5c

    .line 1586
    const/16 v68, 0x0

    move-object/from16 v0, v66

    move/from16 v1, v68

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Lcom/htc/service/DongleInfo;

    .line 1587
    .local v65, unConfigDongle:Lcom/htc/service/DongleInfo;
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 1588
    .restart local v12       #bundle:Landroid/os/Bundle;
    const-string v68, "DONGLE_MAC"

    move-object/from16 v0, v65

    iget-object v0, v0, Lcom/htc/service/DongleInfo;->bssid:Ljava/lang/String;

    move-object/from16 v69, v0

    move-object/from16 v0, v68

    move-object/from16 v1, v69

    invoke-virtual {v12, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1589
    move-object/from16 v0, v42

    invoke-virtual {v0, v12}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1594
    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v65           #unConfigDongle:Lcom/htc/service/DongleInfo;
    :goto_b
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Landroid/content/ActivityNotFoundException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 1595
    :catch_4
    move-exception v7

    .line 1596
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyConfigToolToConfig"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1591
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_5c
    const-string v68, "WirelessDisplayService"

    const-string v69, "unConfigDongleList.get(0) is null , should not be here"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1599
    :cond_5d
    const-string v68, "WirelessDisplayService"

    const-string v69, "unConfigDongleList = 0, should not be here"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1604
    .end local v66           #unConfigDongleList:Ljava/util/List;,"Ljava/util/List<Lcom/htc/service/DongleInfo;>;"
    :pswitch_5
    invoke-static {}, Lcom/htc/server/WirelessDisplayService;->access$6400()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v68

    invoke-virtual/range {v68 .. v68}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v68

    if-eqz v68, :cond_5e

    .line 1605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1608
    :cond_5e
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    .line 1609
    :catch_5
    move-exception v7

    .line 1610
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1619
    .end local v7           #ae:Landroid/content/ActivityNotFoundException;
    :cond_5f
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/htc/server/WirelessDisplayService$H;->this$0:Lcom/htc/server/WirelessDisplayService;

    move-object/from16 v68, v0

    #getter for: Lcom/htc/server/WirelessDisplayService;->mContext:Landroid/content/Context;
    invoke-static/range {v68 .. v68}, Lcom/htc/server/WirelessDisplayService;->access$500(Lcom/htc/server/WirelessDisplayService;)Landroid/content/Context;

    move-result-object v68

    move-object/from16 v0, v68

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_a
    .catch Landroid/content/ActivityNotFoundException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    .line 1620
    :catch_6
    move-exception v7

    .line 1621
    .restart local v7       #ae:Landroid/content/ActivityNotFoundException;
    const-string v68, "WirelessDisplayService"

    const-string v69, "ActivityNotFoundException, intent: notifyConfigerTool "

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 686
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_6
        0x5 -> :sswitch_a
        0x6 -> :sswitch_8
        0x9 -> :sswitch_10
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_f
        0xf -> :sswitch_16
        0x10 -> :sswitch_9
        0x11 -> :sswitch_1
        0x13 -> :sswitch_d
        0x14 -> :sswitch_7
        0x15 -> :sswitch_12
        0x1f -> :sswitch_13
        0x29 -> :sswitch_15
        0x33 -> :sswitch_14
        0x3d -> :sswitch_11
        0x6f -> :sswitch_19
        0x70 -> :sswitch_17
        0x71 -> :sswitch_18
        0x72 -> :sswitch_5
        0x73 -> :sswitch_e
        0xde -> :sswitch_2
    .end sparse-switch

    .line 1443
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1540
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
