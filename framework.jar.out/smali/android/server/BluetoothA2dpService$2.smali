.class Landroid/server/BluetoothA2dpService$2;
.super Landroid/os/Handler;
.source "BluetoothA2dpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothA2dpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothA2dpService;


# direct methods
.method constructor <init>(Landroid/server/BluetoothA2dpService;)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput-object p1, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 504
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 577
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 506
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 509
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mBluetoothService:Landroid/server/BluetoothService;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$900(Landroid/server/BluetoothA2dpService;)Landroid/server/BluetoothService;

    move-result-object v4

    invoke-virtual {v4}, Landroid/server/BluetoothService;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothA2dpService;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v5, 0x4

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-virtual {v4, v5}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 516
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Auto-connecting A2DP to sink "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/server/BluetoothA2dpService;->log(Ljava/lang/String;)V
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1700(Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    invoke-virtual {v4, v0}, Landroid/server/BluetoothA2dpService;->connectSinkInternal(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_0

    .line 521
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :pswitch_2
    const-string v4, "BluetoothA2dpService"

    const-string v5, "RESUME_PHONE_STATE"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static {v4, v7}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    .line 527
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "A2dpSuspended=false"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 528
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #setter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v4, v6}, Landroid/server/BluetoothA2dpService;->access$1402(Landroid/server/BluetoothA2dpService;Z)Z

    .line 529
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    const/4 v5, 0x2

    new-array v5, v5, [I

    fill-array-data v5, :array_1

    invoke-virtual {v4, v5}, Landroid/server/BluetoothA2dpService;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v3

    .line 532
    .local v3, sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_0

    .line 539
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 540
    .local v2, sink:Landroid/bluetooth/BluetoothDevice;
    const-string v4, "590Plantronics"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "Jabra Halo"

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 542
    :cond_2
    const-string v4, "BluetoothA2dpService"

    const-string v5, "Send mute tone to trigger AVDTP start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Landroid/server/BluetoothA2dpService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    invoke-virtual {p0, v4, v5, v6}, Landroid/server/BluetoothA2dpService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 548
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #sink:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #sinks:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :pswitch_3
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    goto/16 :goto_0

    .line 551
    :pswitch_4
    const-string v4, "BluetoothA2dpService"

    const-string v5, "RESUME_AVRCP"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #calls: Landroid/server/BluetoothA2dpService;->setAvrcpPassThroughInternal(Z)V
    invoke-static {v4, v7}, Landroid/server/BluetoothA2dpService;->access$500(Landroid/server/BluetoothA2dpService;Z)V

    goto/16 :goto_0

    .line 555
    :pswitch_5
    const-string v4, "BluetoothA2dpService"

    const-string v5, "RESUME_MIXER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 557
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "A2dpSuspended=false"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 561
    :pswitch_6
    const-string v4, "BluetoothA2dpService"

    const-string v5, "SUSPEND_MIXER"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v4

    const-string v5, "A2dpSuspended=true"

    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 566
    :pswitch_7
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioDevices:Ljava/util/HashMap;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$600(Landroid/server/BluetoothA2dpService;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isNaviEn:Z
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1600(Landroid/server/BluetoothA2dpService;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 567
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->isInCall:Z
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1400(Landroid/server/BluetoothA2dpService;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 568
    iget-object v4, p0, Landroid/server/BluetoothA2dpService$2;->this$0:Landroid/server/BluetoothA2dpService;

    #getter for: Landroid/server/BluetoothA2dpService;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v4}, Landroid/server/BluetoothA2dpService;->access$1500(Landroid/server/BluetoothA2dpService;)Landroid/media/AudioManager;

    move-result-object v4

    invoke-virtual {v4, v6, v5}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    .line 570
    :cond_3
    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Landroid/server/BluetoothA2dpService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x9c4

    invoke-virtual {p0, v4, v5, v6}, Landroid/server/BluetoothA2dpService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 572
    :cond_4
    const-string v4, "BluetoothA2dpService"

    const-string v5, "Exit NAVI_KP_AV_ON"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 509
    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 529
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
    .end array-data
.end method
