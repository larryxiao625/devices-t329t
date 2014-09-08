.class Lcom/android/server/HtcAutoBrightnessCtrl$1;
.super Landroid/content/BroadcastReceiver;
.source "HtcAutoBrightnessCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/HtcAutoBrightnessCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HtcAutoBrightnessCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .parameter "context"
    .parameter "intent"

    .prologue
    const-wide/32 v11, 0xea60

    const/4 v10, 0x1

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, action:Ljava/lang/String;
    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 222
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 227
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    const-string v7, "HtcAutoBrightnessCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON, Skip. mEnableOffHookMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    :cond_2
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 234
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 238
    const-string v7, "HtcAutoBrightnessCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON, Skip. mEnablebrighterOnly="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_3
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v7, v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    .line 245
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v8, "entering.screen.brightness"

    const/16 v9, 0x7f

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 246
    const-string v7, "backlight.delay"

    const/16 v8, 0x14

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 248
    .local v3, enteringDelay:I
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v1

    .line 249
    .local v1, curLcdValue:I
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getEndBrightness()I

    move-result v2

    .line 251
    .local v2, endLcdValue:I
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v5

    .line 252
    .local v5, newLcdValue:I
    if-le v5, v1, :cond_6

    .line 253
    :goto_1
    if-le v5, v2, :cond_7

    .line 255
    :goto_2
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 256
    const-string v7, "HtcAutoBrightnessCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: ON, mBrighterOnly="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mEnteringLcdValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", enteringDelay="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", curLcdValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", endLcdValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newLcdValue="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_4
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I
    invoke-static {v7, v5}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    move-result v6

    .line 267
    .local v6, target:I
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V
    invoke-static {v7, v6, v3}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$900(Lcom/android/server/HtcAutoBrightnessCtrl;II)V

    .line 270
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 271
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 274
    :cond_5
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 275
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;
    invoke-static {v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;

    move-result-object v8

    invoke-virtual {v7, v8, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .end local v6           #target:I
    :cond_6
    move v5, v1

    .line 252
    goto/16 :goto_1

    :cond_7
    move v5, v2

    .line 253
    goto/16 :goto_2

    .line 277
    .end local v1           #curLcdValue:I
    .end local v2           #endLcdValue:I
    .end local v3           #enteringDelay:I
    .end local v5           #newLcdValue:I
    :cond_8
    const-string v7, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 279
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 287
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 288
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 289
    const-string v7, "HtcAutoBrightnessCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF, Skip. mEnableOffHookMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 294
    :cond_9
    const-string v7, "backlight.delay"

    const/16 v8, 0x28

    invoke-virtual {p2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 295
    .local v4, leavingDelay:I
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 296
    const-string v7, "HtcAutoBrightnessCtrl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onReceive: OFF, mEnableBrighterOnly="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #getter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z
    invoke-static {v9}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", leavingDelay="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_a
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V
    invoke-static {v7, v4}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;I)V

    goto/16 :goto_0

    .line 301
    .end local v4           #leavingDelay:I
    :cond_b
    const-string v7, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 302
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z
    invoke-static {v7, v10}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    goto/16 :goto_0

    .line 303
    :cond_c
    const-string v7, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 304
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const/4 v8, 0x0

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z
    invoke-static {v7, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z

    goto/16 :goto_0

    .line 305
    :cond_d
    const-string v7, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 306
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v8, "state"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1402(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0

    .line 309
    :cond_e
    const-string v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 310
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    const-string v8, "level"

    const/16 v9, 0x64

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    #setter for: Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I
    invoke-static {v7, v8}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I

    .line 312
    iget-object v7, p0, Lcom/android/server/HtcAutoBrightnessCtrl$1;->this$0:Lcom/android/server/HtcAutoBrightnessCtrl;

    #calls: Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V
    invoke-static {v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    goto/16 :goto_0
.end method
