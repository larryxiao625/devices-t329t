.class final Lcom/android/server/HtcAutoBrightnessCtrl;
.super Ljava/lang/Object;
.source "HtcAutoBrightnessCtrl.java"


# static fields
.field protected static final DEFAULT_TRANSITION_DELAY:I = 0xa


# instance fields
.field private final ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

.field private final ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

.field private final ACTION_PREFIX:Ljava/lang/String;

.field private final BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

.field private final BRIGHTER_ONLY_TIMEOUT:I

.field private final DEBUG_ON:Z

.field private final DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

.field private final DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

.field private final KEY_BACKLIGHT_DELAY:Ljava/lang/String;

.field private final KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

.field private final MASTER_ENABLE:Z

.field private final TAG:Ljava/lang/String;

.field private final VALID_MAX_TRANSITION_DELAY:I

.field private final VALID_MIN_TRANSITION_DELAY:I

.field private mBatteryLevel:I

.field private final mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

.field private final mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEnableBrighterOnly:Z

.field private mEnableOffHookMode:Z

.field private mEnteringLcdValue:I

.field private mHandler:Landroid/os/Handler;

.field private mIWindowManager:Landroid/view/IWindowManager;

.field private mMaxBacklightValue:I

.field private mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

.field private mPhoneState:Ljava/lang/String;

.field private mPowerSaverMode:Z

.field private mScreenState:Z


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lcom/android/server/PowerManagerService$PMSInternalAPI;)V
    .locals 5
    .parameter "context"
    .parameter "pmsInternalAPI"

    .prologue
    const/16 v4, 0x7f

    const/16 v3, 0x14

    const/4 v2, 0x0

    .line 78
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v1, "HtcAutoBrightnessCtrl"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->TAG:Ljava/lang/String;

    .line 28
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    .line 31
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->MASTER_ENABLE:Z

    .line 34
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action."

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_PREFIX:Ljava/lang/String;

    .line 36
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_ON:Ljava/lang/String;

    .line 38
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->ACTION_BRIGHTER_ONLY_OFF:Ljava/lang/String;

    .line 42
    const-string v1, "entering.screen.brightness"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_ENTERING_SCREEN_BRIGHTNESS:Ljava/lang/String;

    .line 44
    const-string v1, "backlight.delay"

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->KEY_BACKLIGHT_DELAY:Ljava/lang/String;

    .line 47
    const v1, 0xea60

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_TIMEOUT:I

    .line 49
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->BRIGHTER_ONLY_INITIAL_BRIGHTNESS:I

    .line 53
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_ENTERING_TRANSITION_DELAY:I

    .line 54
    const/16 v1, 0x28

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEFAULT_APP_LEAVING_TRANSITION_DELAY:I

    .line 56
    const/16 v1, 0xfa

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MAX_TRANSITION_DELAY:I

    .line 57
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->VALID_MIN_TRANSITION_DELAY:I

    .line 66
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 68
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 69
    iput v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 71
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    .line 72
    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 74
    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 75
    sget-object v1, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    .line 76
    const/16 v1, 0x64

    iput v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    .line 215
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$1;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$1;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    .line 350
    new-instance v1, Lcom/android/server/HtcAutoBrightnessCtrl$2;

    invoke-direct {v1, p0}, Lcom/android/server/HtcAutoBrightnessCtrl$2;-><init>(Lcom/android/server/HtcAutoBrightnessCtrl;)V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    .line 79
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    .line 81
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 82
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "Constructor: MASTER_ENABLE=true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    .line 89
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    iput-object p2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v1, "com.android.server.HtcAutoBrightnessCtrl.action.BRIGHTER_ONLY_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v1, "com.android.server.htcpowersaver.action.ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.android.server.htcpowersaver.action.OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x4a

    if-ne v1, v2, :cond_1

    .line 100
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "android.permission.DEVICE_POWER"

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/HtcAutoBrightnessCtrl;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    return p1
.end method

.method static synthetic access$1402(Lcom/android/server/HtcAutoBrightnessCtrl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/HtcAutoBrightnessCtrl;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->checkOffHookMode()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/HtcAutoBrightnessCtrl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/HtcAutoBrightnessCtrl;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/HtcAutoBrightnessCtrl;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/HtcAutoBrightnessCtrl;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/HtcAutoBrightnessCtrl;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    iput p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/HtcAutoBrightnessCtrl;)Lcom/android/server/PowerManagerService$PMSInternalAPI;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/HtcAutoBrightnessCtrl;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/HtcAutoBrightnessCtrl;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    return-void
.end method

