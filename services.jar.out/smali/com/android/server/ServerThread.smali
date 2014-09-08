.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 910
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 911
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 913
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 915
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 103
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    return-void
.end method

.method public run()V
    .locals 104

    .prologue
    .line 109
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 112
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 114
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 117
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 118
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 122
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v85

    .line 124
    .local v85, shutdownAction:Ljava/lang/String;
    if-eqz v85, :cond_0

    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 125
    const/4 v3, 0x0

    move-object/from16 v0, v85

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_e

    const/16 v82, 0x1

    .line 128
    .local v82, reboot:Z
    :goto_0
    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_f

    .line 129
    const/4 v3, 0x1

    invoke-virtual/range {v85 .. v85}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v85

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v81

    .line 134
    .local v81, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v82

    move-object/from16 v1, v81

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 138
    .end local v81           #reason:Ljava/lang/String;
    .end local v82           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    .line 139
    .local v60, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v60

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/16 v59, 0x0

    .line 142
    .local v59, factoryTest:I
    :goto_2
    const/16 v67, 0x0

    .line 143
    .local v67, lights:Lcom/android/server/LightsService;
    const/16 v62, 0x0

    .line 144
    .local v62, htchardware:Lcom/android/server/HtcHardwareService;
    const/16 v80, 0x0

    .line 145
    .local v80, power:Lcom/android/server/PowerManagerService;
    const/16 v39, 0x0

    .line 146
    .local v39, battery:Lcom/android/server/BatteryService;
    const/16 v36, 0x0

    .line 147
    .local v36, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 148
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 149
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v72, 0x0

    .line 150
    .local v72, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v45, 0x0

    .line 151
    .local v45, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v101, 0x0

    .line 152
    .local v101, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v99, 0x0

    .line 153
    .local v99, wifi:Lcom/android/server/WifiService;
    const/16 v79, 0x0

    .line 154
    .local v79, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 155
    .local v4, context:Landroid/content/Context;
    const/16 v103, 0x0

    .line 156
    .local v103, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v40, 0x0

    .line 157
    .local v40, bluetooth:Landroid/server/BluetoothService;
    const/16 v42, 0x0

    .line 158
    .local v42, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v56, 0x0

    .line 159
    .local v56, dock:Lcom/android/server/DockObserver;
    const/16 v94, 0x0

    .line 160
    .local v94, usb:Lcom/android/server/usb/UsbService;
    const/16 v92, 0x0

    .line 161
    .local v92, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v83, 0x0

    .line 162
    .local v83, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v88, 0x0

    .line 163
    .local v88, throttle:Lcom/android/server/ThrottleService;
    const/16 v74, 0x0

    .line 164
    .local v74, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v49, 0x0

    .line 166
    .local v49, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    const/16 v52, 0x0

    .line 171
    .local v52, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 174
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_40

    .line 176
    .end local v80           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 179
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v3, :cond_1

    .line 180
    const-string v3, "SystemServer"

    const-string v9, "DeviceManager3LM"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v53, Lcom/android/server/DeviceManager3LMService;

    invoke-direct/range {v53 .. v53}, Lcom/android/server/DeviceManager3LMService;-><init>()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .end local v52           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .local v53, deviceManager:Lcom/android/server/DeviceManager3LMService;
    :try_start_2
    const-string v3, "DeviceManager3LM"

    move-object/from16 v0, v53

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_41

    move-object/from16 v52, v53

    .line 186
    .end local v53           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v52       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :cond_1
    :try_start_3
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static/range {v59 .. v59}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 189
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 192
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 194
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 197
    .local v51, cryptState:Ljava/lang/String;
    const/16 v78, 0x0

    .line 198
    .local v78, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 199
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v78, 0x1

    .line 206
    :cond_2
    :goto_3
    if-eqz v59, :cond_12

    const/4 v3, 0x1

    :goto_4
    move/from16 v0, v78

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v79

    .line 209
    const/16 v61, 0x0

    .line 211
    .local v61, firstBoot:Z
    :try_start_4
    invoke-interface/range {v79 .. v79}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2e
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v61

    .line 215
    :goto_5
    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 217
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 221
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    .line 228
    :goto_6
    :try_start_7
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_13

    const/4 v3, 0x1

    :goto_7
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 232
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 235
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    new-instance v68, Lcom/android/server/LightsService;

    move-object/from16 v0, v68

    invoke-direct {v0, v4}, Lcom/android/server/LightsService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    .line 238
    .end local v67           #lights:Lcom/android/server/LightsService;
    .local v68, lights:Lcom/android/server/LightsService;
    :try_start_8
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v68

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_42

    .line 240
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_9
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 242
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 246
    const-string v3, "SystemServer"

    const-string v9, "Hardware Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v63, Lcom/android/server/HtcHardwareService;

    move-object/from16 v0, v63

    invoke-direct {v0, v4}, Lcom/android/server/HtcHardwareService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_43

    .line 248
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .local v63, htchardware:Lcom/android/server/HtcHardwareService;
    :try_start_a
    const-string v3, "htchardware"

    move-object/from16 v0, v63

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 252
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 254
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V


    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_44

    .line 256
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_b
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 258
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 262
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v3, 0x1

    move/from16 v0, v59

    if-eq v0, v3, :cond_14

    const/4 v3, 0x1

    move v9, v3

    :goto_8
    if-nez v61, :cond_15

    const/4 v3, 0x1

    :goto_9
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v103

    .line 266
    const-string v3, "window"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 268
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v103

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    invoke-static {v4}, Lcom/baidu/service/YiServiceLoader;->main(Landroid/content/Context;)V


    .line 273
    const-string v3, "ro.kernel.qemu"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "1"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 274
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooh Service (emulator)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :goto_a
    new-instance v50, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_2

    .line 302
    .end local v49           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v50, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v50, :cond_3

    .line 303
    :try_start_c
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_47

    :cond_3
    move-object/from16 v49, v50

    .end local v50           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v49       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .line 310
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v61           #firstBoot:Z
    .end local v68           #lights:Lcom/android/server/LightsService;
    .end local v78           #onlyCore:Z
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :goto_b
    const/16 v54, 0x0

    .line 311
    .local v54, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v86, 0x0

    .line 312
    .local v86, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v64, 0x0

    .line 313
    .local v64, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v37, 0x0

    .line 314
    .local v37, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v76, 0x0

    .line 315
    .local v76, notification:Lcom/android/server/NotificationManagerService;
    const/16 v97, 0x0

    .line 316
    .local v97, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v69, 0x0

    .line 317
    .local v69, location:Lcom/android/server/LocationManagerService;
    const/16 v47, 0x0

    .line 318
    .local v47, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v90, 0x0

    .line 321
    .local v90, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v59

    if-eq v0, v3, :cond_4

    .line 323
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v65, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v65

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    .line 325
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .local v65, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_e
    const-string v3, "input_method"

    move-object/from16 v0, v65

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_3f

    move-object/from16 v64, v65

    .line 331
    .end local v65           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_c
    :try_start_f
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_4

    .line 339
    :goto_d
    const-string v3, "ro.framework.gestureservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "0"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 341
    :try_start_10
    const-string v3, "SystemServer"

    const-string v9, "HTC Gesture Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const-string v3, "gesture"

    new-instance v9, Lcom/htc/server/gesture/GestureService;

    invoke-direct {v9, v4}, Lcom/htc/server/gesture/GestureService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_5

    .line 352
    :cond_4
    :goto_e
    :try_start_11
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    .line 358
    :goto_f
    :try_start_12
    invoke-interface/range {v79 .. v79}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_7

    .line 364
    :goto_10
    :try_start_13
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3e

    .line 371
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v59

    if-eq v0, v3, :cond_1a

    .line 373
    :try_start_14
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    new-instance v55, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v55

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_8

    .line 375
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v55, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_15
    const-string v3, "device_policy"

    move-object/from16 v0, v55

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_3d

    move-object/from16 v54, v55

    .line 381
    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v87, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v87

    move-object/from16 v1, v103

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 383
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v87, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_17
    const-string v3, "statusbar"

    move-object/from16 v0, v87

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_3c

    move-object/from16 v86, v87

    .line 389
    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_13
    :try_start_18
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_a

    .line 397
    :goto_14
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 399
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 405
    :goto_15
    :try_start_1a
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v91, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v91

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_c

    .line 407
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v91, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_1b
    const-string v3, "textservices"

    move-object/from16 v0, v91

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_3b

    move-object/from16 v90, v91

    .line 413
    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_16
    :try_start_1c
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    new-instance v73, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v73

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_d

    .line 415
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v73, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1d
    const-string v3, "netstats"

    move-object/from16 v0, v73

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_3a

    move-object/from16 v12, v73

    .line 421
    .end local v73           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_17
    :try_start_1e
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    new-instance v8, Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_e

    .line 425
    .end local v72           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1f
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_39

    .line 431
    :goto_18
    :try_start_20
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    new-instance v102, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_f

    .line 433
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v102, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_21
    const-string v3, "wifip2p"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_38

    move-object/from16 v101, v102

    .line 439
    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_19
    :try_start_22
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v100, Lcom/android/server/WifiService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_10

    .line 441
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .local v100, wifi:Lcom/android/server/WifiService;
    :try_start_23
    const-string v3, "wifi"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_37

    move-object/from16 v99, v100

    .line 447
    .end local v100           #wifi:Lcom/android/server/WifiService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    :goto_1a
    :try_start_24
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    new-instance v46, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v46

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_11

    .line 450
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .local v46, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_25
    const-string v3, "connectivity"

    move-object/from16 v0, v46

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 451
    move-object/from16 v0, v46

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 452
    move-object/from16 v0, v46

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 453
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 454
    invoke-virtual/range {v101 .. v101}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_36

    move-object/from16 v45, v46

    .line 460
    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1b
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    new-instance v89, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v89

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 462
    .end local v88           #throttle:Lcom/android/server/ThrottleService;
    .local v89, throttle:Lcom/android/server/ThrottleService;
    :try_start_27
    const-string v3, "throttle"

    move-object/from16 v0, v89

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_35

    move-object/from16 v88, v89

    .line 473
    .end local v89           #throttle:Lcom/android/server/ThrottleService;
    .restart local v88       #throttle:Lcom/android/server/ThrottleService;
    :goto_1c
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 480
    :goto_1d
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v77, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v77

    move-object/from16 v1, v86

    move-object/from16 v2, v67

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_14

    .line 482
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .local v77, notification:Lcom/android/server/NotificationManagerService;
    :try_start_2a
    const-string v3, "notification"

    move-object/from16 v0, v77

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 483
    move-object/from16 v0, v77

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_34

    move-object/from16 v76, v77

    .line 489
    .end local v77           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1e
    :try_start_2b
    const-string v3, "SystemServer"

    const-string v9, "Display Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const-string v3, "display"

    new-instance v9, Lcom/android/server/DisplayService;

    invoke-direct {v9, v4}, Lcom/android/server/DisplayService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_15

    .line 496
    :goto_1f
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 504
    :goto_20
    :try_start_2d
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v70, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v70

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_17

    .line 506
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .local v70, location:Lcom/android/server/LocationManagerService;
    :try_start_2e
    const-string v3, "location"

    move-object/from16 v0, v70

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_33

    move-object/from16 v69, v70

    .line 512
    .end local v70           #location:Lcom/android/server/LocationManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    :goto_21
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    new-instance v48, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v48

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 514
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v48, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_30
    const-string v3, "country_detector"

    move-object/from16 v0, v48

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_32

    move-object/from16 v47, v48

    .line 520
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_22
    :try_start_31
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_19

    .line 528
    :goto_23
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1a

    .line 537
    :goto_24
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "HTC Checkin Service."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v9, "com.android.providers.htcCheckin"

    const-string v10, "com.android.providers.htcCheckin.htcCheckinService"

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v66

    .line 541
    .local v66, intent:Landroid/content/Intent;
    move-object/from16 v0, v66

    invoke-virtual {v4, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .line 548
    .end local v66           #intent:Landroid/content/Intent;
    :goto_25
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    new-instance v98, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 550
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v98, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_35
    const-string v3, "wallpaper"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_31

    move-object/from16 v97, v98

    .line 556
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_26
    :try_start_36
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_1d

    .line 563
    :goto_27
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v57, Lcom/android/server/DockObserver;

    move-object/from16 v0, v57

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .end local v56           #dock:Lcom/android/server/DockObserver;
    .local v57, dock:Lcom/android/server/DockObserver;
    move-object/from16 v56, v57

    .line 571
    .end local v57           #dock:Lcom/android/server/DockObserver;
    .restart local v56       #dock:Lcom/android/server/DockObserver;
    :goto_28
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 579
    :goto_29
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    new-instance v95, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v95

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 582
    .end local v94           #usb:Lcom/android/server/usb/UsbService;
    .local v95, usb:Lcom/android/server/usb/UsbService;
    :try_start_3a
    const-string v3, "usb"

    move-object/from16 v0, v95

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_30

    move-object/from16 v94, v95

    .line 588
    .end local v95           #usb:Lcom/android/server/usb/UsbService;
    .restart local v94       #usb:Lcom/android/server/usb/UsbService;
    :goto_2a
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v93, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v93

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .end local v92           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v93, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v92, v93

    .line 596
    .end local v93           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v92       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2b
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 604
    :goto_2c
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    new-instance v38, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 606
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3e
    const-string v3, "appwidget"

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2f

    move-object/from16 v37, v38

    .line 612
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2d
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v84, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v84

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_24

    .end local v83           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v84, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v83, v84

    .line 619
    .end local v84           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v83       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2e
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_25

    .line 630
    :goto_2f
    :try_start_41
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_26

    .line 638
    :goto_30
    :try_start_42
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    new-instance v75, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v75

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_27

    .end local v74           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v75, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v74, v75

    .line 645
    .end local v75           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v74       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_31
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_FEATURE_3LM:Z

    if-eqz v3, :cond_6

    .line 646
    const-string v3, "1"

    const-string v9, "ro.3lm.legacy_encryption"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 647
    const-string v3, "SystemServer"

    const-string v9, "Encryption 3LM Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const-string v3, "Encryption3LMService"

    new-instance v9, Lcom/android/server/Encryption3LMService;

    invoke-direct {v9, v4}, Lcom/android/server/Encryption3LMService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 652
    :cond_5
    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Lcom/android/server/DeviceManager3LMService;->init(Landroid/content/Context;)V

    .line 655
    const-string v3, "ro.3LM.extended"

    const/4 v9, 0x0

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    .line 656
    const-string v3, "SystemServer"

    const-string v9, "3LM OEM Extended Api Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const-string v3, "OemExtendedApi3LM"

    new-instance v9, Lcom/android/server/OemExtendedApi3LMService;

    const/4 v10, 0x0

    invoke-direct {v9, v4, v10}, Lcom/android/server/OemExtendedApi3LMService;-><init>(Landroid/content/Context;Landroid/os/IDeviceManagerRestrictable3LM;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 664
    :cond_6
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserPolicy()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileForceDisableUlog()Z

    move-result v3

    if-nez v3, :cond_18

    .line 667
    :cond_7
    :try_start_43
    const-string v3, "SystemServer"

    const-string v9, "User Behavior Logging Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const-string v3, "userbehavior"

    new-instance v9, Lcom/htc/server/ulog/UserBehaviorLoggingService;

    invoke-direct {v9, v4}, Lcom/htc/server/ulog/UserBehaviorLoggingService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_28

    .line 677
    :goto_32
    sget-boolean v3, Lcom/htc/server/HtcAppUsageStatsService;->VZW_APPWIFIOFFLOAD:Z

    if-eqz v3, :cond_8

    .line 678
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 679
    const-string v3, "HtcAppUsageStatsService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    check-cast v3, Lcom/htc/server/HtcAppUsageStatsService;

    invoke-virtual {v3}, Lcom/htc/server/HtcAppUsageStatsService;->systemReady()V

    .line 684
    :cond_8
    move/from16 v0, v59

    invoke-static {v4, v0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 689
    :try_start_44
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x31

    if-eq v3, v9, :cond_9

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x32

    if-eq v3, v9, :cond_9

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x23f

    if-eq v3, v9, :cond_9

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v9, 0x66

    if-eq v3, v9, :cond_9

    .line 697
    const-string v3, "SystemServer"

    const-string v9, "WirelessDisplay Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const-string v3, "wireless_display"

    new-instance v9, Lcom/htc/server/WirelessDisplayService;

    invoke-direct {v9, v4}, Lcom/htc/server/WirelessDisplayService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_29

    .line 709
    :cond_9
    :goto_33
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 710
    .local v27, safeMode:Z
    if-eqz v27, :cond_19

    .line 711
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 713
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 715
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 723
    :goto_34
    if-eqz v54, :cond_a

    .line 725
    :try_start_45
    invoke-virtual/range {v54 .. v54}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2a

    .line 731
    :cond_a
    :goto_35
    if-eqz v76, :cond_b

    .line 733
    :try_start_46
    invoke-virtual/range {v76 .. v76}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_46} :catch_2b

    .line 740
    :cond_b
    :goto_36
    :try_start_47
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_2c

    .line 745
    :goto_37
    if-eqz v27, :cond_c

    .line 746
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 752
    :cond_c
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v44

    .line 753
    .local v44, config:Landroid/content/res/Configuration;
    new-instance v71, Landroid/util/DisplayMetrics;

    invoke-direct/range {v71 .. v71}, Landroid/util/DisplayMetrics;-><init>()V

    .line 754
    .local v71, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/view/WindowManager;

    .line 755
    .local v96, w:Landroid/view/WindowManager;
    invoke-interface/range {v96 .. v96}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 756
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v44

    move-object/from16 v1, v71

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 769
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 771
    :try_start_48
    invoke-interface/range {v79 .. v79}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_48} :catch_2d

    .line 777
    :goto_38
    move-object/from16 v16, v4

    .line 778
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 779
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 780
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 781
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 782
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v45

    .line 783
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v56

    .line 784
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v94

    .line 785
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v88

    .line 786
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v92

    .line 787
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v37

    .line 788
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v97

    .line 789
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v64

    .line 790
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v83

    .line 791
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v69

    .line 792
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v47

    .line 793
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v74

    .line 794
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v90

    .line 795
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v86

    .line 802
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 901
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 902
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    :cond_d
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 906
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void

    .line 125
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v44           #config:Landroid/content/res/Configuration;
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v49           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v52           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v56           #dock:Lcom/android/server/DockObserver;
    .end local v59           #factoryTest:I
    .end local v60           #factoryTestStr:Ljava/lang/String;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .end local v71           #metrics:Landroid/util/DisplayMetrics;
    .end local v74           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .end local v79           #pm:Landroid/content/pm/IPackageManager;
    .end local v83           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v88           #throttle:Lcom/android/server/ThrottleService;
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v92           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v94           #usb:Lcom/android/server/usb/UsbService;
    .end local v96           #w:Landroid/view/WindowManager;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v103           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_e
    const/16 v82, 0x0

    goto/16 :goto_0

    .line 131
    .restart local v82       #reboot:Z
    :cond_f
    const/16 v81, 0x0

    .restart local v81       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 139
    .end local v81           #reason:Ljava/lang/String;
    .end local v82           #reboot:Z
    .restart local v60       #factoryTestStr:Ljava/lang/String;
    :cond_10
    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    goto/16 :goto_2

    .line 201
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v49       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v52       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v56       #dock:Lcom/android/server/DockObserver;
    .restart local v59       #factoryTest:I
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    .restart local v72       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v74       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v78       #onlyCore:Z
    .restart local v79       #pm:Landroid/content/pm/IPackageManager;
    .restart local v83       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v88       #throttle:Lcom/android/server/ThrottleService;
    .restart local v92       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v94       #usb:Lcom/android/server/usb/UsbService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v103       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_11
    :try_start_49
    const-string v3, "1"

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 202
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/16 v78, 0x1

    goto/16 :goto_3

    .line 206
    :cond_12
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 224
    .restart local v61       #firstBoot:Z
    :catch_0
    move-exception v58

    .line 225
    .local v58, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_1

    goto/16 :goto_6

    .line 305
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v58           #e:Ljava/lang/Throwable;
    .end local v61           #firstBoot:Z
    .end local v78           #onlyCore:Z
    :catch_1
    move-exception v58

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .line 306
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v58, e:Ljava/lang/RuntimeException;
    :goto_39
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b

    .line 229
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v58           #e:Ljava/lang/RuntimeException;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v61       #firstBoot:Z
    .restart local v78       #onlyCore:Z
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 263
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :cond_14
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_8

    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_9

    .line 275
    :cond_16
    const/4 v3, 0x1

    move/from16 v0, v59

    if-ne v0, v3, :cond_17

    .line 276
    :try_start_4a
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 305
    :catch_2
    move-exception v58

    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto :goto_39

    .line 278
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :cond_17
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    new-instance v41, Landroid/server/BluetoothService;

    move-object/from16 v0, v41

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_2

    .line 280
    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .local v41, bluetooth:Landroid/server/BluetoothService;
    :try_start_4b
    const-string v3, "bluetooth"

    move-object/from16 v0, v41

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 281
    invoke-virtual/range {v41 .. v41}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 282
    new-instance v43, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v43

    move-object/from16 v1, v41

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_4b
    .catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_4b} :catch_45

    .line 283
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_4c
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v43

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 285
    invoke-virtual/range {v41 .. v41}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V

    .line 286
    const-string v3, "SystemServer"

    const-string v9, "[TEST] TiBtServiceLoader.loadServices++"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    move/from16 v0, v59

    move-object/from16 v1, v41

    invoke-static {v4, v0, v1}, Lcom/ti/bt/server/TiBtServiceLoader;->loadServices(Landroid/content/Context;ILandroid/server/BluetoothService;)V

    .line 288
    const-string v3, "SystemServer"

    const-string v9, "[TEST] TiBtServiceLoader.loadServices--"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Ljava/lang/RuntimeException; {:try_start_4c .. :try_end_4c} :catch_46

    move-object/from16 v42, v43

    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_a

    .line 326
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v61           #firstBoot:Z
    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v68           #lights:Lcom/android/server/LightsService;
    .end local v78           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_3
    move-exception v58

    .line 327
    .local v58, e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 334
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v58

    .line 335
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 344
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v58

    .line 345
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting HTC Gesture Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 353
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v58

    .line 354
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 359
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v58

    .line 360
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 376
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v58

    .line 377
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 384
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v58

    .line 385
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 392
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v58

    .line 393
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 400
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v58

    .line 401
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 408
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v58

    .line 409
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 416
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v58

    .line 417
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 426
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v58

    move-object/from16 v8, v72

    .line 427
    .end local v72           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 434
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v58

    .line 435
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 442
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v58

    .line 443
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 455
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v58

    .line 456
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 464
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v58

    .line 465
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 475
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v58

    .line 476
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 484
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v58

    .line 485
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 491
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v58

    .line 492
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Display Service "

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 499
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v58

    .line 500
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 507
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v58

    .line 508
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 515
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v58

    .line 516
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 523
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v58

    .line 524
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 531
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v58

    .line 532
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 542
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v58

    .line 543
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting HTC Checkin Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 551
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v58

    .line 552
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 558
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v58

    .line 559
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 566
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v58

    .line 567
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 574
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v58

    .line 575
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 583
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v58

    .line 584
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 591
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v58

    .line 592
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2b

    .line 599
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v58

    .line 600
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 607
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v58

    .line 608
    .restart local v58       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 614
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v58

    .line 615
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 621
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v58

    .line 622
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 633
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v58

    .line 634
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 640
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_27
    move-exception v58

    .line 641
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 669
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v58

    .line 670
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting UserBehaviorLoggingService"

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 673
    .end local v58           #e:Ljava/lang/Throwable;
    :cond_18
    const-string v3, "SystemServer"

    const-string v9, "Disable User Behavior Logging Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_32

    .line 700
    :catch_29
    move-exception v58

    .line 701
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting WirelessDisplay Service "

    move-object/from16 v0, v58

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_33

    .line 718
    .end local v58           #e:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_19
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_34

    .line 726
    :catch_2a
    move-exception v58

    .line 727
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 734
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_2b
    move-exception v58

    .line 735
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 741
    .end local v58           #e:Ljava/lang/Throwable;
    :catch_2c
    move-exception v58

    .line 742
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 772
    .end local v58           #e:Ljava/lang/Throwable;
    .restart local v44       #config:Landroid/content/res/Configuration;
    .restart local v71       #metrics:Landroid/util/DisplayMetrics;
    .restart local v96       #w:Landroid/view/WindowManager;
    :catch_2d
    move-exception v58

    .line 773
    .restart local v58       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v58

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_38

    .line 212
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v27           #safeMode:Z
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v44           #config:Landroid/content/res/Configuration;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v58           #e:Ljava/lang/Throwable;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .end local v71           #metrics:Landroid/util/DisplayMetrics;
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v96           #w:Landroid/view/WindowManager;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v61       #firstBoot:Z
    .restart local v72       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v78       #onlyCore:Z
    :catch_2e
    move-exception v3

    goto/16 :goto_5

    .line 607
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v39           #battery:Lcom/android/server/BatteryService;
    .end local v51           #cryptState:Ljava/lang/String;
    .end local v61           #firstBoot:Z
    .end local v72           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v78           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2f
    move-exception v58

    move-object/from16 v37, v38

    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_49

    .line 583
    .end local v94           #usb:Lcom/android/server/usb/UsbService;
    .restart local v95       #usb:Lcom/android/server/usb/UsbService;
    :catch_30
    move-exception v58

    move-object/from16 v94, v95

    .end local v95           #usb:Lcom/android/server/usb/UsbService;
    .restart local v94       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_48

    .line 551
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_31
    move-exception v58

    move-object/from16 v97, v98

    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_47

    .line 515
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_32
    move-exception v58

    move-object/from16 v47, v48

    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_46

    .line 507
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .restart local v70       #location:Lcom/android/server/LocationManagerService;
    :catch_33
    move-exception v58

    move-object/from16 v69, v70

    .end local v70           #location:Lcom/android/server/LocationManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_45

    .line 484
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v77       #notification:Lcom/android/server/NotificationManagerService;
    :catch_34
    move-exception v58

    move-object/from16 v76, v77

    .end local v77           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_44

    .line 464
    .end local v88           #throttle:Lcom/android/server/ThrottleService;
    .restart local v89       #throttle:Lcom/android/server/ThrottleService;
    :catch_35
    move-exception v58

    move-object/from16 v88, v89

    .end local v89           #throttle:Lcom/android/server/ThrottleService;
    .restart local v88       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_43

    .line 455
    .end local v45           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v46       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_36
    move-exception v58

    move-object/from16 v45, v46

    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v45       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_42

    .line 442
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .restart local v100       #wifi:Lcom/android/server/WifiService;
    :catch_37
    move-exception v58

    move-object/from16 v99, v100

    .end local v100           #wifi:Lcom/android/server/WifiService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_41

    .line 434
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v102       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_38
    move-exception v58

    move-object/from16 v101, v102

    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_40

    .line 426
    :catch_39
    move-exception v58

    goto/16 :goto_3f

    .line 416
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v72       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_3a
    move-exception v58

    move-object/from16 v12, v73

    .end local v73           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3e

    .line 408
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v91       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_3b
    move-exception v58

    move-object/from16 v90, v91

    .end local v91           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3d

    .line 384
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v87       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3c
    move-exception v58

    move-object/from16 v86, v87

    .end local v87           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3c

    .line 376
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v55       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3d
    move-exception v58

    move-object/from16 v54, v55

    .end local v55           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3b

    .line 368
    :catch_3e
    move-exception v3

    goto/16 :goto_11

    .line 326
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v65       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3f
    move-exception v58

    move-object/from16 v64, v65

    .end local v65           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3a

    .line 305
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v47           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v80       #power:Lcom/android/server/PowerManagerService;
    :catch_40
    move-exception v58

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v80

    .end local v80           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_39

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v52           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v53       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    :catch_41
    move-exception v58

    move-object/from16 v52, v53

    .end local v53           #deviceManager:Lcom/android/server/DeviceManager3LMService;
    .restart local v52       #deviceManager:Lcom/android/server/DeviceManager3LMService;
    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    goto/16 :goto_39

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v39       #battery:Lcom/android/server/BatteryService;
    .restart local v51       #cryptState:Ljava/lang/String;
    .restart local v61       #firstBoot:Z
    .restart local v68       #lights:Lcom/android/server/LightsService;
    .restart local v78       #onlyCore:Z
    :catch_42
    move-exception v58

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v39

    .end local v39           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v58

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v58

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :catch_45
    move-exception v58

    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v40           #bluetooth:Landroid/server/BluetoothService;
    .end local v42           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :catch_46
    move-exception v58

    move-object/from16 v42, v43

    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v42       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v40, v41

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .restart local v40       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v49           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v62           #htchardware:Lcom/android/server/HtcHardwareService;
    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v50       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v63       #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v68       #lights:Lcom/android/server/LightsService;
    :catch_47
    move-exception v58

    move-object/from16 v49, v50

    .end local v50           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v49       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v62, v63

    .end local v63           #htchardware:Lcom/android/server/HtcHardwareService;
    .restart local v62       #htchardware:Lcom/android/server/HtcHardwareService;
    move-object/from16 v67, v68

    .end local v68           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v51           #cryptState:Ljava/lang/String;
    .end local v61           #firstBoot:Z
    .end local v78           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v47       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_1a
    move-object/from16 v8, v72

    .end local v72           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_33
.end method
