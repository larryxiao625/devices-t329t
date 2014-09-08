.class Landroid/server/BluetoothEventLoop$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothEventLoop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/server/BluetoothEventLoop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/server/BluetoothEventLoop;


# direct methods
.method constructor <init>(Landroid/server/BluetoothEventLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 90
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 94
    :cond_0
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 95
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Landroid/server/BluetoothEventLoop;->SIM1_STATE:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/server/BluetoothEventLoop;->access$002(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM1 Phone status change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->SIM1_STATE:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_0
    const-string v1, "RINGING"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->SIM1_STATE:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$000(Landroid/server/BluetoothEventLoop;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "RINGING"

    iget-object v2, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->SIM2_STATE:Ljava/lang/String;
    invoke-static {v2}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 102
    :cond_2
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v2, 0x1

    #setter for: Landroid/server/BluetoothEventLoop;->isRinging:Z
    invoke-static {v1, v2}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Z)Z

    .line 107
    :cond_3
    :goto_1
    return-void

    .line 97
    :cond_4
    const-string v1, "android.intent.action.PHONE_STATE_EXT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const-string/jumbo v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    #setter for: Landroid/server/BluetoothEventLoop;->SIM2_STATE:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/server/BluetoothEventLoop;->access$102(Landroid/server/BluetoothEventLoop;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    const-string v1, "BluetoothEventLoop"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM2 Phone status change to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    #getter for: Landroid/server/BluetoothEventLoop;->SIM2_STATE:Ljava/lang/String;
    invoke-static {v3}, Landroid/server/BluetoothEventLoop;->access$100(Landroid/server/BluetoothEventLoop;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 104
    :cond_5
    iget-object v1, p0, Landroid/server/BluetoothEventLoop$1;->this$0:Landroid/server/BluetoothEventLoop;

    const/4 v2, 0x0

    #setter for: Landroid/server/BluetoothEventLoop;->isRinging:Z
    invoke-static {v1, v2}, Landroid/server/BluetoothEventLoop;->access$202(Landroid/server/BluetoothEventLoop;Z)Z

    goto :goto_1
.end method