.method private checkOffHookMode()V
    .locals 9

    .prologue
    const/16 v8, 0x7f

    const/16 v7, 0xa

    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 318
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    sget-object v3, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 319
    .local v1, IS_OFF_HOOK:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->getCurrentBrightness()I

    move-result v0

    .line 321
    .local v0, CURRENT_LCD_VALUE:I
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_0

    .line 322
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkOffHookMode:, mPhoneState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPhoneState:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBatteryLevel="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mBrighterOnly="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", CUR_LCD_VALUE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_0
    if-eqz v1, :cond_3

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-gt v2, v6, :cond_3

    .line 331
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v2, :cond_1

    .line 332
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 333
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 334
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 335
    const-string v2, "HtcAutoBrightnessCtrl"

    const-string v3, "checkOffHookMode: Disable mEnableBrighterOnly mode."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 341
    if-le v0, v8, :cond_2

    .line 342
    invoke-direct {p0, v8, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    .line 348
    :cond_2
    :goto_0
    return-void

    .line 344
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    iget v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBatteryLevel:I

    if-le v2, v6, :cond_2

    .line 345
    :cond_4
    iput-boolean v5, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    .line 346
    invoke-direct {p0, v7}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    goto :goto_0
.end method

.method private getAutoBrightnessEnabled()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 426
    const/4 v0, 0x0

    .line 428
    .local v0, autoBrightnessMode:I
    :try_start_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "screen_brightness_mode"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 432
    :goto_0
    if-ne v0, v2, :cond_0

    :goto_1
    return v2

    .line 429
    :catch_0
    move-exception v1

    .line 430
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "HtcAutoBrightnessCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAutoBrightnessEnabled: [SettingNotFoundException]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 432
    .end local v1           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getBrighterOnlyLcdValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 179
    move v0, p1

    .line 181
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-eqz v1, :cond_1

    .line 183
    iget v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    .line 185
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 186
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBrighterOnly: mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnteringLcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnteringLcdValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_1
    return v0
.end method

.method private getIWindowManager()Landroid/view/IWindowManager;
    .locals 2

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 489
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    .line 490
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    .line 491
    const-string v0, "HtcAutoBrightnessCtrl"

    const-string v1, "getIWindowManager: Could not get IWindowManager."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mIWindowManager:Landroid/view/IWindowManager;

    goto :goto_0
.end method

.method private getManualBrightness()I
    .locals 5

    .prologue
    .line 436
    const/16 v0, 0x7f

    .line 438
    .local v0, currentLcdValue:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 442
    :goto_0
    return v0

    .line 439
    :catch_0
    move-exception v1

    .line 440
    .local v1, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getManualBrightness: [SettingNotFoundException]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getMaxBacklightValue()I
    .locals 5

    .prologue
    .line 459
    :try_start_0
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    const/16 v4, 0x14

    if-le v3, v4, :cond_0

    .line 460
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    .line 470
    :goto_0
    return v3

    .line 463
    :cond_0
    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 464
    .local v2, resources:Landroid/content/res/Resources;
    const v3, 0x1070027

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 465
    .local v1, mLcdBacklightValues:[I
    const/4 v3, 0x7

    aget v3, v1, v3

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v1           #mLcdBacklightValues:[I
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_1
    iget v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HtcAutoBrightnessCtrl"

    const-string v4, "getMaxBacklightValue: reset mMaxBacklightValue"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/16 v3, 0xc8

    iput v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mMaxBacklightValue:I

    goto :goto_1
.end method

.method private getOffHookLcdValue(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    const/16 v2, 0x7f

    .line 198
    const/16 v0, 0x7f

    .line 199
    .local v0, HALF_BRIGHTNESS:I
    move v1, p1

    .line 201
    .local v1, newLcdValue:I
    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v3, :cond_1

    .line 202
    if-le v1, v2, :cond_0

    move v1, v2

    .line 204
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 205
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOffHook: mOffHookMode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lcdValue="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "->"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_1
    return v1
.end method

.method private getPowerSaverLcdValue(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 157
    move v0, p1

    .line 159
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v0

    .line 164
    :cond_0
    int-to-double v1, v0

    const-wide v3, 0x3feb333333333333L

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 166
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_1

    .line 167
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPS: mPSM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEnableBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    return v0
.end method

.method private getValidDelay(I)I
    .locals 2
    .parameter "delay"

    .prologue
    const/16 v0, 0xfa

    const/16 v1, 0xa

    .line 452
    if-ge p1, v1, :cond_0

    move p1, v1

    .line 453
    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    .line 454
    :cond_1
    return p1
.end method

.method private getValidLcdValue(I)I
    .locals 2
    .parameter "lcdValue"

    .prologue
    const/16 v1, 0xff

    const/16 v0, 0x14

    .line 446
    if-le p1, v1, :cond_0

    move p1, v1

    .line 447
    :cond_0
    if-ge p1, v0, :cond_1

    move p1, v0

    .line 448
    :cond_1
    return p1
.end method

.method private isKeyguardLocked()Z
    .locals 3

    .prologue
    .line 474
    const/4 v0, 0x1

    .line 476
    .local v0, keyguardLocked:Z
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getIWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->keyguardIsShowing()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 480
    :goto_0
    if-eqz v0, :cond_0

    .line 481
    const-string v1, "HtcAutoBrightnessCtrl"

    const-string v2, "isKeyguardLocked: Keyguard is locked, skip request."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->cancelAnimation()V

    .line 484
    :cond_0
    return v0

    .line 477
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private reset(I)V
    .locals 5
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    .line 362
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getAutoBrightnessEnabled()Z

    move-result v0

    .line 363
    .local v0, AUTO_BRIGHTNESS_MODE:Z
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mBrighterOnlyTimeoutTask:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 365
    if-nez v0, :cond_0

    .line 367
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, v4}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setScreenBrightnessMode(I)V

    .line 371
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    if-nez v2, :cond_2

    .line 391
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 377
    const/4 v1, 0x0

    .line 378
    .local v1, manualBrightness:I
    if-eqz v0, :cond_3

    .line 379
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->forceLightSensorUpdate(I)V

    .line 385
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_1

    .line 386
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reset: AUTO_BRIGHTNESS_MODE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", manualBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 381
    :cond_3
    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getManualBrightness()I

    move-result v1

    .line 382
    invoke-direct {p0, v1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->setBacklight(II)V

    goto :goto_1
.end method

.method private setBacklight(II)V
    .locals 5
    .parameter "targetLcdValue"
    .parameter "delay"

    .prologue
    const/4 v1, 0x0

    .line 394
    const/16 v2, 0xa

    if-ge p2, v2, :cond_1

    const/4 v0, 0x1

    .line 396
    .local v0, noTransition:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    if-nez v2, :cond_2

    .line 397
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBacklight: screen off. Skip. target="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", noTransition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    :cond_0
    :goto_1
    return-void

    .end local v0           #noTransition:Z
    :cond_1
    move v0, v1

    .line 394
    goto :goto_0

    .line 406
    .restart local v0       #noTransition:Z
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v2, :cond_3

    .line 407
    const-string v2, "HtcAutoBrightnessCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setBacklight: target="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", delay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", noTransition="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_3
    if-lez p1, :cond_0

    .line 417
    if-eqz v0, :cond_4

    .line 418
    iget-object v2, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1

    .line 420
    :cond_4
    invoke-direct {p0, p2}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidDelay(I)I

    move-result p2

    .line 421
    iget-object v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPMSInternalAPI:Lcom/android/server/PowerManagerService$PMSInternalAPI;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/PowerManagerService$PMSInternalAPI;->setSmoothBacklight(II)V

    goto :goto_1
.end method


# virtual methods
.method protected getCtrlAutoBrightnessValue(I)I
    .locals 4
    .parameter "lcdValue"

    .prologue
    .line 109
    move v0, p1

    .line 111
    .local v0, newLcdValue:I
    invoke-direct {p0, p1}, Lcom/android/server/HtcAutoBrightnessCtrl;->getPowerSaverLcdValue(I)I

    move-result v0

    .line 114
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getBrighterOnlyLcdValue(I)I

    move-result v0

    .line 116
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getOffHookLcdValue(I)I

    move-result v0

    .line 118
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlAutoBrightnessValue: ENABLE=true, mPSM("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getMaxBacklightValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mPowerSaverMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mBrighterOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1
.end method

.method protected getCtrlSetBacklightBrightness(I)I
    .locals 5
    .parameter "lcdValue"

    .prologue
    .line 130
    move v0, p1

    .line 133
    .local v0, newLcdValue:I
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    if-eqz v1, :cond_0

    .line 134
    int-to-double v1, v0

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    double-to-int v0, v1

    .line 136
    iget-boolean v1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->DEBUG_ON:Z

    if-eqz v1, :cond_0

    .line 137
    const-string v1, "HtcAutoBrightnessCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCtrlSetBacklightBrightness: mOffHookMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableOffHookMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lcdValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->getValidLcdValue(I)I

    move-result v1

    return v1
.end method

.method protected screenState(Z)V
    .locals 1
    .parameter "on"

    .prologue
    const/4 v0, 0x0

    .line 147
    iput-boolean p1, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mScreenState:Z

    .line 149
    if-nez p1, :cond_0

    .line 151
    iput-boolean v0, p0, Lcom/android/server/HtcAutoBrightnessCtrl;->mEnableBrighterOnly:Z

    .line 152
    invoke-direct {p0, v0}, Lcom/android/server/HtcAutoBrightnessCtrl;->reset(I)V

    .line 154
    :cond_0
    return-void
.end method
