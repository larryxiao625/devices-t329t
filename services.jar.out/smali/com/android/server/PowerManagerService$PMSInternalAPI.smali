.class public Lcom/android/server/PowerManagerService$PMSInternalAPI;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PMSInternalAPI"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 4814
    iput-object p1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelAnimation()V
    .locals 3

    .prologue
    .line 4856
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4863
    :goto_0
    return-void

    .line 4860
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4861
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/android/server/PowerManagerService$BrightnessState;->setCustomizedDelay(I)V

    .line 4862
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected enableCpuApDvcs(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 4816
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->enableCpuApDvcs(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$8700(Lcom/android/server/PowerManagerService;Z)V

    .line 4817
    return-void
.end method

.method protected enableDongleMode(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    .line 4885
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenOffTimeoutsLocked()V
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$1500(Lcom/android/server/PowerManagerService;)V

    .line 4888
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4898
    :goto_0
    return-void

    .line 4892
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4893
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mHtcDongleMode:Lcom/android/server/HtcDongleMode;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$7500(Lcom/android/server/PowerManagerService;)Lcom/android/server/HtcDongleMode;

    move-result-object v1

    const-string v2, "enableDongleMode"

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$3900(Lcom/android/server/PowerManagerService;)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/HtcDongleMode;->getCtrlWakeLockState(Ljava/lang/String;II)I

    move-result v1

    #setter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v0, v1}, Lcom/android/server/PowerManagerService;->access$3902(Lcom/android/server/PowerManagerService;I)I

    .line 4897
    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/PowerManagerService;->userActivity(JZ)V

    goto :goto_0
.end method

.method protected forceLightSensorUpdate(I)V
    .locals 4
    .parameter "DELAY"

    .prologue
    .line 4867
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4877
    :goto_0
    return-void

    .line 4871
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4872
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mUseSoftwareAutoBrightness:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8800(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mAutoBrightessEnabled:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$8900(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4873
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService$BrightnessState;->setCustomizedDelay(I)V

    .line 4874
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-static {}, Lcom/android/server/PowerManagerService;->access$7200()I

    move-result v2

    const/4 v3, 0x1

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(IZ)V
    invoke-static {v0, v2, v3}, Lcom/android/server/PowerManagerService;->access$7300(Lcom/android/server/PowerManagerService;IZ)V

    .line 4876
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getCurrentBrightness()I
    .locals 2

    .prologue
    .line 4843
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4844
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v0

    monitor-exit v1

    return v0

    .line 4845
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getEndBrightness()I
    .locals 2

    .prologue
    .line 4849
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4850
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->targetValue:I

    monitor-exit v1

    return v0

    .line 4851
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setScreenBrightnessMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 4821
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->setScreenBrightnessMode(I)V
    invoke-static {v0, p1}, Lcom/android/server/PowerManagerService;->access$2300(Lcom/android/server/PowerManagerService;I)V

    .line 4822
    return-void
.end method

.method protected setSmoothBacklight(II)V
    .locals 5
    .parameter "enteringLcdValue"
    .parameter "DELAY"

    .prologue
    .line 4826
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0}, Lcom/android/server/PowerManagerService;->isScreenOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4840
    :goto_0
    return-void

    .line 4830
    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$800(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 4831
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    iget v0, v0, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v0, v0

    if-eq p1, v0, :cond_1

    .line 4832
    if-lez p2, :cond_2

    .line 4833
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/PowerManagerService$BrightnessState;->setCustomizedDelay(I)V

    .line 4834
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v0

    const/16 v2, 0x28

    iget-object v3, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v3

    iget v3, v3, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mScreenBrightness:Lcom/android/server/PowerManagerService$BrightnessState;
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$6200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$BrightnessState;

    move-result-object v4

    iget v4, v4, Lcom/android/server/PowerManagerService$BrightnessState;->curValue:F

    float-to-int v4, v4

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/android/server/PowerManagerService$BrightnessState;->setTargetLocked(IIII)Z

    .line 4839
    :cond_1
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 4836
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$PMSInternalAPI;->this$0:Lcom/android/server/PowerManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/PowerManagerService;->setBacklightBrightness(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
