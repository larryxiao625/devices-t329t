.class Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;
.super Landroid/os/Handler;
.source "WifiP2pManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/p2p/WifiP2pManager$Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 383
    iput-object p1, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 384
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 385
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "message"

    .prologue
    .line 389
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v7, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->getListener(I)Ljava/lang/Object;

    move-result-object v2

    .line 390
    .local v2, listener:Ljava/lang/Object;
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 449
    const-string v6, "WifiP2pManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignored "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    .end local v2           #listener:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_0
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 393
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    #getter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v6}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$000(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    move-result-object v6

    invoke-interface {v6}, Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;->onChannelDisconnected()V

    .line 394
    iget-object v6, p0, Landroid/net/wifi/p2p/WifiP2pManager$Channel$P2pHandler;->this$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v7, 0x0

    #setter for: Landroid/net/wifi/p2p/WifiP2pManager$Channel;->mChannelListener:Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
    invoke-static {v6, v7}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->access$002(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;

    goto :goto_0

    .line 404
    :sswitch_1
    if-eqz v2, :cond_0

    .line 405
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v2           #listener:Ljava/lang/Object;
    iget v6, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v6}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onFailure(I)V

    goto :goto_0

    .line 415
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_2
    if-eqz v2, :cond_0

    .line 416
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2}, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;->onSuccess()V

    goto :goto_0

    .line 420
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 421
    .local v3, peers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    if-eqz v2, :cond_0

    .line 422
    if-eqz v3, :cond_1

    const-string v6, "WifiP2pManager"

    const-string v7, "listener.onPeersAvailable(peers) enter"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_1
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;->onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    .line 424
    const-string v6, "WifiP2pManager"

    const-string v7, "listener.onPeersAvailable(peers) leave"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 428
    .end local v3           #peers:Landroid/net/wifi/p2p/WifiP2pDeviceList;
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    .line 429
    .local v0, config:Landroid/net/wifi/p2p/WifiP2pConfig;
    const-string v6, "WifiP2pManager"

    const-string v7, "Custom Command Response received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 431
    .local v4, stringResp:Ljava/lang/String;
    const-string v6, "WifiP2pManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Custom Command Response received"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    if-eqz v2, :cond_0

    .line 433
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2, v4}, Landroid/net/wifi/p2p/WifiP2pManager$StringResponseListener;->onResponseAvailable(Ljava/lang/String;)V

    goto :goto_0

    .line 437
    .end local v0           #config:Landroid/net/wifi/p2p/WifiP2pConfig;
    .end local v4           #stringResp:Ljava/lang/String;
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 438
    .local v5, wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    if-eqz v2, :cond_0

    .line 439
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2, v5}, Landroid/net/wifi/p2p/WifiP2pManager$ConnectionInfoListener;->onConnectionInfoAvailable(Landroid/net/wifi/p2p/WifiP2pInfo;)V

    goto :goto_0

    .line 443
    .end local v5           #wifiP2pInfo:Landroid/net/wifi/p2p/WifiP2pInfo;
    .restart local v2       #listener:Ljava/lang/Object;
    :sswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 444
    .local v1, group:Landroid/net/wifi/p2p/WifiP2pGroup;
    if-eqz v2, :cond_0

    .line 445
    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;

    .end local v2           #listener:Ljava/lang/Object;
    invoke-interface {v2, v1}, Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;->onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V

    goto/16 :goto_0

    .line 390
    :sswitch_data_0
    .sparse-switch
        0x11004 -> :sswitch_0
        0x22008 -> :sswitch_1
        0x22009 -> :sswitch_2
        0x2200b -> :sswitch_1
        0x2200c -> :sswitch_2
        0x2200e -> :sswitch_1
        0x2200f -> :sswitch_2
        0x22011 -> :sswitch_1
        0x22012 -> :sswitch_2
        0x22014 -> :sswitch_1
        0x22015 -> :sswitch_2
        0x22017 -> :sswitch_3
        0x22019 -> :sswitch_5
        0x2201b -> :sswitch_6
        0x2201d -> :sswitch_4
        0x2201f -> :sswitch_1
        0x22020 -> :sswitch_2
    .end sparse-switch
.end method
