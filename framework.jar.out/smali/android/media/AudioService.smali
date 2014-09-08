.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$RcDisplayDeathHandler;,
        Landroid/media/AudioService$RemoteControlStackEntry;,
        Landroid/media/AudioService$RcClientDeathHandler;,
        Landroid/media/AudioService$MediaButtonBroadcastReceiver;,
        Landroid/media/AudioService$AudioFocusDeathHandler;,
        Landroid/media/AudioService$FocusStackEntry;,
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$BeatsDeathHandler;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static final BEATS_HEADSET_TYPE:Ljava/lang/String; = "audio.beatsheadset.type"

.field private static final BIT_FM_HEADSET:I = 0x8

.field private static final BIT_FM_SPEAKER:I = 0x10

.field private static final BIT_HDMI_OUT:I = 0x1000

.field private static final BIT_HEADSET:I = 0x1

.field private static final BIT_HEADSET_NO_MIC:I = 0x2

.field private static final BIT_TTY:I = 0x4

.field private static final BIT_TTY_HCO:I = 0x40

.field private static final BIT_TTY_VCO:I = 0x20

.field private static final BIT_TV_OUT:I = 0x100

.field private static final BIT_USB_HEADSET:I = 0x2000

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field protected static final DEBUG_RC:Z = false

.field private static final IN_VOICE_COMM_FOCUS_ID:Ljava/lang/String; = "AudioFocus_For_Phone_Ring_And_Calls"

.field private static final MSG_BEATS_NOTIFY:I = 0x65

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x8

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0xc

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x9

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x5

.field private static final MSG_MEDIA_SERVER_STARTED:I = 0x6

.field private static final MSG_PERSIST_MEDIABUTTONRECEIVER:I = 0xb

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_VIBRATE_SETTING:I = 0x4

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PERSIST_VOLUME_FOR_HEADSET:I = 0x63

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x7

.field private static final MSG_RCDISPLAY_CLEAR:I = 0xd

.field private static final MSG_RCDISPLAY_UPDATE:I = 0xe

.field private static final MSG_SET_FORCE_USE:I = 0xa

.field private static final MSG_SET_SYSTEM_VOLUME:I = 0x0

.field private static final MSG_SET_VOLUME_DIRECT:I = 0x67

.field private static final MSG_SHOW_BEATS_TOAST:I = 0x66

.field private static final NOTIFICATION_VOLUME_DELAY_MS:I = 0x1388

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0xbb8

.field private static final RC_INFO_ALL:I = 0xf

.field private static final RC_INFO_NONE:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SHARED_MSG:I = -0x1

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_DEFAULT_VOLUME_DB:I = -0x14

.field private static final SOUND_EFFECT_FILES:[Ljava/lang/String; = null

.field private static final SOUND_EFFECT_VOLUME:I = 0x3e8

.field private static final SOUND_ENHANCER_EFFECT:Ljava/lang/String; = "audio.soundenhancer.effect"

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static is_vibrate_un_check:Z

.field private static final mAudioFocusLock:Ljava/lang/Object;

.field private static mBeatsEnable:Z

.field private static mNotificationOn:Z

.field private static final mRingingLock:Ljava/lang/Object;


# instance fields
.field private MAX_STREAM_VOLUME:[I

.field private SOUND_EFFECT_FILES_MAP:[[I

.field private SOUND_EFFECT_VOLUME_DB:I

.field private STREAM_VOLUME_ALIAS:[I

.field private final SenseVersion:F

.field private enforceShutterSound:Z

.field private isBTConnected:Z

.field private isHSTouchMaxVolume:Z

.field private isTouchMaxVolume:Z

.field private mAnalogFM:Z

.field private mAppPlay:Z

.field private mArtworkExpectedHeight:I

.field private mArtworkExpectedWidth:I

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mBackupRingerMode:I

.field private mBackupVibrateSettingForNotification:I

.field private mBackupVibrateSettingForRinger:I

.field private mBeatsHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$BeatsDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mBeatsState:Z

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetConnected:Z

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBootCompleted:Z

.field private mBtName:Ljava/lang/String;

.field private mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentRcClient:Landroid/media/IRemoteControlClient;

.field private mCurrentRcClientGen:I

.field private final mCurrentRcLock:Ljava/lang/Object;

.field private mDockAddress:Ljava/lang/String;

.field private mDockMode:Z

.field private mDongleMediaOn:Z

.field private mEqList:[I

.field private mEventAudioOnly:Z

.field private mExitingDockMode:Z

.field private mFMActive:Z

.field private mFocusStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$FocusStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForcedUseForComm:I

.field private mGlobalSoundEffect:I

.field private mHasDockModeProjects:Z

.field private mHeadsetState:I

.field private mHtcSpecificAP:Z

.field private mIgnoreMute:Z

.field private mIsRinging:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mListNum:I

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaServerOk:Z

.field private mMicrophone:I

.field private mMirrorDisplayStatus:Z

.field private mMirrorMode:Z

.field private mMode:I

.field private mMuteAffectedStreams:I

.field private mNotificationsUseRingVolume:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreVolumeIndex:I

.field private mPrevVolDirection:I

.field private mPreviousRingerMode:I

.field private mRCStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Landroid/media/AudioService$RemoteControlStackEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRcDisplay:Landroid/media/IRemoteControlDisplay;

.field private mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mResumeRingVolume:Z

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMaxVolumeStreams:I

.field private mRingerModeMutedStreams:I

.field private mScoAudioState:I

.field private mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field mSkin:Ljava/lang/String;

.field private mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mVibrateSetting:I

.field private mVoiceCapable:Z

.field private mVolumePanel:Lcom/htc/view/VolumePanel;

.field private preRingerMode:I

.field private screenOn:Z

.field private vibrateSettingLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 129
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/media/AudioService;->DEBUG:Z

    .line 203
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 223
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Effect_Tick.ogg"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "KeypressStandard.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "KeypressSpacebar.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "KeypressDelete.ogg"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "KeypressReturn.ogg"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    .line 4671
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    .line 4673
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    .line 5758
    sput-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5759
    sput-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x0

    const/4 v4, 0x1

    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 457
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 177
    sget-object v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->SenseVersion:F

    .line 182
    iput-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    .line 183
    iput-boolean v3, p0, Landroid/media/AudioService;->mAnalogFM:Z

    .line 195
    iput-boolean v3, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 196
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 200
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 216
    iput-boolean v4, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    .line 217
    iput-boolean v3, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 234
    const/16 v5, 0x9

    new-array v5, v5, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_0

    aput-object v6, v5, v3

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    aput-object v6, v5, v4

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    aput-object v6, v5, v8

    const/4 v6, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_3

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v7, v8, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    aput-object v7, v5, v6

    iput-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 247
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_9

    iput-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 264
    const/16 v5, 0xb

    new-array v5, v5, [I

    fill-array-data v5, :array_a

    iput-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 278
    new-instance v5, Landroid/media/AudioService$1;

    invoke-direct {v5, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 316
    iput-boolean v3, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 317
    iput-boolean v3, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 318
    iput-boolean v4, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    .line 348
    new-instance v5, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v5, p0, v9}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 352
    new-instance v5, Landroid/media/AudioService$MediaButtonBroadcastReceiver;

    invoke-direct {v5, p0, v9}, Landroid/media/AudioService$MediaButtonBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v5, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 370
    iput-boolean v3, p0, Landroid/media/AudioService;->mIsRinging:Z

    .line 375
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 382
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 385
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 425
    iput-object v9, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 434
    iput v3, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 437
    iput-boolean v4, p0, Landroid/media/AudioService;->screenOn:Z

    .line 438
    iput-boolean v3, p0, Landroid/media/AudioService;->isBTConnected:Z

    .line 439
    iput-boolean v3, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    .line 441
    iput-boolean v3, p0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 442
    iput-boolean v3, p0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 445
    iput-boolean v3, p0, Landroid/media/AudioService;->mMirrorMode:Z

    .line 448
    iput-boolean v3, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    .line 450
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->vibrateSettingLock:Ljava/lang/Object;

    .line 2270
    iput-boolean v3, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2360
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    .line 2708
    new-instance v5, Landroid/media/AudioService$2;

    invoke-direct {v5, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 3928
    iput-object v9, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 4088
    iput v3, p0, Landroid/media/AudioService;->mMicrophone:I

    .line 4635
    const-string v5, "default"

    iput-object v5, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    .line 4675
    iput-boolean v3, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    .line 4676
    iput v3, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    .line 4678
    new-instance v5, Landroid/media/AudioService$3;

    invoke-direct {v5, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 4768
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    .line 5044
    new-instance v5, Ljava/lang/Object;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    .line 5050
    iput-object v9, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5064
    iput v3, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5145
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    .line 5603
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5604
    iput v10, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5795
    iput-object v9, p0, Landroid/media/AudioService;->mEqList:[I

    .line 5796
    iput v3, p0, Landroid/media/AudioService;->mListNum:I

    .line 459
    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0x50

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v6, 0xaf

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-eq v5, v4, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v6, 0x7

    if-eq v5, v6, :cond_0

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v6, 0xe0

    if-ne v5, v6, :cond_1

    .line 464
    :cond_0
    iput-boolean v4, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    .line 466
    :cond_1
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 467
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 468
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 472
    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    const-string/jumbo v6, "ro.config.vc_call_vol_steps"

    iget-object v7, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v7, v7, v3

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    aput v6, v5, v3

    .line 476
    const-string/jumbo v5, "ro.config.sound_fx_volume"

    const/16 v6, -0x14

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_VOLUME_DB:I

    .line 480
    new-instance v5, Lcom/htc/view/VolumePanel;

    invoke-direct {v5, p1, p0}, Lcom/htc/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    .line 481
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 482
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 483
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 484
    new-instance v5, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v5, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v5, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 485
    iput v3, p0, Landroid/media/AudioService;->mHeadsetState:I

    .line 486
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 488
    iput v3, p0, Landroid/media/AudioService;->mMode:I

    .line 489
    iput-boolean v4, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    .line 493
    iput v3, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 495
    iput v3, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 497
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 499
    iget-object v5, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v5}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 501
    iput-boolean v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 504
    new-instance v0, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 508
    const-string v5, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 509
    const-string v5, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 510
    const-string v5, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v5, "HDMI_DISCONNECTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v5, "HDMI_CONNECTED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 516
    const-string v5, "android.intent.action.USB_ANLG_HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    const-string v5, "android.intent.action.USB_DGTL_HEADSET_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 519
    const-string v5, "android.intent.action.FM"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 520
    const-string v5, "android.intent.action.FMTX"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 522
    const-string v5, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 523
    const-string v5, "com.htc.MIRROR_DISPLAY_STATE_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 524
    const-string v5, "DONGLE_MEDIA_PLAYING"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 525
    const-string v5, "DONGLE_MEDIA_STOP"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    iget-boolean v5, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v5, :cond_2

    .line 533
    sget-object v5, Landroid/app/UiModeManager;->ACTION_EXIT_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 534
    sget-object v5, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 537
    :cond_2
    iget-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 540
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 541
    .local v1, pkgFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 542
    const-string/jumbo v5, "package"

    invoke-virtual {v1, v5}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 543
    iget-object v5, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 556
    .restart local v0       #intentFilter:Landroid/content/IntentFilter;
    const/16 v5, 0x3e8

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 558
    iget-object v5, p0, Landroid/media/AudioService;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 562
    const-string/jumbo v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 564
    .local v2, tmgr:Landroid/telephony/TelephonyManager;
    iget-object v5, p0, Landroid/media/AudioService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v2, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 566
    const-string v5, "isFmDigital"

    invoke-static {v5}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "true"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_0
    iput-boolean v3, p0, Landroid/media/AudioService;->mAnalogFM:Z

    .line 569
    return-void

    :cond_3
    move v3, v4

    .line 566
    goto :goto_0

    .line 234
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_5
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_6
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_7
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    :array_8
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data

    .line 247
    :array_9
    .array-data 0x4
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 264
    :array_a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaServerOk:Z

    return p1
.end method

.method static synthetic access$100(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mResumeRingVolume:Z

    return p1
.end method

.method static synthetic access$10100()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mRingingLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$102(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$10200(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsRinging:Z

    return v0
.end method

.method static synthetic access$10202(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsRinging:Z

    return p1
.end method

.method static synthetic access$10300()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$10400(Landroid/media/AudioService;Landroid/os/IBinder;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeFocusStackEntryForClient(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/media/AudioService;)Ljava/util/Stack;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$10702(Landroid/media/AudioService;Landroid/media/IRemoteControlDisplay;)Landroid/media/IRemoteControlDisplay;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1800(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$200(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 119
    invoke-static/range {p0 .. p7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    return v0
.end method

.method static synthetic access$2202(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    return p1
.end method

.method static synthetic access$2300(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2600(Landroid/media/AudioService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2802(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2902(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    return-void
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;III)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4300(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mAnalogFM:Z

    return v0
.end method

.method static synthetic access$4400(Landroid/media/AudioService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastFMVolume(Z)V

    return-void
.end method

.method static synthetic access$4500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method static synthetic access$5300(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    return v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)[[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5500()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5700(I)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-static {p0}, Landroid/media/AudioService;->getMsgBase(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$5800(Landroid/media/AudioService;)Landroid/media/AudioSystem$ErrorCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$6100(Landroid/media/AudioService;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method static synthetic access$6202(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return p1
.end method

.method static synthetic access$6300(Landroid/media/AudioService;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->onRcDisplayClear()V

    return-void
.end method

.method static synthetic access$6500(Landroid/media/AudioService;Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    return v0
.end method

.method static synthetic access$6800(Landroid/media/AudioService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    return-void
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mAppPlay:Z

    return v0
.end method

.method static synthetic access$6902(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    return p1
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    return v0
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return v0
.end method

.method static synthetic access$7402(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    return p1
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return v0
.end method

.method static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    return p1
.end method

.method static synthetic access$7600(Landroid/media/AudioService;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    return v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7902(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->isBTConnected:Z

    return p1
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mHeadsetState:I

    return v0
.end method

.method static synthetic access$8002(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mHeadsetState:I

    return p1
.end method

.method static synthetic access$8100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mMicrophone:I

    return v0
.end method

.method static synthetic access$8102(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mMicrophone:I

    return p1
.end method

.method static synthetic access$8200(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mFMActive:Z

    return v0
.end method

.method static synthetic access$8202(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mFMActive:Z

    return p1
.end method

.method static synthetic access$8300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->restoreStreamVolumes()V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return v0
.end method

.method static synthetic access$8402(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorMode:Z

    return p1
.end method

.method static synthetic access$8502(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    return p1
.end method

.method static synthetic access$8602(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return p1
.end method

.method static synthetic access$8700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->resetVolumePanel()V

    return-void
.end method

.method static synthetic access$8802(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$8902(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$9002(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$9100(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->getGlobalEffectDB()I

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initEqList()V

    return-void
.end method

.method static synthetic access$9400(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiverForPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9502(Landroid/media/AudioService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Landroid/media/AudioService;->screenOn:Z

    return p1
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    return v0
.end method

.method static synthetic access$9700(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->initializeDockMode()V

    return-void
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/media/AudioService;->deInitializeDockMode()V

    return-void
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget v0, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return v0
.end method

.method static synthetic access$9902(Landroid/media/AudioService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput p1, p0, Landroid/media/AudioService;->mPreVolumeIndex:I

    return p1
.end method

.method private applyOutdoorMode()Z
    .locals 2

    .prologue
    .line 1151
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_0

    .line 1152
    const/4 v0, 0x1

    .line 1155
    :goto_0
    return v0

    .line 1154
    :cond_0
    const-string v0, "AudioService"

    const-string/jumbo v1, "this project does not support outdoor mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private applySoundEffectByHeadset()Z
    .locals 10

    .prologue
    const/16 v9, 0x384

    const/4 v8, 0x2

    const/16 v7, 0x320

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2144
    iget v3, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v3, v3

    const-wide/high16 v5, 0x4010

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 2234
    :cond_0
    :goto_0
    return v1

    .line 2147
    :cond_1
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "applySoundEffectByHeadset() isHeadsetPlugged()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBluetoothHeadsetConnected="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mBeatsState"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2153
    iget-boolean v3, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v3, :cond_4

    .line 2154
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_2

    .line 2155
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_0

    .line 2156
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2158
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2162
    goto :goto_0

    .line 2166
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadsetBT()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2167
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2168
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2169
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2170
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2171
    goto :goto_0

    .line 2174
    :cond_3
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_0

    .line 2175
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2177
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2181
    goto/16 :goto_0

    .line 2187
    :cond_4
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2188
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2190
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2194
    goto/16 :goto_0

    .line 2199
    :cond_5
    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v3, :cond_6

    .line 2200
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v9, :cond_0

    .line 2201
    const-string v1, "AudioService"

    const-string v3, "global_effect=beats"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    const-string v1, "global_effect=Beats"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2203
    iput v9, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2207
    goto/16 :goto_0

    .line 2212
    :cond_6
    invoke-virtual {p0}, Landroid/media/AudioService;->isBeatsHeadset()Z

    move-result v0

    .line 2213
    .local v0, isBeats:Z
    if-eqz v0, :cond_7

    .line 2214
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v7, :cond_0

    .line 2215
    const-string v1, "AudioService"

    const-string v3, "global_effect=none"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2216
    const-string v1, "global_effect=none"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2217
    iput v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2221
    goto/16 :goto_0

    .line 2225
    :cond_7
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v3, v8, :cond_0

    .line 2226
    const-string v1, "AudioService"

    const-string v3, "global_effect=SRS"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    const-string v1, "global_effect=SRS"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 2228
    iput v8, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    move v1, v2

    .line 2232
    goto/16 :goto_0
.end method

.method private backupVibrateSetting()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1256
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "vibrate_on"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1258
    .local v0, old_vibrateSetting:I
    if-nez v0, :cond_0

    .line 1260
    sput-boolean v3, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1261
    invoke-virtual {p0, v4, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1262
    invoke-virtual {p0, v3, v3}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1265
    :cond_0
    return-void
.end method

.method private broadcastFMVolume(Z)V
    .locals 4
    .parameter "isAnalogFM"

    .prologue
    const/16 v3, 0xa

    .line 6172
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 6173
    const-string v1, "AudioService"

    const-string v2, "broadcastFMVolume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6174
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.fmservice"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6175
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6176
    const-string v2, "freq"

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6177
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 6179
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void

    .line 6176
    .restart local v0       #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v3

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    div-int/lit8 v1, v1, 0xa

    goto :goto_0
.end method

.method private broadcastRingerMode()V
    .locals 5

    .prologue
    .line 2964
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2965
    .local v0, broadcast:Landroid/content/Intent;
    const-string v3, "android.media.EXTRA_RINGER_MODE"

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2966
    const/high16 v3, 0x3000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2968
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2969
    .local v1, origCallerIdentityToken:J
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2970
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2971
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 2698
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 2699
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2700
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2701
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2703
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 2704
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 2706
    .end local v0           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private broadcastSoundEffectChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "appName"

    .prologue
    .line 2255
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 2267
    :cond_0
    :goto_0
    return-void

    .line 2259
    :cond_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastSoundEffectChanged beats state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.GLOBAL_BEATSEFFECT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2261
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_BEATSEFFECT_STATUS"

    iget-boolean v2, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2262
    const-string v1, "android.media.EXTRA_CALLER_NAME"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2263
    const-string v1, "android.media.EXTRA_EFFECT_ID"

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2265
    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .parameter "vibrateType"

    .prologue
    .line 2975
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2976
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2977
    .local v0, broadcast:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2978
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2979
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2981
    .end local v0           #broadcast:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private canReassignAudioFocus()Z
    .locals 2

    .prologue
    .line 4863
    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "AudioFocus_For_Phone_Ring_And_Calls"

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4864
    const/4 v0, 0x0

    .line 4866
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 4033
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 4034
    return-void
.end method

.method private checkEqIdAndApplyEffect(I)Z
    .locals 10
    .parameter "id"

    .prologue
    const/16 v9, 0x384

    const/16 v8, 0x320

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 5834
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkEqIdAndApplyEffect isHeadsetPlugged()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mHtcSpecificAP="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5835
    iget-boolean v5, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-eqz v5, :cond_1

    .line 6045
    :cond_0
    :goto_0
    return v3

    .line 5838
    :cond_1
    iget-object v5, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "wireless_display"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/service/WirelessDisplayManager;

    .line 5839
    .local v2, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v2, :cond_3

    .line 5840
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5841
    iget-boolean v5, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v5, :cond_3

    invoke-virtual {v2}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5842
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v8, :cond_2

    .line 5843
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5844
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5845
    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v3, v5}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    move v3, v4

    .line 5847
    goto :goto_0

    .line 5850
    :cond_2
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5851
    iget-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    invoke-direct {p0, v3, v4}, Landroid/media/AudioService;->setBeatsNotification(ZZ)V

    goto :goto_0

    .line 5856
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-nez v5, :cond_4

    .line 5857
    iget v5, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-eq v5, v8, :cond_0

    .line 5858
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5859
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    move v3, v4

    .line 5861
    goto :goto_0

    .line 5865
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_5

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v5, :cond_5

    .line 5866
    if-ne p1, v9, :cond_5

    .line 5867
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5868
    const-string v3, "global_effect=Beats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5869
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5870
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5871
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5873
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others) for BT headset"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5874
    const-string v3, "global_headset_profile=others"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5875
    goto/16 :goto_0

    .line 5879
    :cond_5
    invoke-virtual {p0}, Landroid/media/AudioService;->checkBeatsHeadset()I

    move-result v1

    .line 5881
    .local v1, mBeatsHeadset:I
    if-ne p1, v9, :cond_6

    .line 5882
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_effect=Beats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5883
    const-string v3, "global_effect=Beats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5884
    iput-boolean v4, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 5885
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 5886
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    .line 5888
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    move v3, v4

    .line 5917
    goto/16 :goto_0

    .line 5890
    :pswitch_1
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_urbeats)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5891
    const-string v3, "global_headset_profile=beats_urbeats"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5892
    goto/16 :goto_0

    .line 5895
    :pswitch_2
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_solo)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5896
    const-string v3, "global_headset_profile=beats_solo"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5897
    goto/16 :goto_0

    .line 5900
    :pswitch_3
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_studio)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5901
    const-string v3, "global_headset_profile=beats_studio"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5902
    goto/16 :goto_0

    .line 5905
    :pswitch_4
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=beats_pro)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5906
    const-string v3, "global_headset_profile=beats_pro"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5907
    goto/16 :goto_0

    .line 5910
    :pswitch_5
    const-string v3, "AudioService"

    const-string/jumbo v5, "setParameters(global_headset_profile=others)"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5911
    const-string v3, "global_headset_profile=others"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    move v3, v4

    .line 5912
    goto/16 :goto_0

    .line 6024
    :cond_6
    if-ne p1, v8, :cond_7

    .line 6025
    const-string v5, "AudioService"

    const-string/jumbo v6, "setParameters(global_effect=none)"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6026
    const-string v5, "global_effect=none"

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6027
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 6028
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 6029
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    move v3, v4

    .line 6030
    goto/16 :goto_0

    .line 6033
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget v5, p0, Landroid/media/AudioService;->mListNum:I

    if-ge v0, v5, :cond_9

    .line 6034
    iget-object v5, p0, Landroid/media/AudioService;->mEqList:[I

    aget v5, v5, v0

    if-ne v5, p1, :cond_8

    .line 6035
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setParameters(global_effect=EQ;preset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "global_effect=EQ;preset="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 6037
    iput-boolean v3, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 6038
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 6039
    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v3}, Landroid/media/AudioService;->setGlobalEffectDB(I)V

    move v3, v4

    .line 6040
    goto/16 :goto_0

    .line 6033
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6044
    :cond_9
    const-string v4, "AudioService"

    const-string v5, "id is not in the list"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5888
    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private checkForRingerModeChange(III)Z
    .locals 11
    .parameter "oldIndex"
    .parameter "direction"
    .parameter "streamType"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v10, -0x1

    const/4 v4, 0x1

    .line 2802
    const/4 v0, 0x1

    .line 2803
    .local v0, adjustVolumeIndex:Z
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 2804
    .local v1, newRingerMode:I
    add-int/lit8 v7, p1, 0x5

    div-int/lit8 v2, v7, 0xa

    .line 2805
    .local v2, uiIndex:I
    iget-object v7, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "vibrate_in_silent"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v4, :cond_5

    move v3, v4

    .line 2807
    .local v3, vibeInSilent:Z
    :goto_0
    const-string v7, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkForRingerModeChange: oldIndex = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", direction = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , streamType = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , MAX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v9, v9, p3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v7, v6, :cond_8

    .line 2817
    if-ne p2, v10, :cond_7

    if-gt v2, v4, :cond_7

    .line 2820
    if-nez v3, :cond_0

    iget v7, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v7, v10, :cond_1

    .line 2822
    :cond_0
    if-eqz v3, :cond_6

    move v1, v5

    .line 2824
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    iget v4, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-ne v4, v10, :cond_3

    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    if-ne p3, v6, :cond_3

    .line 2828
    :cond_2
    const/4 v0, 0x0

    .line 2863
    :cond_3
    :goto_2
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v1, v4, :cond_4

    .line 2864
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 2867
    :cond_4
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 2869
    return v0

    .end local v3           #vibeInSilent:Z
    :cond_5
    move v3, v5

    .line 2805
    goto :goto_0

    .restart local v3       #vibeInSilent:Z
    :cond_6
    move v1, v4

    .line 2822
    goto :goto_1

    .line 2831
    :cond_7
    iget-object v5, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v5, v5, p3

    add-int/lit8 v5, v5, -0x1

    if-lt v2, v5, :cond_3

    if-ne p2, v4, :cond_3

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2832
    const/4 v1, 0x3

    goto :goto_2

    .line 2835
    :cond_8
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v7, :cond_b

    .line 2836
    if-ne p2, v10, :cond_a

    .line 2839
    const/4 v1, 0x1

    .line 2844
    :cond_9
    :goto_3
    const/4 v0, 0x0

    goto :goto_2

    .line 2841
    :cond_a
    if-ne p2, v4, :cond_9

    .line 2842
    const/4 v1, 0x2

    goto :goto_3

    .line 2846
    :cond_b
    iget v7, p0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    .line 2847
    if-ne p2, v10, :cond_c

    .line 2848
    const/4 v1, 0x2

    goto :goto_2

    .line 2850
    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    .line 2854
    :cond_d
    if-ne p2, v4, :cond_e

    .line 2857
    if-eqz v3, :cond_f

    move v1, v5

    .line 2859
    :cond_e
    :goto_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_f
    move v1, v6

    .line 2857
    goto :goto_4
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 2606
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 2610
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2612
    :cond_0
    return-void
.end method

.method private checkUpdateRemoteControlDisplay_syncAfRcs(I)V
    .locals 2
    .parameter "infoChangedFlags"

    .prologue
    .line 5442
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5443
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5469
    :goto_0
    return-void

    .line 5447
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$FocusStackEntry;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 5452
    const-string v0, "AudioService"

    const-string v1, "Situation 1. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5459
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget v1, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    iget-object v0, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    iget v0, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    if-eq v1, v0, :cond_3

    .line 5461
    const-string v0, "AudioService"

    const-string v1, "Situation 2. Disable clearRemoteControlDisplay_syncAfRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5468
    :cond_3
    invoke-direct {p0, p1}, Landroid/media/AudioService;->updateRemoteControlDisplay_syncAfRcs(I)V

    goto :goto_0
.end method

.method private clearRemoteControlDisplay_syncAfRcs()V
    .locals 3

    .prologue
    .line 5394
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5395
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5396
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5398
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5399
    return-void

    .line 5396
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 654
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 655
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 656
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 657
    return-void
.end method

.method private createStreamStates()V
    .locals 7

    .prologue
    .line 674
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    .line 675
    .local v2, numStreamTypes:I
    new-array v3, v2, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 677
    .local v3, streams:[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 678
    new-instance v4, Landroid/media/AudioService$VolumeStreamState;

    sget-object v5, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, v0

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-direct {v4, p0, v5, v0, v6}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v4, v3, v0

    .line 677
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 682
    :cond_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    .line 683
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_1

    .line 684
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 685
    .local v1, index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 686
    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 687
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 688
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 682
    .end local v1           #index:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 692
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_4

    .line 693
    iget-object v4, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v4, v4, v0

    if-eq v4, v0, :cond_3

    .line 694
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 695
    .restart local v1       #index:I
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 698
    aget-object v4, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v0

    invoke-direct {p0, v4, v5, v0}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 699
    aget-object v4, v3, v0

    aget-object v5, v3, v0

    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v5, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v5

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v4, v5}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 692
    .end local v1           #index:I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 704
    :cond_4
    return-void
.end method

.method private deInitializeDockMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 627
    const-string v2, "AudioService"

    const-string v3, "deInitializeDockMode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iput-boolean v5, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 629
    iput-boolean v4, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 632
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    invoke-virtual {p0, v5, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 633
    iget v2, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    invoke-virtual {p0, v4, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 635
    iget-object v2, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "vibrate_on"

    iget v4, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 638
    iget v2, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 641
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v6

    aget-object v0, v2, v3

    .line 643
    .local v0, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 644
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 647
    .local v1, tmpIndex:I
    :goto_0
    invoke-direct {p0, v6, v1, v1, v5}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 649
    iput-boolean v5, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    .line 650
    return-void

    .line 646
    .end local v1           #tmpIndex:I
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .restart local v1       #tmpIndex:I
    goto :goto_0
.end method

.method private disconnectBluetoothSco(I)V
    .locals 9
    .parameter "exceptPid"

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 2667
    iget-object v8, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v8

    .line 2668
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 2669
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 2671
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 2672
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 2673
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2675
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2686
    :cond_1
    :goto_0
    monitor-exit v8

    .line 2687
    return-void

    .line 2678
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2680
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 2686
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2684
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private dumpFocusStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 4775
    const-string v2, "\nAudio Focus stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4776
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4777
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4778
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4779
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4780
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     source:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- duration: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$FocusStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 4784
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4785
    return-void
.end method

.method private dumpRCStack(Ljava/io/PrintWriter;)V
    .locals 5
    .parameter "pw"

    .prologue
    .line 5152
    const-string v2, "\nRemote Control stack entries:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5153
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 5154
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5155
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5156
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5157
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  pi: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- ercvr: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- client: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  -- uid: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 5162
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5163
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .parameter "direction"

    .prologue
    .line 2886
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 2887
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2889
    :cond_1
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .parameter "streamType"

    .prologue
    .line 2892
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 2893
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2895
    :cond_1
    return-void
.end method

.method private getActiveStreamType(I)I
    .locals 10
    .parameter "suggestedStreamType"

    .prologue
    const/4 v4, 0x2

    const/high16 v9, -0x8000

    const/16 v5, 0xa

    const/4 v6, 0x0

    const/4 v3, 0x3

    .line 2899
    iget-boolean v7, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v7, :cond_8

    .line 2900
    const/4 v1, 0x0

    .line 2902
    .local v1, isOffhook:Z
    :try_start_0
    const-string/jumbo v7, "phone"

    invoke-static {v7}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2903
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2908
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_4

    .line 2909
    :cond_1
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 2912
    const/4 p1, 0x6

    .line 2957
    .end local v1           #isOffhook:Z
    .end local p1
    :cond_2
    :goto_1
    return p1

    .line 2904
    .restart local v1       #isOffhook:Z
    .restart local p1
    :catch_0
    move-exception v0

    .line 2905
    .local v0, e:Landroid/os/RemoteException;
    const-string v7, "AudioService"

    const-string v8, "Couldn\'t connect to phone service"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_3
    move p1, v6

    .line 2915
    goto :goto_1

    .line 2917
    :cond_4
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v6

    if-eqz v6, :cond_5

    move p1, v3

    .line 2919
    goto :goto_1

    .line 2920
    :cond_5
    if-eq p1, v5, :cond_6

    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-eqz v3, :cond_7

    :cond_6
    move p1, v5

    .line 2921
    goto :goto_1

    .line 2923
    :cond_7
    if-ne p1, v9, :cond_2

    move p1, v4

    .line 2926
    goto :goto_1

    .line 2932
    .end local v1           #isOffhook:Z
    :cond_8
    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v7

    if-ne v7, v3, :cond_a

    .line 2933
    invoke-static {v6}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v4

    if-ne v4, v3, :cond_9

    .line 2936
    const/4 p1, 0x6

    goto :goto_1

    :cond_9
    move p1, v6

    .line 2939
    goto :goto_1

    .line 2941
    :cond_a
    const/4 v7, 0x5

    const/16 v8, 0x1388

    invoke-static {v7, v8}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v7

    if-nez v7, :cond_b

    const/16 v7, 0x1388

    invoke-static {v4, v7}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2946
    :cond_b
    const/4 p1, 0x5

    goto :goto_1

    .line 2947
    :cond_c
    invoke-static {v3, v6}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-nez v4, :cond_d

    if-ne p1, v9, :cond_e

    :cond_d
    move p1, v3

    .line 2951
    goto :goto_1

    .line 2952
    :cond_e
    iget-boolean v3, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v3, :cond_f

    if-ne p1, v5, :cond_2

    :cond_f
    move p1, v5

    .line 2953
    goto :goto_1
.end method

.method private getBluetoothHeadset()Z
    .locals 10

    .prologue
    const/4 v2, 0x0

    .line 2651
    const/4 v9, 0x0

    .line 2652
    .local v9, result:Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v8

    .line 2653
    .local v8, adapter:Landroid/bluetooth/BluetoothAdapter;
    if-eqz v8, :cond_0

    .line 2654
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v8, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v9

    .line 2661
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v6, 0x0

    if-eqz v9, :cond_1

    const/16 v7, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 2663
    return v9

    :cond_1
    move v7, v2

    .line 2661
    goto :goto_0
.end method

.method private getGlobalEffectDB()I
    .locals 6

    .prologue
    const/16 v2, -0x64

    .line 6236
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "audio.soundenhancer.effect"

    const/16 v5, -0x64

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 6237
    .local v1, effect:I
    if-eq v1, v2, :cond_0

    .line 6238
    iput v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    .line 6243
    :goto_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "effect id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6248
    .end local v1           #effect:I
    :goto_1
    return v1

    .line 6241
    .restart local v1       #effect:I
    :cond_0
    const/16 v1, -0x64

    goto :goto_0

    .line 6245
    .end local v1           #effect:I
    :catch_0
    move-exception v0

    .line 6246
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "getGlobalEffectDB"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v2

    .line 6248
    goto :goto_1
.end method

.method private getIdFromString(Ljava/lang/String;)I
    .locals 2
    .parameter "sub"

    .prologue
    const/16 v0, -0x64

    .line 6124
    if-nez p1, :cond_1

    .line 6167
    :cond_0
    :goto_0
    return v0

    .line 6128
    :cond_1
    const-string v1, "Bass Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6129
    const/16 v0, 0x321

    goto :goto_0

    .line 6130
    :cond_2
    const-string v1, "Mid Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6131
    const/16 v0, 0x322

    goto :goto_0

    .line 6132
    :cond_3
    const-string v1, "Treble Booster"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 6133
    const/16 v0, 0x323

    goto :goto_0

    .line 6134
    :cond_4
    const-string v1, "Loudness"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 6135
    const/16 v0, 0x324

    goto :goto_0

    .line 6136
    :cond_5
    const-string v1, "Live"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6137
    const/16 v0, 0x325

    goto :goto_0

    .line 6138
    :cond_6
    const-string v1, "Dance"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6139
    const/16 v0, 0x326

    goto :goto_0

    .line 6140
    :cond_7
    const-string v1, "Warmth"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 6141
    const/16 v0, 0x327

    goto :goto_0

    .line 6142
    :cond_8
    const-string v1, "Sweetener"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 6143
    const/16 v0, 0x328

    goto :goto_0

    .line 6144
    :cond_9
    const-string v1, "Vocal"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 6145
    const/16 v0, 0x329

    goto :goto_0

    .line 6146
    :cond_a
    const-string v1, "Blues"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 6147
    const/16 v0, 0x32a

    goto :goto_0

    .line 6148
    :cond_b
    const-string v1, "Classical"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 6149
    const/16 v0, 0x32b

    goto :goto_0

    .line 6150
    :cond_c
    const-string v1, "Country"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 6151
    const/16 v0, 0x32c

    goto/16 :goto_0

    .line 6152
    :cond_d
    const-string v1, "Jazz"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 6153
    const/16 v0, 0x32d

    goto/16 :goto_0

    .line 6154
    :cond_e
    const-string v1, "Latin"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 6155
    const/16 v0, 0x32e

    goto/16 :goto_0

    .line 6156
    :cond_f
    const-string v1, "New Age"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 6157
    const/16 v0, 0x32f

    goto/16 :goto_0

    .line 6158
    :cond_10
    const-string v1, "Piano"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 6159
    const/16 v0, 0x330

    goto/16 :goto_0

    .line 6160
    :cond_11
    const-string v1, "Pop"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 6161
    const/16 v0, 0x331

    goto/16 :goto_0

    .line 6162
    :cond_12
    const-string v1, "R&B"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 6163
    const/16 v0, 0x332

    goto/16 :goto_0

    .line 6164
    :cond_13
    const-string v1, "Rock"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6165
    const/16 v0, 0x333

    goto/16 :goto_0
.end method

.method private static getMsg(II)I
    .locals 2
    .parameter "baseMsg"
    .parameter "streamType"

    .prologue
    .line 2985
    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static getMsgBase(I)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 2989
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .parameter "cb"
    .parameter "create"

    .prologue
    .line 2615
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2616
    const/4 v0, 0x0

    .line 2617
    .local v0, client:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 2618
    .local v3, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .local v1, client:Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 2619
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2620
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 2621
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 2627
    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 2618
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 2623
    :cond_1
    if-eqz p2, :cond_2

    .line 2624
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2625
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2627
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 2628
    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .end local v2           #i:I
    .end local v3           #size:I
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    .restart local v2       #i:I
    .restart local v3       #size:I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0           #client:Landroid/media/AudioService$ScoClient;
    .restart local v1       #client:Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1           #client:Landroid/media/AudioService$ScoClient;
    .restart local v0       #client:Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method private getSkinContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .parameter "context"

    .prologue
    .line 4646
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4647
    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4655
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 4653
    .restart local p1
    :cond_1
    :try_start_0
    const-string v2, "com.htc"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 4654
    :catch_0
    move-exception v1

    .line 4655
    .local v1, pme:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .parameter "existingValue"
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    .line 1327
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 1330
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 1332
    return p0
.end method

.method private handleA2dpConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 6
    .parameter "btDevice"
    .parameter "state"

    .prologue
    const/4 v5, 0x2

    .line 4043
    if-nez p1, :cond_0

    .line 4083
    :goto_0
    return-void

    .line 4046
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 4047
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4048
    const-string v0, ""

    .line 4050
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v3

    .line 4051
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    .line 4055
    .local v1, isConnected:Z
    :goto_1
    if-eqz v1, :cond_5

    if-eq p2, v5, :cond_5

    .line 4056
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 4057
    if-nez p2, :cond_2

    .line 4061
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 4082
    :cond_2
    :goto_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #isConnected:Z
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4051
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 4065
    .restart local v1       #isConnected:Z
    :cond_4
    :try_start_1
    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    goto :goto_2

    .line 4067
    :cond_5
    if-nez v1, :cond_2

    if-ne p2, v5, :cond_2

    .line 4068
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4070
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4071
    iput-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 4080
    :cond_6
    :goto_3
    invoke-direct {p0, v0, p1}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_2

    .line 4075
    :cond_7
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 4076
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 4077
    iget-object v2, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private handleFocusForCalls(IILandroid/os/IBinder;)V
    .locals 7
    .parameter "oldMode"
    .parameter "newMode"
    .parameter "cb"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x2

    .line 1501
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 1510
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1520
    :cond_1
    if-eq p2, v1, :cond_2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_3

    .line 1524
    :cond_2
    const-string v5, "AudioFocus_For_Phone_Ring_And_Calls"

    const-string/jumbo v6, "system"

    move-object v0, p0

    move v2, v1

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/media/AudioService;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1531
    :cond_3
    if-nez p2, :cond_0

    .line 1533
    const-string v0, "AudioFocus_For_Phone_Ring_And_Calls"

    invoke-virtual {p0, v4, v0}, Landroid/media/AudioService;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 4038
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private initEqList()V
    .locals 18

    .prologue
    .line 6072
    new-instance v3, Ljava/io/File;

    const-string v15, "/system/etc/soundimage/srs_geq10.cfg"

    invoke-direct {v3, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6073
    .local v3, file:Ljava/io/File;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1

    .line 6074
    :cond_0
    const-string v15, "AudioService"

    const-string/jumbo v16, "open file error /system/etc/soundimage/srs_geq10.cfg"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6076
    :cond_1
    const/4 v7, 0x0

    .line 6079
    .local v7, input:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v8, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6085
    .end local v7           #input:Ljava/io/BufferedReader;
    .local v8, input:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 6086
    .local v9, line:Ljava/lang/String;
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 6088
    .local v13, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 6089
    const-string v15, "\""

    invoke-virtual {v9, v15}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 6090
    .local v10, sidx:I
    const-string v15, "\""

    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v9, v15, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 6091
    .local v2, eidx:I
    if-ltz v10, :cond_2

    if-ltz v2, :cond_2

    .line 6094
    add-int/lit8 v15, v10, 0x1

    invoke-virtual {v9, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 6095
    .local v12, substr:Ljava/lang/String;
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "effect name="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6096
    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6098
    .end local v2           #eidx:I
    .end local v10           #sidx:I
    .end local v12           #substr:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 6099
    .local v1, e:Ljava/lang/Exception;
    const-string v15, "AudioService"

    const-string v16, "initEqList"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6101
    .end local v1           #e:Ljava/lang/Exception;
    :cond_3
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 6102
    .local v11, size:I
    if-eqz v11, :cond_8

    .line 6103
    const/4 v6, 0x0

    .line 6104
    .local v6, idx:I
    new-array v14, v11, [I

    .line 6105
    .local v14, tempId:[I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v11, :cond_5

    .line 6106
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Landroid/media/AudioService;->getIdFromString(Ljava/lang/String;)I

    move-result v5

    .line 6107
    .local v5, id:I
    const/16 v15, -0x64

    if-eq v5, v15, :cond_4

    .line 6108
    aput v5, v14, v6

    .line 6109
    add-int/lit8 v6, v6, 0x1

    .line 6105
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 6081
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #idx:I
    .end local v8           #input:Ljava/io/BufferedReader;
    .end local v9           #line:Ljava/lang/String;
    .end local v11           #size:I
    .end local v13           #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14           #tempId:[I
    .restart local v7       #input:Ljava/io/BufferedReader;
    :catch_1
    move-exception v1

    .line 6082
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v15, "AudioService"

    const-string v16, "initEqList()"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6121
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :goto_2
    return-void

    .line 6112
    .end local v7           #input:Ljava/io/BufferedReader;
    .restart local v4       #i:I
    .restart local v6       #idx:I
    .restart local v8       #input:Ljava/io/BufferedReader;
    .restart local v9       #line:Ljava/lang/String;
    .restart local v11       #size:I
    .restart local v13       #temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v14       #tempId:[I
    :cond_5
    new-array v15, v6, [I

    move-object/from16 v0, p0

    iput-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    .line 6113
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v6, :cond_6

    .line 6114
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioService;->mEqList:[I

    aget v16, v14, v4

    aput v16, v15, v4

    .line 6113
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 6116
    :cond_6
    const/4 v4, 0x0

    :goto_4
    if-ge v4, v6, :cond_7

    .line 6117
    const-string v15, "AudioService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " effect id "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/AudioService;->mEqList:[I

    move-object/from16 v17, v0

    aget v17, v17, v4

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6116
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 6119
    :cond_7
    move-object/from16 v0, p0

    iput v6, v0, Landroid/media/AudioService;->mListNum:I

    .end local v4           #i:I
    .end local v6           #idx:I
    .end local v14           #tempId:[I
    :cond_8
    move-object v7, v8

    .line 6121
    .end local v8           #input:Ljava/io/BufferedReader;
    .restart local v7       #input:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method private initializeDockMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 606
    const-string v0, "AudioService"

    const-string v1, "initializeDockMode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iput-boolean v3, p0, Landroid/media/AudioService;->mDockMode:Z

    .line 610
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForRinger:I

    .line 611
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mBackupVibrateSettingForNotification:I

    .line 614
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->mBackupRingerMode:I

    .line 617
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v3, :cond_0

    .line 618
    invoke-virtual {p0, v2}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 621
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 622
    invoke-virtual {p0, v3, v2}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 623
    return-void
.end method

.method private isCurrentRcController(Landroid/app/PendingIntent;)Z
    .locals 1
    .parameter "pi"

    .prologue
    .line 5276
    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v0, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5277
    const/4 v0, 0x1

    .line 5279
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDockMode()Z
    .locals 1

    .prologue
    .line 596
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockMode:Z

    return v0
.end method

.method private isExitingDockMode()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Landroid/media/AudioService;->mExitingDockMode:Z

    return v0
.end method

.method private isStreamModifiedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2878
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .parameter "address"
    .parameter "btDevice"

    .prologue
    const/16 v5, 0x80

    const/4 v6, 0x1

    .line 3933
    invoke-static {v5, v6, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3937
    const-string v3, "A2dpSuspended=false"

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3939
    const-string v1, "false"

    .line 3940
    .local v1, isCarkit:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3941
    .local v2, name:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 3942
    const-string v2, "<unknown>"

    .line 3944
    :cond_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 3945
    .local v0, btClass:Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 3950
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "a2dp_name="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";a2dp_carkit="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 3952
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3954
    iput-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3965
    const-string v3, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v3, v4, v6}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3966
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendIntents, Intent.ACTION_A2DP_PLUG, state 1 , name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3968
    iput-boolean v6, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3969
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    const/4 v4, 0x0

    .line 4004
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 4006
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4008
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4009
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4011
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4021
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 4022
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4023
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 4028
    :goto_0
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 4029
    return-void

    .line 4025
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 5
    .parameter "address"

    .prologue
    const/16 v2, 0x80

    const/4 v4, 0x0

    .line 3973
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3974
    .local v0, noisyIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 3975
    invoke-static {v2, v4, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 3978
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3980
    iget-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 3990
    const-string v1, "android.intent.action.ACTION_A2DP_PLUG"

    iget-object v2, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v4}, Landroid/media/AudioService;->sendIntent(Ljava/lang/String;Ljava/lang/String;I)V

    .line 3991
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendIntents, Intent.ACTION_A2DP_PLUG, state 0 , name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3992
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    .line 3997
    :goto_0
    iput-boolean v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    .line 3998
    return-void

    .line 3994
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "bt name is null , do not send intent"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyTopOfAudioFocusStack()V
    .locals 4

    .prologue
    .line 4711
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    if-eqz v1, :cond_0

    .line 4712
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4714
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4722
    :cond_0
    :goto_0
    return-void

    .line 4716
    :catch_0
    move-exception v0

    .line 4717
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure to signal gain of audio control focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4718
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private onRcDisplayClear()V
    .locals 5

    .prologue
    .line 5345
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5346
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5347
    :try_start_1
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5349
    iget v0, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v4}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5351
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5352
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5353
    return-void

    .line 5351
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5352
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method private onRcDisplayUpdate(Landroid/media/AudioService$RemoteControlStackEntry;I)V
    .locals 7
    .parameter "rcse"
    .parameter "flags"

    .prologue
    .line 5359
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2

    .line 5360
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5361
    :try_start_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5364
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    .line 5367
    iget v1, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget-object v4, p1, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    const/4 v5, 0x0

    invoke-direct {p0, v1, v4, v5}, Landroid/media/AudioService;->setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5373
    :try_start_2
    iget-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    iget v4, p0, Landroid/media/AudioService;->mCurrentRcClientGen:I

    iget v5, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    iget v6, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    invoke-interface {v1, v4, p2, v5, v6}, Landroid/media/IRemoteControlClient;->onInformationRequested(IIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 5384
    :cond_0
    :goto_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5385
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5386
    return-void

    .line 5375
    :catch_0
    move-exception v0

    .line 5376
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v1, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current valid remote client is dead: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5377
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    goto :goto_0

    .line 5384
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 5385
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method private pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 7
    .parameter "mediaIntent"
    .parameter "target"

    .prologue
    const/4 v6, 0x0

    .line 5229
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5252
    :goto_0
    return-void

    .line 5232
    :cond_0
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pushMediaButtonReceiver target ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5233
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5234
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    const/4 v0, 0x0

    .line 5235
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    const/4 v2, 0x0

    .line 5236
    .local v2, wasInsideStack:Z
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5237
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5238
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5239
    const/4 v2, 0x1

    .line 5240
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5244
    :cond_2
    if-nez v2, :cond_3

    .line 5245
    new-instance v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    invoke-direct {v0, p1, p2}, Landroid/media/AudioService$RemoteControlStackEntry;-><init>(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5247
    .restart local v0       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5250
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0xb

    invoke-virtual {v4, v5, v6, v6, p2}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private rcDisplay_startDeathMonitor_syncRcStack()V
    .locals 5

    .prologue
    .line 5645
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v2, :cond_0

    .line 5647
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5648
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-direct {v2, p0, v0}, Landroid/media/AudioService$RcDisplayDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    .line 5650
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5657
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 5651
    .restart local v0       #b:Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 5653
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerRemoteControlDisplay() has a dead client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private rcDisplay_stopDeathMonitor_syncRcStack()V
    .locals 1

    .prologue
    .line 5638
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v0, :cond_0

    .line 5640
    iget-object v0, p0, Landroid/media/AudioService;->mRcDisplayDeathHandler:Landroid/media/AudioService$RcDisplayDeathHandler;

    invoke-virtual {v0}, Landroid/media/AudioService$RcDisplayDeathHandler;->unlinkToRcDisplayDeath()V

    .line 5642
    :cond_0
    return-void
.end method

.method private readPersistedSettings()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 707
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 709
    .local v0, cr:Landroid/content/ContentResolver;
    const-string/jumbo v1, "mode_ringer"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 712
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 713
    iput v3, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 714
    const-string/jumbo v1, "mode_ringer"

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 719
    :cond_0
    iput v3, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 723
    const-string/jumbo v1, "vibrate_on"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 727
    const-string/jumbo v1, "mode_ringer_streams_affected"

    const/16 v2, 0xa6

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 731
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v1, :cond_2

    .line 732
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 736
    :goto_0
    const-string/jumbo v1, "mode_ringer_streams_affected"

    iget v2, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 739
    const-string/jumbo v1, "mute_streams_affected"

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 742
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    or-int/lit16 v1, v1, 0x400

    iput v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 743
    const-string/jumbo v1, "notifications_use_ring_volume"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    .line 746
    iget v1, p0, Landroid/media/AudioService;->mNotificationsUseRingVolume:I

    if-ne v1, v4, :cond_1

    .line 747
    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    const/4 v2, 0x5

    aput v3, v1, v2

    .line 752
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 755
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 756
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 759
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMediaButtonReceiver()V

    .line 760
    return-void

    .line 734
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_0
.end method

.method private removeFocusStackEntry(Ljava/lang/String;Z)V
    .locals 5
    .parameter "clientToRemove"
    .parameter "signal"

    .prologue
    .line 4797
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v2, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4800
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4801
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4802
    if-eqz p2, :cond_0

    .line 4804
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4806
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3

    .line 4807
    const/16 v2, 0xf

    :try_start_0
    invoke-direct {p0, v2}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4808
    monitor-exit v3

    .line 4824
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_0
    return-void

    .line 4808
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 4813
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 4814
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4815
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4816
    .restart local v0       #fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4817
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4819
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 4820
    invoke-virtual {v0}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    goto :goto_0
.end method

.method private removeFocusStackEntryForClient(Landroid/os/IBinder;)V
    .locals 6
    .parameter "cb"

    .prologue
    .line 4833
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$FocusStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    .line 4835
    .local v1, isTopOfStackForClientToRemove:Z
    :goto_0
    iget-object v3, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 4836
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4837
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$FocusStackEntry;

    .line 4838
    .local v0, fse:Landroid/media/AudioService$FocusStackEntry;
    iget-object v3, v0, Landroid/media/AudioService$FocusStackEntry;->mSourceRef:Landroid/os/IBinder;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4839
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AudioFocus  abandonAudioFocus(): removing entry for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 4833
    .end local v0           #fse:Landroid/media/AudioService$FocusStackEntry;
    .end local v1           #isTopOfStackForClientToRemove:Z
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 4845
    .restart local v1       #isTopOfStackForClientToRemove:Z
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$FocusStackEntry;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 4848
    invoke-direct {p0}, Landroid/media/AudioService;->notifyTopOfAudioFocusStack()V

    .line 4850
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 4851
    const/16 v3, 0xf

    :try_start_0
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4852
    monitor-exit v4

    .line 4854
    :cond_3
    return-void

    .line 4852
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private removeMediaButtonReceiver(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "pi"

    .prologue
    .line 5260
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5261
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5262
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5263
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5264
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 5265
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5269
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private removeMediaButtonReceiverForPackage(Ljava/lang/String;)V
    .locals 10
    .parameter "packageName"

    .prologue
    .line 5171
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5172
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5173
    monitor-exit v4

    .line 5200
    :goto_0
    return-void

    .line 5175
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5176
    .local v0, oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5178
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5179
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5180
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5182
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5183
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_1

    .line 5199
    .end local v0           #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 5186
    .restart local v0       #oldTop:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5188
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v6, 0xb

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    .line 5199
    :cond_3
    :goto_2
    monitor-exit v4

    goto :goto_0

    .line 5191
    :cond_4
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    if-eq v0, v3, :cond_3

    .line 5194
    iget-object v5, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v7, 0xb

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    iget-object v3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mReceiverComponent:Landroid/content/ComponentName;

    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method private rescaleIndex(III)I
    .locals 2
    .parameter "index"
    .parameter "srcStream"
    .parameter "dstStream"

    .prologue
    .line 770
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 2690
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 2691
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 2692
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 2693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 2694
    monitor-exit v1

    .line 2695
    return-void

    .line 2694
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private resetVolumePanel()V
    .locals 3

    .prologue
    .line 4637
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v0, v2, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

#   .line 4638
#   .local v0, skinPackage:Ljava/lang/String;
#   iget-object v2, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;
#
#   invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
#
#   move-result v2
#
#   if-eqz v2, :cond_0
#
    .line 4643
    :goto_0
    return-void

    .line 4640
    :cond_0
    iput-object v0, p0, Landroid/media/AudioService;->mSkin:Ljava/lang/String;

    .line 4641
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getSkinContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 4642
    .local v1, wrappedContext:Landroid/content/Context;
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v2, v1}, Lcom/htc/view/VolumePanel;->resetProgressBar(Landroid/content/Context;)V

    goto :goto_0
.end method

.method private restoreMediaButtonReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5207
    iget-object v4, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "media_button_receiver"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5209
    .local v3, receiverName:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 5210
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 5213
    .local v0, eventReceiver:Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5215
    .local v1, mediaButtonIntent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5216
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-static {v4, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 5218
    .local v2, pi:Landroid/app/PendingIntent;
    invoke-virtual {p0, v2, v0}, Landroid/media/AudioService;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5220
    .end local v0           #eventReceiver:Landroid/content/ComponentName;
    .end local v1           #mediaButtonIntent:Landroid/content/Intent;
    .end local v2           #pi:Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method private restoreRingerMode()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 1875
    const-string v4, "AudioService"

    const-string/jumbo v5, "restoreRingerMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1876
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, v6

    aget-object v2, v4, v5

    .line 1878
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1879
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1883
    .local v3, tmpIndex:I
    :goto_0
    iget v1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1884
    .local v1, previousRingerMode:I
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1886
    .local v0, newRingerMode:I
    add-int/lit8 v4, v3, 0x5

    div-int/lit8 v4, v4, 0xa

    if-nez v4, :cond_3

    .line 1887
    iget v4, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 1888
    const/4 v0, 0x1

    .line 1898
    :goto_1
    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v4, :cond_0

    .line 1899
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1902
    const/4 v4, 0x0

    invoke-direct {p0, v6, v3, v3, v4}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 1905
    :cond_0
    iput v1, p0, Landroid/media/AudioService;->mPreviousRingerMode:I

    .line 1906
    return-void

    .line 1881
    .end local v0           #newRingerMode:I
    .end local v1           #previousRingerMode:I
    .end local v3           #tmpIndex:I
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #tmpIndex:I
    goto :goto_0

    .line 1890
    .restart local v0       #newRingerMode:I
    .restart local v1       #previousRingerMode:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 1892
    :cond_3
    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v4

    if-lt v3, v4, :cond_4

    .line 1893
    const/4 v0, 0x3

    goto :goto_1

    .line 1896
    :cond_4
    const/4 v0, 0x2

    goto :goto_1
.end method

.method private restoreStreamVolumes()V
    .locals 6

    .prologue
    .line 1852
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 1853
    .local v0, numStreamTypes:I
    const/4 v2, 0x0

    .local v2, streamType:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 1854
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v3, v2

    .line 1855
    .local v1, streamState:Landroid/media/AudioService$VolumeStreamState;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreStreamVolumes streamState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isHeadsetPlugged(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1857
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1853
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1859
    :cond_0
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-direct {p0, v2, v3}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_1

    .line 1867
    .end local v1           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_1
    return-void
.end method

.method private restoreVibrateSetting()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1269
    sget-boolean v0, Landroid/media/AudioService;->is_vibrate_un_check:Z

    if-eqz v0, :cond_0

    .line 1270
    invoke-virtual {p0, v1, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1271
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService;->setVibrateSetting(II)V

    .line 1272
    sput-boolean v1, Landroid/media/AudioService;->is_vibrate_un_check:Z

    .line 1274
    :cond_0
    return-void
.end method

.method private final declared-synchronized sendIntent(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .parameter "intentType"
    .parameter "name"
    .parameter "state"

    .prologue
    .line 3920
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3921
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3922
    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3923
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3925
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3926
    monitor-exit p0

    return-void

    .line 3920
    .end local v0           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private static sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V
    .locals 4
    .parameter "handler"
    .parameter "baseMsg"
    .parameter "streamType"
    .parameter "existingMsgPolicy"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2994
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    move v0, p1

    .line 2996
    .local v0, msg:I
    :goto_0
    if-nez p3, :cond_2

    .line 2997
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 3002
    :cond_0
    invoke-virtual {p0, v0, p4, p5, p6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p7

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3004
    :goto_1
    return-void

    .line 2994
    .end local v0           #msg:I
    :cond_1
    invoke-static {p1, p2}, Landroid/media/AudioService;->getMsg(II)I

    move-result v0

    goto :goto_0

    .line 2998
    .restart local v0       #msg:I
    :cond_2
    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 4
    .parameter "streamType"
    .parameter "oldIndex"
    .parameter "index"
    .parameter "flags"

    .prologue
    .line 1002
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1003
    const/4 p1, 0x5

    .line 1006
    :cond_0
    const/16 v1, 0xa

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 1007
    :cond_1
    const/4 p1, 0x3

    .line 1008
    iget-boolean v1, p0, Landroid/media/AudioService;->mAnalogFM:Z

    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastFMVolume(Z)V

    .line 1011
    :cond_2
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[bf] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v1, p1, p4}, Lcom/htc/view/VolumePanel;->postVolumeChanged(II)V

    .line 1013
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[af] postVolumeChanged: streamType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    add-int/lit8 v1, p2, 0x5

    div-int/lit8 p2, v1, 0xa

    .line 1016
    add-int/lit8 v1, p3, 0x5

    div-int/lit8 p3, v1, 0xa

    .line 1017
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1018
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1019
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1020
    const-string v1, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1021
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1022
    return-void
.end method

.method private setBeatsNotification(ZZ)V
    .locals 7
    .parameter "NotificationOn"
    .parameter "BeatsEnable"

    .prologue
    const/4 v6, 0x1

    .line 5762
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setBeatsNotification() NotificationOn="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", BeatsEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5763
    const/4 v1, 0x0

    .line 5764
    .local v1, changed:Z
    const/4 v0, 0x0

    .line 5767
    .local v0, NewNf:Z
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-eq v3, p1, :cond_1

    .line 5768
    if-ne p1, v6, :cond_0

    .line 5769
    const/4 v0, 0x1

    .line 5771
    :cond_0
    sput-boolean p1, Landroid/media/AudioService;->mNotificationOn:Z

    .line 5772
    const/4 v1, 0x1

    .line 5776
    :cond_1
    sget-boolean v3, Landroid/media/AudioService;->mNotificationOn:Z

    if-ne v3, v6, :cond_2

    .line 5777
    sget-boolean v3, Landroid/media/AudioService;->mBeatsEnable:Z

    if-eq v3, p2, :cond_2

    .line 5778
    sput-boolean p2, Landroid/media/AudioService;->mBeatsEnable:Z

    .line 5779
    const/4 v1, 0x1

    .line 5783
    :cond_2
    if-ne v1, v6, :cond_3

    .line 5784
    const-string v3, "AudioService"

    const-string/jumbo v4, "send ACTION_HTC_BEATS_NOTIFICATION"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5785
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.htc.intent.action.BEATS_NOTIFICATION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5786
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "NotificationOn"

    sget-boolean v4, Landroid/media/AudioService;->mNotificationOn:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5787
    const-string v3, "NewNf"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5788
    const-string v3, "BeatsEnable"

    sget-boolean v4, Landroid/media/AudioService;->mBeatsEnable:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5789
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 5791
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    return-void
.end method

.method private setGlobalEffectDB(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 6252
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set effect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6254
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "audio.soundenhancer.effect"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 6255
    iput p1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6259
    :goto_0
    return-void

    .line 6256
    :catch_0
    move-exception v0

    .line 6257
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string/jumbo v2, "setGlobalEffectDB"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setNewRcClientGenerationOnClients_syncRcsCurrc(I)V
    .locals 6
    .parameter "newClientGeneration"

    .prologue
    .line 5308
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5309
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5310
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5311
    .local v1, se:Landroid/media/AudioService$RemoteControlStackEntry;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-eqz v3, :cond_0

    .line 5313
    :try_start_0
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->setCurrentClientGenerationId(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5314
    :catch_0
    move-exception v0

    .line 5315
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dead client in setNewRcClientGenerationOnClients_syncRcsCurrc()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 5317
    invoke-virtual {v1}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    goto :goto_0

    .line 5321
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #se:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_1
    return-void
.end method

.method private setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 4
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5291
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eqz v1, :cond_0

    .line 5293
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v1, p1, p2, p3}, Landroid/media/IRemoteControlDisplay;->setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5302
    :cond_0
    :goto_0
    return-void

    .line 5295
    :catch_0
    move-exception v0

    .line 5296
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dead display in setNewRcClientOnDisplays_syncRcsCurrc() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5298
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5299
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    goto :goto_0
.end method

.method private setNewRcClient_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V
    .locals 0
    .parameter "newClientGeneration"
    .parameter "newMediaIntent"
    .parameter "clearing"

    .prologue
    .line 5334
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->setNewRcClientOnDisplays_syncRcsCurrc(ILandroid/app/PendingIntent;Z)V

    .line 5336
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNewRcClientGenerationOnClients_syncRcsCurrc(I)V

    .line 5337
    return-void
.end method

.method private setRingerModeInt(IZ)V
    .locals 10
    .parameter "ringerMode"
    .parameter "persist"

    .prologue
    const/4 v7, 0x2

    const/4 v1, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1162
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasDockModeProjects:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-eqz v0, :cond_1

    if-ne p1, v5, :cond_1

    .line 1163
    const-string v0, "AudioService"

    const-string v1, "Can\'t change to Vibrate Mode while enter Dock Mode."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    :cond_0
    :goto_0
    return-void

    .line 1167
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->isDockMode()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Landroid/media/AudioService;->isExitingDockMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v5, :cond_a

    if-eq p1, v5, :cond_a

    .line 1170
    invoke-direct {p0}, Landroid/media/AudioService;->restoreVibrateSetting()V

    .line 1178
    :cond_2
    :goto_1
    const-string v0, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setRingerModeInt pre="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , now="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , persist="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    iput v0, p0, Landroid/media/AudioService;->preRingerMode:I

    .line 1181
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1187
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1188
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_2
    if-ltz v9, :cond_e

    .line 1192
    invoke-direct {p0, v9}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1193
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v7, :cond_5

    .line 1197
    :cond_3
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    if-ne v0, v7, :cond_4

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-nez v0, :cond_4

    .line 1200
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    const/16 v2, 0xa

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0, v2}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1203
    :cond_4
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_b

    .line 1204
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1206
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1214
    :cond_5
    :goto_3
    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-ne v0, v1, :cond_7

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_6

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v0, :cond_7

    .line 1216
    :cond_6
    const-string v0, "AudioService"

    const-string/jumbo v2, "outdoor to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1218
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1219
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1221
    :cond_7
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_9

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-eq v0, v5, :cond_8

    iget v0, p0, Landroid/media/AudioService;->preRingerMode:I

    if-nez v0, :cond_9

    .line 1223
    :cond_8
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v3, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1225
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    .line 1226
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 1188
    :cond_9
    :goto_4
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1171
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_a
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_2

    if-ne p1, v5, :cond_2

    .line 1173
    invoke-direct {p0}, Landroid/media/AudioService;->backupVibrateSetting()V

    goto/16 :goto_1

    .line 1208
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_b
    const-string v0, "AudioService"

    const-string/jumbo v2, "silent or vibrate back to normal"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v3, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1210
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto/16 :goto_3

    .line 1229
    :cond_c
    invoke-virtual {p0, v9}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v7, :cond_9

    .line 1231
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-ne v0, v1, :cond_d

    .line 1232
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to outdoor"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v9

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v2

    invoke-virtual {v0, v6, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1234
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMaxVolumeStreams:I

    goto :goto_4

    .line 1236
    :cond_d
    const-string v0, "AudioService"

    const-string/jumbo v2, "normal to silent or vibrate"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1237
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v9

    invoke-virtual {v0, v6, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1238
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v5, v9

    or-int/2addr v0, v2

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_4

    .line 1246
    :cond_e
    if-eqz p2, :cond_0

    .line 1247
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, -0x1

    const/16 v7, 0xbb8

    move v4, v3

    move v5, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0
.end method

.method private setStreamVolumeIndex(II)V
    .locals 4
    .parameter "stream"
    .parameter "index"

    .prologue
    const/4 v3, 0x7

    .line 763
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamVolumeIndex(), stream = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    if-ne p1, v3, :cond_0

    iget-boolean v0, p0, Landroid/media/AudioService;->enforceShutterSound:Z

    if-eqz v0, :cond_0

    .line 765
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v3

    mul-int/lit8 p2, v0, 0xa

    .line 766
    :cond_0
    add-int/lit8 v0, p2, 0x5

    div-int/lit8 v0, v0, 0xa

    invoke-static {p1, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 767
    return-void
.end method

.method private setStreamVolumeInt(IIZZ)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "force"
    .parameter "lastAudible"

    .prologue
    .line 1035
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v0, p1

    .line 1036
    .local v6, streamState:Landroid/media/AudioService$VolumeStreamState;
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setStreamVolumeInt(), streamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force setting = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lastAudible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v6}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1044
    const-string v0, "AudioService"

    const-string/jumbo v1, "streamState is fixed, adjust lastAudible only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    if-eqz p2, :cond_0

    invoke-virtual {v6}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1048
    invoke-virtual {v6, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 1053
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1054
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1057
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v7, 0xbb8

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1063
    :cond_2
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1064
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p3, :cond_0

    .line 1067
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1070
    :cond_4
    invoke-virtual {v6, p2, p4}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p3, :cond_0

    .line 1071
    :cond_5
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v2, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method private syncSetIndex(Landroid/media/AudioService$VolumeStreamState;Z)V
    .locals 10
    .parameter "streamState"
    .parameter "setToCurrent"

    .prologue
    const/16 v7, 0xbb8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 3022
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[AudioHandler] syncSetIndex Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    if-eqz p2, :cond_3

    .line 3024
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3025
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 3030
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 3031
    .local v8, numStreamTypes:I
    add-int/lit8 v9, v8, -0x1

    .local v9, streamType:I
    :goto_1
    if-ltz v9, :cond_3

    .line 3032
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eq v9, v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v0, v0, v9

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 3034
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3035
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v9

    aget-object v0, v0, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 3031
    :cond_0
    :goto_2
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 3027
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_1
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_0

    .line 3037
    .restart local v8       #numStreamTypes:I
    .restart local v9       #streamType:I
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v9

    aget-object v0, v0, v1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    invoke-direct {p0, v9, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_2

    .line 3043
    .end local v8           #numStreamTypes:I
    .end local v9           #streamType:I
    :cond_3
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3044
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 3049
    :goto_3
    return-void

    .line 3047
    :cond_4
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {p1}, Landroid/media/AudioService$VolumeStreamState;->access$3400(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v2

    move v1, v4

    move v5, v4

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_3
.end method

.method private unmuteIfNecessary(IZI)Z
    .locals 7
    .parameter "streamType"
    .parameter "adjustVolume"
    .parameter "direction"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 928
    move v0, p2

    .line 929
    .local v0, adjust:Z
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v4, v4, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v4}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1}, Landroid/media/AudioService;->isStreamModifiedByRingerMode(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 930
    if-ne p3, v6, :cond_0

    .line 931
    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v4, p1

    .line 932
    .local v3, streamState:Landroid/media/AudioService$VolumeStreamState;
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 933
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 934
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v4, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 935
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v4, v5, v5}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 933
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 938
    .end local v1           #i:I
    .end local v2           #size:I
    .end local v3           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_0
    const/4 v0, 0x0

    .line 940
    :cond_1
    return v0
.end method

.method private updateRemoteControlDisplay_syncAfRcs(I)V
    .locals 6
    .parameter "infoChangedFlags"

    .prologue
    .line 5410
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5411
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    move v0, p1

    .line 5414
    .local v0, infoFlagsAboutToBeUsed:I
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    if-nez v2, :cond_0

    .line 5416
    invoke-direct {p0}, Landroid/media/AudioService;->clearRemoteControlDisplay_syncAfRcs()V

    .line 5429
    :goto_0
    return-void

    .line 5419
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mCurrentRcLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5420
    :try_start_0
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v4, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 5422
    const/16 v0, 0xf

    .line 5424
    :cond_1
    iget-object v2, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iput-object v2, p0, Landroid/media/AudioService;->mCurrentRcClient:Landroid/media/IRemoteControlClient;

    .line 5425
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5427
    iget-object v2, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5, v1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 5425
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 661
    monitor-enter p0

    .line 662
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 665
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 666
    :catch_0
    move-exception v0

    .line 667
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 670
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 671
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 5
    .parameter "fl"
    .parameter "clientId"

    .prologue
    const/4 v4, 0x1

    .line 4968
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  abandonAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4971
    :try_start_0
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4972
    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, p2, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4973
    monitor-exit v2

    .line 4982
    :goto_0
    return v4

    .line 4973
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/util/ConcurrentModificationException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4974
    :catch_0
    move-exception v0

    .line 4978
    .local v0, cme:Ljava/util/ConcurrentModificationException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FATAL EXCEPTION AudioFocus  abandonAudioFocus() caused "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4979
    invoke-virtual {v0}, Ljava/util/ConcurrentModificationException;->printStackTrace()V

    goto :goto_0
.end method

.method public adjustStreamVolume(III)V
    .locals 19
    .parameter "streamType"
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 813
    if-nez p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isBluetoothScoOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 814
    const/16 p1, 0x6

    .line 816
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mDongleMediaOn:Z

    if-eqz v3, :cond_1

    .line 817
    const-string v3, "AudioService"

    const-string v4, "Force to adjust Media volume because playing media content with Dongle."

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/16 p1, 0x3

    .line 821
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 822
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 824
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v17, v3, p1

    .line 825
    .local v17, streamTypeAlias:I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v3, v17

    .line 828
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 829
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .line 834
    .local v18, tmpIndex:I
    :goto_0
    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    if-eqz v3, :cond_a

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    .line 835
    .local v15, oldIndex:I
    :goto_1
    const/4 v11, 0x1

    .line 839
    .local v11, adjustVolume:Z
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_2

    const/4 v3, 0x2

    move/from16 v0, v17

    if-eq v0, v3, :cond_2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v3, :cond_4

    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_4

    .line 843
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mRingerMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 844
    and-int/lit8 p3, p3, -0x11

    .line 848
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v17

    invoke-direct {v0, v15, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v11

    .line 851
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 852
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_5

    .line 853
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    .line 854
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_6

    .line 855
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    .line 858
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 859
    if-nez p2, :cond_7

    .line 860
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1000(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_7

    .line 861
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    if-nez v3, :cond_b

    .line 862
    and-int/lit8 p3, p3, -0x5

    .line 880
    :cond_7
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p2

    invoke-direct {v0, v1, v11, v2}, Landroid/media/AudioService;->unmuteIfNecessary(IZI)Z

    move-result v11

    .line 885
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 887
    if-eqz v11, :cond_f

    .line 890
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v14

    .line 891
    .local v14, numStreamTypes:I
    add-int/lit8 v12, v14, -0x1

    .local v12, i:I
    :goto_3
    if-ltz v12, :cond_f

    .line 892
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v3, v3, v12

    move/from16 v0, v17

    if-ne v3, v0, :cond_8

    .line 893
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v16, v3, v12

    .line 895
    .local v16, s:Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->adjustLastAudibleIndex(I)V

    .line 900
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 901
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v4, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 891
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_8
    :goto_4
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    .line 831
    .end local v11           #adjustVolume:Z
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v15           #oldIndex:I
    .end local v18           #tmpIndex:I
    :cond_9
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v18

    .restart local v18       #tmpIndex:I
    goto/16 :goto_0

    :cond_a
    move/from16 v15, v18

    .line 834
    goto/16 :goto_1

    .line 864
    .restart local v11       #adjustVolume:Z
    .restart local v15       #oldIndex:I
    :cond_b
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isHSTouchMaxVolume:Z

    goto :goto_2

    .line 869
    :cond_c
    if-nez p2, :cond_7

    .line 870
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v4, v4, p1

    if-ne v3, v4, :cond_7

    .line 871
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    if-nez v3, :cond_d

    .line 872
    and-int/lit8 p3, p3, -0x5

    goto :goto_2

    .line 874
    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->isTouchMaxVolume:Z

    goto :goto_2

    .line 904
    .restart local v12       #i:I
    .restart local v14       #numStreamTypes:I
    .restart local v16       #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v10, 0xbb8

    move/from16 v5, p1

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_4

    .line 910
    .end local v12           #i:I
    .end local v14           #numStreamTypes:I
    .end local v16           #s:Landroid/media/AudioService$VolumeStreamState;
    :cond_f
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .line 921
    .local v13, index:I
    :goto_5
    const/4 v3, 0x3

    move/from16 v0, p1

    if-ne v0, v3, :cond_10

    .line 922
    and-int/lit8 p3, p3, -0x5

    .line 924
    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v15, v13, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 925
    return-void

    .line 912
    .end local v13           #index:I
    :cond_11
    if-eqz v11, :cond_12

    move/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 915
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move/from16 v5, v17

    invoke-static/range {v3 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 918
    :cond_12
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v13

    .restart local v13       #index:I
    goto :goto_5
.end method

.method public adjustSuggestedStreamVolume(III)V
    .locals 3
    .parameter "direction"
    .parameter "suggestedStreamType"
    .parameter "flags"

    .prologue
    .line 786
    iget-boolean v1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    if-eqz v1, :cond_0

    .line 788
    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 789
    const-string v1, "AudioService"

    const-string/jumbo v2, "setStreamVolumeIndex STREAM_NOTIFICATION value: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_0
    and-int/lit8 v1, p3, 0x20

    if-eqz v1, :cond_3

    .line 795
    move v0, p2

    .line 801
    .local v0, streamType:I
    :goto_0
    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 804
    :cond_1
    and-int/lit8 p3, p3, -0x5

    .line 807
    :cond_2
    invoke-virtual {p0, v0, p1, p3}, Landroid/media/AudioService;->adjustStreamVolume(III)V

    .line 808
    return-void

    .line 797
    .end local v0           #streamType:I
    :cond_3
    invoke-direct {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0       #streamType:I
    goto :goto_0
.end method

.method public adjustVolume(II)V
    .locals 1
    .parameter "direction"
    .parameter "flags"

    .prologue
    .line 779
    const/high16 v0, -0x8000

    invoke-virtual {p0, p1, v0, p2}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(III)V

    .line 780
    return-void
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .parameter "method"

    .prologue
    .line 3007
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3009
    const/4 v1, 0x1

    .line 3015
    :goto_0
    return v1

    .line 3011
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3014
    .local v0, msg:Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3015
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public checkBeatsHeadset()I
    .locals 6

    .prologue
    .line 2086
    :try_start_0
    const-string v3, "htchardware"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 2087
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_2

    .line 2088
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v2

    .line 2089
    .local v2, type:Ljava/lang/String;
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "headset type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const-string v3, "headset_beats"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2091
    const/16 v3, 0x3e8

    .line 2103
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :goto_0
    return v3

    .line 2093
    .restart local v1       #hwService:Landroid/os/IHtcHardwareService;
    .restart local v2       #type:Ljava/lang/String;
    :cond_0
    const-string v3, "headset_beats_solo"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2094
    const/16 v3, 0x3e9

    goto :goto_0

    .line 2097
    :cond_1
    const/16 v3, 0x3f2

    goto :goto_0

    .line 2100
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v2           #type:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2101
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "AudioService"

    const-string v4, "get IHtcHardwareService failed in checkBeatsHeadset()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2103
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    const/16 v3, -0x3e9

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .parameter "exceptPid"
    .parameter "stopSco"

    .prologue
    .line 2632
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2633
    const/4 v2, 0x0

    .line 2634
    .local v2, savedClient:Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2635
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2636
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 2637
    .local v0, cl:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 2638
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 2635
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2640
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 2643
    .end local v0           #cl:Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2644
    if-eqz v2, :cond_2

    .line 2645
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2647
    :cond_2
    monitor-exit v5

    .line 2648
    return-void

    .line 2647
    .end local v1           #i:I
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 5746
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpFocusStack(Ljava/io/PrintWriter;)V

    .line 5747
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRCStack(Ljava/io/PrintWriter;)V

    .line 5749
    const-string v2, "AudioService stream volume:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5750
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 5751
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 5752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stream Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", headset index: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5751
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5755
    :cond_0
    return-void
.end method

.method public getBeatsHeadset()I
    .locals 4

    .prologue
    .line 6193
    const/16 v0, -0x3e9

    .line 6194
    .local v0, headset_type:I
    invoke-virtual {p0}, Landroid/media/AudioService;->checkBeatsHeadset()I

    move-result v0

    .line 6195
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getHeadsetType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6196
    return v0
.end method

.method public getBeatsState()Z
    .locals 4

    .prologue
    .line 2126
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 2127
    const/4 v0, 0x0

    .line 2129
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBeatsState:Z

    goto :goto_0
.end method

.method public getGlobalEffect()I
    .locals 3

    .prologue
    .line 6049
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getGlobalEffect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6050
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    return v0
.end method

.method public getHeadsetProfile()[I
    .locals 6

    .prologue
    .line 1996
    const-string v3, "AudioService"

    const-string v4, "getHeadsetProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    new-array v2, v3, [I

    .line 1998
    .local v2, volumeSettings:[I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 1999
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2000
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getHeadsetIndex()I

    move-result v3

    aput v3, v2, v0

    .line 2001
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2003
    :cond_0
    return-object v2
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1124
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1125
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1539
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRingerMode()I
    .locals 1

    .prologue
    .line 1130
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    return v0
.end method

.method public getSpeakerProfile()[I
    .locals 6

    .prologue
    .line 2007
    const-string v3, "AudioService"

    const-string v4, "getSpeakerProfile()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v3

    new-array v2, v3, [I

    .line 2009
    .local v2, volumeSettings:[I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2010
    .local v1, numStreamTypes:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2011
    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex()I

    move-result v3

    aput v3, v2, v0

    .line 2012
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2014
    :cond_0
    return-object v2
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1117
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1118
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1104
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1107
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    .line 1110
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    goto :goto_0
.end method

.method public getVibrateSetting(I)I
    .locals 4
    .parameter "vibrateType"

    .prologue
    .line 1298
    const/4 v0, 0x0

    .line 1299
    .local v0, setting:I
    iget-object v2, p0, Landroid/media/AudioService;->vibrateSettingLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1300
    :try_start_0
    iget v1, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v3, p1, 0x2

    shr-int/2addr v1, v3

    and-int/lit8 v0, v1, 0x3

    .line 1301
    monitor-exit v2

    .line 1302
    return v0

    .line 1301
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isBTConnected()Z
    .locals 1

    .prologue
    .line 590
    iget-boolean v0, p0, Landroid/media/AudioService;->isBTConnected:Z

    return v0
.end method

.method public isBeatsHeadset()Z
    .locals 7

    .prologue
    .line 2068
    const/4 v2, 0x0

    .line 2070
    .local v2, isBeats:Z
    :try_start_0
    const-string v4, "htchardware"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/IHtcHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IHtcHardwareService;

    move-result-object v1

    .line 2071
    .local v1, hwService:Landroid/os/IHtcHardwareService;
    if-eqz v1, :cond_1

    .line 2072
    invoke-interface {v1}, Landroid/os/IHtcHardwareService;->getHeadsetType()Ljava/lang/String;

    move-result-object v3

    .line 2073
    .local v3, type:Ljava/lang/String;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "headset type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2074
    const-string v4, "headset_beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "headset_beats_solo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 2075
    :cond_0
    const/4 v2, 0x1

    .line 2081
    .end local v1           #hwService:Landroid/os/IHtcHardwareService;
    .end local v3           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    return v2

    .line 2078
    :catch_0
    move-exception v0

    .line 2079
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "AudioService"

    const-string v5, "get IHtcHardwareService failed in isBeatsHeadset()"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isBeatsHeadsetBT()Z
    .locals 6

    .prologue
    .line 6058
    const/4 v2, 0x0

    .line 6059
    .local v2, isBtBeats:Z
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 6060
    const/4 v4, 0x0

    .line 6068
    :goto_0
    return v4

    .line 6062
    :cond_0
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 6063
    .local v3, name:Ljava/lang/String;
    const-string v4, "beats"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 6064
    .local v0, index:I
    iget-object v4, p0, Landroid/media/AudioService;->mBtName:Ljava/lang/String;

    const-string v5, "Beatbox Portable"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 6065
    .local v1, index_box:I
    if-gez v0, :cond_1

    if-ltz v1, :cond_2

    .line 6066
    :cond_1
    const/4 v2, 0x1

    :cond_2
    move v4, v2

    .line 6068
    goto :goto_0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 1940
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDongleConnected()Z
    .locals 1

    .prologue
    .line 6186
    iget-boolean v0, p0, Landroid/media/AudioService;->mDongleMediaOn:Z

    return v0
.end method

.method public isFMActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6182
    iget-boolean v1, p0, Landroid/media/AudioService;->mFMActive:Z

    if-nez v1, :cond_0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isHeadsetPlugged()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wireless_display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    .line 576
    .local v0, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 578
    const-string v2, "AudioService"

    const-string v3, "isHeadsetPlugged() - in mirror mode return false"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v2, p0, Landroid/media/AudioService;->mHeadsetState:I

    if-lez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1922
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2882
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .parameter "streamType"

    .prologue
    const/4 v0, 0x1

    .line 2873
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .parameter "streamType"

    .prologue
    .line 1099
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    #calls: Landroid/media/AudioService$VolumeStreamState;->muteCount()I
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$1100(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadSoundEffects()Z
    .locals 13

    .prologue
    .line 1562
    iget-object v9, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1563
    :try_start_0
    iget-boolean v8, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v8, :cond_0

    .line 1564
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() called before boot complete"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    const/4 v8, 0x0

    monitor-exit v9

    .line 1671
    :goto_0
    return v8

    .line 1568
    :cond_0
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-eqz v8, :cond_1

    .line 1569
    const/4 v8, 0x1

    monitor-exit v9

    goto :goto_0

    .line 1670
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .line 1571
    :cond_1
    :try_start_1
    new-instance v8, Landroid/media/SoundPool;

    const/4 v10, 0x4

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-direct {v8, v10, v11, v12}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1572
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v8, :cond_2

    .line 1573
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() could not allocate sound pool"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v8, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1578
    :cond_2
    const/4 v8, 0x0

    :try_start_2
    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    .line 1579
    new-instance v8, Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-direct {v8, p0}, Landroid/media/AudioService$SoundPoolListenerThread;-><init>(Landroid/media/AudioService;)V

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1580
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolListenerThread;->start()V

    .line 1582
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1587
    :goto_1
    :try_start_3
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    if-nez v8, :cond_4

    .line 1588
    const-string v8, "AudioService"

    const-string v10, "loadSoundEffects() could not create SoundPool listener or thread"

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_3

    .line 1590
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1591
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1593
    :cond_3
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1594
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1595
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1596
    const/4 v8, 0x0

    monitor-exit v9

    goto :goto_0

    .line 1583
    :catch_0
    move-exception v0

    .line 1584
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool listener thread."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1604
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_4
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    new-array v5, v8, [I

    .line 1605
    .local v5, poolId:[I
    const/4 v2, 0x0

    .local v2, fileIdx:I
    :goto_2
    sget-object v8, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v8, v8

    if-ge v2, v8, :cond_5

    .line 1606
    const/4 v8, -0x1

    aput v8, v5, v2

    .line 1605
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1614
    :cond_5
    const/4 v4, 0x0

    .line 1615
    .local v4, lastSample:I
    const/4 v1, 0x0

    .local v1, effect:I
    :goto_3
    const/16 v8, 0x9

    if-ge v1, v8, :cond_9

    .line 1617
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-nez v8, :cond_6

    .line 1615
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1620
    :cond_6
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aget v8, v5, v8

    const/4 v10, -0x1

    if-ne v8, v10, :cond_8

    .line 1621
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "/media/audio/ui/"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v10, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v10, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1624
    .local v3, filePath:Ljava/lang/String;
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    const/4 v10, 0x0

    invoke-virtual {v8, v3, v10}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v6

    .line 1625
    .local v6, sampleId:I
    if-gtz v6, :cond_7

    .line 1626
    const-string v8, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Soundpool could not load file: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1628
    :cond_7
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aput v6, v8, v10

    .line 1629
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x0

    aget v8, v8, v10

    aput v6, v5, v8

    .line 1630
    move v4, v6

    goto :goto_4

    .line 1633
    .end local v3           #filePath:Ljava/lang/String;
    .end local v6           #sampleId:I
    :cond_8
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v1

    const/4 v12, 0x0

    aget v11, v11, v12

    aget v11, v5, v11

    aput v11, v8, v10

    goto :goto_4

    .line 1637
    :cond_9
    if-eqz v4, :cond_c

    .line 1638
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8, v4}, Landroid/media/AudioService$SoundPoolCallback;->setLastSample(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1641
    :try_start_4
    iget-object v8, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V

    .line 1642
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v7

    .line 1651
    .local v7, status:I
    :goto_5
    :try_start_5
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    if-eqz v8, :cond_a

    .line 1652
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    invoke-virtual {v8}, Landroid/os/Looper;->quit()V

    .line 1653
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 1655
    :cond_a
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    .line 1656
    if-eqz v7, :cond_f

    .line 1657
    const-string v10, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "loadSoundEffects(), Error "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-eqz v4, :cond_d

    iget-object v8, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    invoke-virtual {v8}, Landroid/media/AudioService$SoundPoolCallback;->status()I

    move-result v8

    :goto_6
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v11, " while loading samples"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    const/4 v1, 0x0

    :goto_7
    const/16 v8, 0x9

    if-ge v1, v8, :cond_e

    .line 1662
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    aget v8, v8, v10

    if-lez v8, :cond_b

    .line 1663
    iget-object v8, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v8, v8, v1

    const/4 v10, 0x1

    const/4 v11, -0x1

    aput v11, v8, v10

    .line 1661
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 1643
    .end local v7           #status:I
    :catch_1
    move-exception v0

    .line 1644
    .restart local v0       #e:Ljava/lang/InterruptedException;
    const-string v8, "AudioService"

    const-string v10, "Interrupted while waiting sound pool callback."

    invoke-static {v8, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1645
    const/4 v7, -0x1

    .line 1646
    .restart local v7       #status:I
    goto :goto_5

    .line 1648
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v7           #status:I
    :cond_c
    const/4 v7, -0x1

    .restart local v7       #status:I
    goto :goto_5

    .line 1657
    :cond_d
    const/4 v8, -0x1

    goto :goto_6

    .line 1667
    :cond_e
    iget-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v8}, Landroid/media/SoundPool;->release()V

    .line 1668
    const/4 v8, 0x0

    iput-object v8, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1670
    :cond_f
    monitor-exit v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1671
    if-nez v7, :cond_10

    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 8
    .parameter "effectType"

    .prologue
    const/4 v2, -0x1

    .line 1544
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    move v5, v2

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1546
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 8
    .parameter "effectType"
    .parameter "volume"

    .prologue
    .line 1550
    invoke-virtual {p0}, Landroid/media/AudioService;->loadSoundEffects()Z

    .line 1551
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/high16 v4, 0x447a

    mul-float/2addr v4, p2

    float-to-int v5, v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v4, p1

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1553
    return-void
.end method

.method public queryGlobalEffectList()[I
    .locals 1

    .prologue
    .line 6054
    iget-object v0, p0, Landroid/media/AudioService;->mEqList:[I

    return-object v0
.end method

.method public registerBeatsMediaClient(Landroid/os/IBinder;)V
    .locals 10
    .parameter "cb"

    .prologue
    .line 2408
    const-string v6, "AudioService"

    const-string/jumbo v7, "registerBeatsMediaClient"

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2409
    const/4 v3, 0x0

    .line 2410
    .local v3, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2412
    .local v5, size:I
    const/4 v2, 0x0

    .local v2, i:I
    move-object v4, v3

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .local v4, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :goto_0
    if-ge v2, v5, :cond_0

    .line 2413
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$BeatsDeathHandler;

    .line 2414
    .local v1, handler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v6, v1, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v6, p1, :cond_2

    .line 2415
    move-object v3, v1

    .line 2412
    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    move-object v4, v3

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_0

    .line 2419
    .end local v1           #handler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_0
    iget-object v7, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    monitor-enter v7

    .line 2420
    if-nez v4, :cond_1

    .line 2421
    :try_start_0
    new-instance v3, Landroid/media/AudioService$BeatsDeathHandler;

    invoke-direct {v3, p0, p1}, Landroid/media/AudioService$BeatsDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2423
    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    const/4 v6, 0x0

    :try_start_1
    invoke-interface {p1, v3, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2424
    iget-object v6, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2425
    const-string v6, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerBeatsMediaClient success, size: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2430
    :goto_2
    :try_start_2
    monitor-exit v7

    .line 2431
    return-void

    .line 2426
    :catch_0
    move-exception v0

    .line 2427
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "AudioService"

    const-string/jumbo v8, "registerBeatsMediaClient"

    invoke-static {v6, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 2430
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v6

    :goto_3
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_3

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_1
    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_2

    .end local v3           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v1       #handler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v4       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    :cond_2
    move-object v3, v4

    .end local v4           #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    .restart local v3       #mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    goto :goto_1
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 3
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5476
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Remote Control   registerMediaButtonIntent() for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5478
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5479
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5480
    :try_start_1
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->pushMediaButtonReceiver(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V

    .line 5482
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5483
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5484
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5485
    return-void

    .line 5483
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 5484
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)V
    .locals 10
    .parameter "mediaIntent"
    .parameter "rcClient"
    .parameter "callingPackageName"

    .prologue
    .line 5516
    sget-object v6, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v6

    .line 5517
    :try_start_0
    iget-object v7, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5519
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v5}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5520
    .local v4, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5521
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5522
    .local v3, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 5524
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    if-eqz v5, :cond_1

    .line 5526
    invoke-virtual {v3}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5529
    :cond_1
    iput-object p2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5530
    iput-object p3, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    .line 5531
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingUid:I

    .line 5532
    if-nez p2, :cond_4

    .line 5564
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_2
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5565
    const/16 v5, 0xf

    invoke-direct {p0, v5}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5567
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5568
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5569
    return-void

    .line 5539
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    :cond_4
    :try_start_3
    iget-object v5, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_5

    .line 5541
    :try_start_4
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v8, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v5, v8}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 5548
    :cond_5
    :goto_1
    :try_start_5
    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v5}, Landroid/media/IRemoteControlClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 5549
    .local v0, b:Landroid/os/IBinder;
    new-instance v2, Landroid/media/AudioService$RcClientDeathHandler;

    iget-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-direct {v2, p0, v0, v5}, Landroid/media/AudioService$RcClientDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;Landroid/app/PendingIntent;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5552
    .local v2, rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    const/4 v5, 0x0

    :try_start_6
    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 5558
    :goto_2
    :try_start_7
    iput-object v2, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClientDeathHandler:Landroid/media/AudioService$RcClientDeathHandler;

    goto :goto_0

    .line 5567
    .end local v0           #b:Landroid/os/IBinder;
    .end local v2           #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    .end local v3           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v4           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v5

    .line 5568
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v5

    .line 5542
    .restart local v3       #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .restart local v4       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catch_0
    move-exception v1

    .line 5543
    .local v1, e:Landroid/os/RemoteException;
    :try_start_9
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error connecting remote control display to client: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5544
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5553
    .end local v1           #e:Landroid/os/RemoteException;
    .restart local v0       #b:Landroid/os/IBinder;
    .restart local v2       #rcdh:Landroid/media/AudioService$RcClientDeathHandler;
    :catch_1
    move-exception v1

    .line 5555
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "AudioService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "registerRemoteControlClient() has a dead client "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    const/4 v5, 0x0

    iput-object v5, v3, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 8
    .parameter "rcd"

    .prologue
    .line 5668
    sget-object v4, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v4

    .line 5669
    :try_start_0
    iget-object v5, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5670
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq v3, p1, :cond_0

    if-nez p1, :cond_1

    .line 5671
    :cond_0
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5699
    :goto_0
    return-void

    .line 5674
    :cond_1
    :try_start_3
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5675
    iput-object p1, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5677
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_startDeathMonitor_syncRcStack()V

    .line 5682
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5683
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5684
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5685
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_2

    .line 5687
    :try_start_4
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    iget-object v6, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    invoke-interface {v3, v6}, Landroid/media/IRemoteControlClient;->plugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 5688
    :catch_0
    move-exception v0

    .line 5689
    .local v0, e:Landroid/os/RemoteException;
    :try_start_5
    const-string v3, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error connecting remote control display to client: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5690
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5697
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v3

    .line 5698
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v3

    .line 5696
    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    const/16 v3, 0xf

    :try_start_7
    invoke-direct {p0, v3}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5697
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 5698
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method

.method public reloadAudioSettings()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 1759
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 1762
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    .line 1763
    .local v5, numStreamTypes:I
    const/4 v10, 0x0

    .local v10, streamType:I
    :goto_0
    if-ge v10, v5, :cond_9

    .line 1764
    iget-object v11, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v9, v11, v10

    .line 1766
    .local v9, streamState:Landroid/media/AudioService$VolumeStreamState;
    sget-object v11, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    aget-object v6, v11, v12

    .line 1767
    .local v6, settingName:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1768
    .local v3, lastAudibleSettingName:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v6, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1772
    .local v1, index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_0

    .line 1774
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1778
    :goto_1
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$602(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1780
    add-int/lit8 v11, v1, 0x5

    div-int/lit8 v1, v11, 0xa

    .line 1781
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v1, :cond_1

    .end local v1           #index:I
    :goto_2
    invoke-static {v11, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1785
    .restart local v1       #index:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings mLastAudibleIndex: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_2

    .line 1787
    mul-int/lit8 v11, v1, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    .line 1791
    :goto_3
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v1}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$902(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1794
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1795
    .local v7, settingName_Headset:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_last_audible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "_headset"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1796
    .local v4, lastAudibleSettingName_Headset:Ljava/lang/String;
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v12, v12, v10

    invoke-static {v11, v7, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1799
    .local v2, index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings index_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1800
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_3

    .line 1801
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1805
    :goto_4
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$502(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1807
    add-int/lit8 v11, v2, 0x5

    div-int/lit8 v2, v11, 0xa

    .line 1808
    iget-object v11, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    if-lez v2, :cond_4

    .end local v2           #index_Headset:I
    :goto_5
    invoke-static {v11, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 1811
    .restart local v2       #index_Headset:I
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings lastAudibleIndex_Headset: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v11, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v11, v11, v10

    if-eq v11, v10, :cond_5

    .line 1813
    mul-int/lit8 v11, v2, 0xa

    iget-object v12, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v12, v12, v10

    invoke-direct {p0, v11, v12, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v2

    .line 1817
    :goto_6
    #calls: Landroid/media/AudioService$VolumeStreamState;->getValidIndex(I)I
    invoke-static {v9, v2}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;I)I

    move-result v11

    #setter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex_Headset:I
    invoke-static {v9, v11}, Landroid/media/AudioService$VolumeStreamState;->access$1002(Landroid/media/AudioService$VolumeStreamState;I)I

    .line 1823
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0, v10}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v11

    if-nez v11, :cond_6

    .line 1824
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 1825
    .local v8, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v8, :cond_6

    .line 1826
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v12, 0x1

    #setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v11, v12}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$1402(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 1827
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1300(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    invoke-virtual {v11, v14, v14}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(ZI)V

    .line 1825
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1776
    .end local v0           #i:I
    .end local v2           #index_Headset:I
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v8           #size:I
    :cond_0
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_1

    .line 1781
    :cond_1
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v1, v12, v10

    goto/16 :goto_2

    .line 1789
    :cond_2
    mul-int/lit8 v1, v1, 0xa

    goto/16 :goto_3

    .line 1803
    .restart local v2       #index_Headset:I
    .restart local v4       #lastAudibleSettingName_Headset:Ljava/lang/String;
    .restart local v7       #settingName_Headset:Ljava/lang/String;
    :cond_3
    mul-int/lit8 v2, v2, 0xa

    goto/16 :goto_4

    .line 1808
    :cond_4
    sget-object v12, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v2, v12, v10

    goto :goto_5

    .line 1815
    :cond_5
    mul-int/lit8 v2, v2, 0xa

    goto :goto_6

    .line 1831
    :cond_6
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1834
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "reloadAudioSettings Call setStreamVolumeIndex isHeadsetPlugged(): "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1836
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1763
    :cond_7
    :goto_8
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 1838
    :cond_8
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v11

    invoke-direct {p0, v10, v11}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_8

    .line 1846
    .end local v1           #index:I
    .end local v2           #index_Headset:I
    .end local v3           #lastAudibleSettingName:Ljava/lang/String;
    .end local v4           #lastAudibleSettingName_Headset:Ljava/lang/String;
    .end local v6           #settingName:Ljava/lang/String;
    .end local v7           #settingName_Headset:Ljava/lang/String;
    .end local v9           #streamState:Landroid/media/AudioService$VolumeStreamState;
    :cond_9
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v11

    invoke-direct {p0, v11, v14}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1847
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 2
    .parameter "rcd"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 5736
    iget-object v1, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v1

    .line 5738
    :try_start_0
    iput p2, p0, Landroid/media/AudioService;->mArtworkExpectedWidth:I

    .line 5739
    iput p3, p0, Landroid/media/AudioService;->mArtworkExpectedHeight:I

    .line 5740
    monitor-exit v1

    .line 5741
    return-void

    .line 5740
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 14
    .parameter "mainStreamType"
    .parameter "focusChangeHint"
    .parameter "cb"
    .parameter "fd"
    .parameter "clientId"
    .parameter "callingPackageName"

    .prologue
    .line 4896
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " AudioFocus  requestAudioFocus() from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4901
    invoke-interface/range {p3 .. p3}, Landroid/os/IBinder;->pingBinder()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4902
    const-string v1, "AudioService"

    const-string v2, " AudioFocus DOA client for requestAudioFocus(), aborting."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4903
    const/4 v1, 0x0

    .line 4963
    :goto_0
    return v1

    .line 4906
    :cond_0
    sget-object v12, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v12

    .line 4907
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->canReassignAudioFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4908
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4961
    :catchall_0
    move-exception v1

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 4914
    :cond_1
    :try_start_1
    new-instance v7, Landroid/media/AudioService$AudioFocusDeathHandler;

    move-object/from16 v0, p3

    invoke-direct {v7, p0, v0}, Landroid/media/AudioService$AudioFocusDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4916
    .local v7, afdh:Landroid/media/AudioService$AudioFocusDeathHandler;
    const/4 v1, 0x0

    :try_start_2
    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 4923
    :try_start_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4926
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusChangeType:I

    move/from16 v0, p2

    if-ne v1, v0, :cond_2

    .line 4929
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v7, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 4930
    const/4 v1, 0x1

    monitor-exit v12

    goto :goto_0

    .line 4917
    :catch_0
    move-exception v10

    .line 4919
    .local v10, e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFocus  requestAudioFocus() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4920
    const/4 v1, 0x0

    monitor-exit v12

    goto :goto_0

    .line 4934
    .end local v10           #e:Landroid/os/RemoteException;
    :cond_2
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/AudioService$FocusStackEntry;

    .line 4935
    .local v11, fse:Landroid/media/AudioService$FocusStackEntry;
    invoke-virtual {v11}, Landroid/media/AudioService$FocusStackEntry;->unlinkToDeath()V

    .line 4939
    .end local v11           #fse:Landroid/media/AudioService$FocusStackEntry;
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->empty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_4

    .line 4941
    :try_start_4
    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v2, v1, Landroid/media/AudioService$FocusStackEntry;->mFocusDispatcher:Landroid/media/IAudioFocusDispatcher;

    mul-int/lit8 v3, p2, -0x1

    iget-object v1, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$FocusStackEntry;

    iget-object v1, v1, Landroid/media/AudioService$FocusStackEntry;->mClientId:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/media/IAudioFocusDispatcher;->dispatchAudioFocusChange(ILjava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 4951
    :cond_4
    :goto_1
    const/4 v1, 0x0

    :try_start_5
    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4954
    iget-object v13, p0, Landroid/media/AudioService;->mFocusStack:Ljava/util/Stack;

    new-instance v1, Landroid/media/AudioService$FocusStackEntry;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    move v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/media/AudioService$FocusStackEntry;-><init>(IILandroid/media/IAudioFocusDispatcher;Landroid/os/IBinder;Ljava/lang/String;Landroid/media/AudioService$AudioFocusDeathHandler;Ljava/lang/String;I)V

    invoke-virtual {v13, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4958
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4959
    const/16 v1, 0xf

    :try_start_6
    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 4960
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 4961
    :try_start_7
    monitor-exit v12

    .line 4963
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 4944
    :catch_1
    move-exception v10

    .line 4945
    .restart local v10       #e:Landroid/os/RemoteException;
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Failure to signal loss of focus due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4946
    invoke-virtual {v10}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 4960
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
.end method

.method public restoreEffect(Z)V
    .locals 1
    .parameter "on"

    .prologue
    .line 2347
    if-eqz p1, :cond_0

    .line 2348
    iget v0, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    .line 2353
    :goto_0
    return-void

    .line 2351
    :cond_0
    const-string v0, "global_effect=none"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBeatsState(ZLjava/lang/String;)V
    .locals 5
    .parameter "on"
    .parameter "appName"

    .prologue
    .line 2107
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 2108
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2123
    :cond_0
    :goto_0
    return-void

    .line 2111
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-ne v1, p1, :cond_2

    .line 2112
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2115
    :cond_2
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBeatsState on="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2117
    iput-boolean p1, p0, Landroid/media/AudioService;->mBeatsState:Z

    .line 2118
    invoke-direct {p0}, Landroid/media/AudioService;->applySoundEffectByHeadset()Z

    move-result v0

    .line 2119
    .local v0, isChanged:Z
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 2120
    if-eqz v0, :cond_0

    .line 2121
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    .line 1927
    const-string/jumbo v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1936
    :goto_0
    return-void

    .line 1930
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1932
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1934
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    .line 1930
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setCSCallVolumeOn(Z)V
    .locals 4
    .parameter "on"

    .prologue
    const/4 v3, 0x0

    .line 2025
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCSCallVolumeOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    if-eqz p1, :cond_0

    .line 2027
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -2)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2028
    const/4 v0, -0x2

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    .line 2033
    :goto_0
    return-void

    .line 2030
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "AudioSystem.setStreamVolumeIndex(AudioSystem.STREAM_VOICE_CALL, -1)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    const/4 v0, -0x1

    invoke-static {v3, v0}, Landroid/media/AudioSystem;->setStreamVolumeIndex(II)I

    goto :goto_0
.end method

.method public setGlobalEffect(ILjava/lang/String;)V
    .locals 5
    .parameter "id"
    .parameter "appName"

    .prologue
    .line 5799
    iget v1, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v1, v1

    const-wide/high16 v3, 0x4010

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 5800
    const-string v1, "AudioService"

    const-string v2, "does not support beats or sense"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5831
    :cond_0
    :goto_0
    return-void

    .line 5803
    :cond_1
    const-string v1, "HtcSpecificAP"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5804
    const/16 v1, 0x384

    if-ne p1, v1, :cond_3

    .line 5805
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 5810
    :cond_2
    :goto_1
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalEffect mHtcSpecificAP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5807
    :cond_3
    const/16 v1, 0x320

    if-ne p1, v1, :cond_2

    .line 5808
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    goto :goto_1

    .line 5813
    :cond_4
    iget v1, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    if-ne p1, v1, :cond_5

    .line 5814
    const-string v1, "AudioService"

    const-string/jumbo v2, "sound effect setting is the same as pervious"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5818
    :cond_5
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEventAudioOnly="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5819
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setGlobalEffect id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , appName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mGlobalSoundEffect="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5822
    invoke-direct {p0, p1}, Landroid/media/AudioService;->checkEqIdAndApplyEffect(I)Z

    move-result v0

    .line 5823
    .local v0, isChanged:Z
    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/media/AudioManager;->isSpecialCase()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    if-eqz v1, :cond_7

    .line 5824
    :cond_6
    iget-boolean v1, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->triggerBeatsLogo(Z)V

    .line 5826
    :cond_7
    if-eqz v0, :cond_0

    .line 5827
    invoke-direct {p0, p2}, Landroid/media/AudioService;->broadcastSoundEffectChanged(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setHeadsetProfile([I)V
    .locals 9
    .parameter "streamSettings"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1966
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1967
    .local v8, numStreamTypes:I
    const-string v0, "AudioService"

    const-string/jumbo v1, "setHeadsetProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1968
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 1969
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", index = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v5, p1, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    aget v0, p1, v2

    invoke-direct {p0, v2, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1971
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v2

    aget v1, p1, v2

    invoke-virtual {v0, v1, v4}, Landroid/media/AudioService$VolumeStreamState;->setHSIndex(IZ)Z

    .line 1972
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v5, v2

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1968
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1975
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "After setHeadsetProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 1977
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioSystem;->getStreamVolumeIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1978
    :cond_1
    return-void
.end method

.method public setHtcSpecificAPdefault()V
    .locals 3

    .prologue
    .line 2356
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHtcSpecificAPdefault mHtcSpecificAP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2357
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    .line 2358
    return-void
.end method

.method public setIgnoreNotificationMuteSetting(Z)V
    .locals 4
    .parameter "ignore"

    .prologue
    const/4 v3, 0x5

    .line 2039
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    if-eqz p1, :cond_0

    .line 2041
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v2, v2, v3

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, v3

    mul-int/lit8 v0, v0, 0xa

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 2047
    :goto_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mIgnoreMute:Z

    .line 2048
    return-void

    .line 2044
    :cond_0
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIgnoreNotificationMuteSetting stream value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2045
    invoke-virtual {p0, v3}, Landroid/media/AudioService;->getLastAudibleStreamVolume(I)I

    move-result v0

    invoke-direct {p0, v3, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 5
    .parameter "mode"
    .parameter "cb"

    .prologue
    const/4 v4, -0x1

    .line 1382
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string/jumbo v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1403
    :cond_0
    :goto_0
    return-void

    .line 1387
    :cond_1
    if-lt p1, v4, :cond_0

    const/4 v1, 0x4

    if-ge p1, v1, :cond_0

    .line 1391
    const/4 v0, 0x0

    .line 1392
    .local v0, newModeOwnerPid:I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 1393
    if-ne p1, v4, :cond_2

    .line 1394
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1396
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 1397
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1400
    if-eqz v0, :cond_0

    .line 1401
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 1397
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 12
    .parameter "mode"
    .parameter "cb"
    .parameter "pid"

    .prologue
    .line 1409
    const/4 v5, 0x0

    .line 1410
    .local v5, newModeOwnerPid:I
    if-nez p2, :cond_0

    .line 1411
    const-string v9, "AudioService"

    const-string/jumbo v10, "setModeInt() called with null binder"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v5

    .line 1495
    .end local v5           #newModeOwnerPid:I
    .local v6, newModeOwnerPid:I
    :goto_0
    return v6

    .line 1415
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_0
    const/4 v2, 0x0

    .line 1416
    .local v2, hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1417
    .local v4, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1418
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1419
    .local v1, h:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v1}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v9

    if-ne v9, p3, :cond_1

    .line 1420
    move-object v2, v1

    .line 1422
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 1423
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v9, v2, v10}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1427
    .end local v1           #h:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    const/4 v7, 0x0

    .line 1429
    .local v7, status:I
    :cond_3
    if-nez p1, :cond_8

    .line 1431
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 1432
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v2, Landroid/media/AudioService$SetModeDeathHandler;

    .line 1433
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 1434
    invoke-virtual {v2}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 1454
    :cond_4
    :goto_1
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    if-eq p1, v9, :cond_c

    .line 1455
    invoke-static {p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v7

    .line 1456
    if-nez v7, :cond_a

    .line 1458
    iget v9, p0, Landroid/media/AudioService;->mMode:I

    invoke-direct {p0, v9, p1, p2}, Landroid/media/AudioService;->handleFocusForCalls(IILandroid/os/IBinder;)V

    .line 1459
    iput p1, p0, Landroid/media/AudioService;->mMode:I

    .line 1471
    :goto_2
    if-eqz v7, :cond_5

    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1473
    :cond_5
    if-nez v7, :cond_7

    .line 1474
    if-eqz p1, :cond_6

    .line 1475
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1476
    const-string v9, "AudioService"

    const-string/jumbo v10, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1481
    :cond_6
    :goto_3
    const/high16 v9, -0x8000

    invoke-direct {p0, v9}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v8

    .line 1485
    .local v8, streamType:I
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_e

    .line 1486
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex_Headset:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .line 1491
    .local v3, index:I
    :goto_4
    iget-object v9, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v9, v9, v8

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v9, v3, v10, v11}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 1492
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1493
    const/4 v9, 0x2

    const/4 v10, 0x2

    invoke-direct {p0, v3, v8, v10}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v10

    invoke-direct {p0, v9, v10}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .end local v3           #index:I
    .end local v8           #streamType:I
    :cond_7
    move v6, v5

    .line 1495
    .end local v5           #newModeOwnerPid:I
    .restart local v6       #newModeOwnerPid:I
    goto/16 :goto_0

    .line 1437
    .end local v6           #newModeOwnerPid:I
    .restart local v5       #newModeOwnerPid:I
    :cond_8
    if-nez v2, :cond_9

    .line 1438
    new-instance v2, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v2           #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    invoke-direct {v2, p0, p2, p3}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 1442
    .restart local v2       #hdlr:Landroid/media/AudioService$SetModeDeathHandler;
    :cond_9
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1450
    :goto_5
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1451
    invoke-virtual {v2, p1}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_1

    .line 1443
    :catch_0
    move-exception v0

    .line 1445
    .local v0, e:Landroid/os/RemoteException;
    const-string v9, "AudioService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "setMode() could not link to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " binder death"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1461
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_a
    if-eqz v2, :cond_b

    .line 1462
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1463
    const/4 v9, 0x0

    invoke-interface {p2, v2, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1466
    :cond_b
    const/4 p1, 0x0

    goto/16 :goto_2

    .line 1469
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 1478
    :cond_d
    iget-object v9, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v9}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v5

    goto/16 :goto_3

    .line 1488
    .restart local v8       #streamType:I
    :cond_e
    iget-object v9, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v10, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v10, v10, v8

    aget-object v9, v9, v10

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v9}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v3

    .restart local v3       #index:I
    goto/16 :goto_4
.end method

.method public setRingerMode(I)V
    .locals 2
    .parameter "ringerMode"

    .prologue
    .line 1136
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->applyOutdoorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1140
    :cond_0
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1141
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq p1, v0, :cond_1

    .line 1142
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1144
    invoke-direct {p0}, Landroid/media/AudioService;->broadcastRingerMode()V

    .line 1146
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

.method public setSpeakerProfile([I)V
    .locals 9
    .parameter "streamSettings"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 1981
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v8

    .line 1982
    .local v8, numStreamTypes:I
    const-string v0, "AudioService"

    const-string/jumbo v4, "setSpeakerProfile"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v8, :cond_0

    .line 1984
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stream = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    aget v0, p1, v2

    invoke-direct {p0, v2, v0}, Landroid/media/AudioService;->setStreamVolumeIndex(II)V

    .line 1986
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v2

    aget v4, p1, v2

    invoke-virtual {v0, v4, v1}, Landroid/media/AudioService$VolumeStreamState;->setIndex(IZ)Z

    .line 1987
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v4, v2

    move v4, v1

    move v5, v1

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1983
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1990
    :cond_0
    const-string v0, "AudioService"

    const-string v1, "After setSpeakerProfile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v8, :cond_1

    .line 1992
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stream = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", index = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Landroid/media/AudioSystem;->getStreamVolumeIndex(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1991
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1993
    :cond_1
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 8
    .parameter "on"

    .prologue
    const/4 v4, 0x0

    .line 1911
    const-string/jumbo v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1918
    :goto_0
    return-void

    .line 1914
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 1916
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, -0x1

    const/4 v3, 0x2

    iget v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v6, 0x0

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_1
    move v0, v4

    .line 1914
    goto :goto_1
.end method

.method public setStreamLastaudibleIndex(II)V
    .locals 8
    .parameter "stream"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 944
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Landroid/media/AudioService$VolumeStreamState;->setLastAudibleIndex(I)V

    .line 946
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x63

    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v2, p1

    move v2, p1

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 954
    :goto_0
    return-void

    .line 950
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v6, v1, p1

    move v1, v4

    move v2, p1

    move v5, v4

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 2
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1090
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, p3, p2, v1}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    .line 1095
    :cond_0
    return-void
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 3
    .parameter "streamType"
    .parameter "state"
    .parameter "cb"

    .prologue
    .line 1079
    const/4 v0, 0x0

    .local v0, stream:I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1080
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-ne v0, p1, :cond_1

    .line 1079
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1083
    :cond_1
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, p3, p2, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;ZI)V

    goto :goto_1

    .line 1086
    :cond_2
    return-void
.end method

.method public setStreamVolume(III)V
    .locals 8
    .parameter "streamType"
    .parameter "index"
    .parameter "flags"

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 958
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setStreamVolume(), streamType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 960
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, p1

    aget-object v2, v5, v6

    .line 962
    .local v2, streamState:Landroid/media/AudioService$VolumeStreamState;
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_2

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    .line 963
    .local v1, oldIndex:I
    :goto_0
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "streamState.fixCount() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-boolean v5, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v5, :cond_1

    and-int/lit8 v5, p3, 0x2

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    .line 968
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 969
    .local v0, newRingerMode:I
    if-nez p2, :cond_4

    .line 971
    iget-object v5, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "vibrate_in_silent"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v0, v3

    .line 975
    :goto_1
    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    invoke-direct {p0, v5, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 979
    :goto_2
    iget v5, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v0, v5, :cond_1

    .line 980
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 984
    .end local v0           #newRingerMode:I
    :cond_1
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index before rescaleIndex, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    mul-int/lit8 v5, p2, 0xa

    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v6, v6, p1

    invoke-direct {p0, v5, p1, v6}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 988
    const-string v5, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "index after rescaleIndex, index = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    iget-object v5, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v5, v5, p1

    invoke-direct {p0, v5, p2, v3, v4}, Landroid/media/AudioService;->setStreamVolumeInt(IIZZ)V

    .line 992
    #calls: Landroid/media/AudioService$VolumeStreamState;->fixCount()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$1200(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v3

    if-eqz v3, :cond_5

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    .line 993
    :goto_3
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", streamState.mLastAudibleIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mLastAudibleIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$900(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", streamState.mIndex = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-direct {p0, p1, v1, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 998
    return-void

    .line 962
    .end local v1           #oldIndex:I
    :cond_2
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v1

    goto/16 :goto_0

    .restart local v0       #newRingerMode:I
    .restart local v1       #oldIndex:I
    :cond_3
    move v0, v4

    .line 971
    goto/16 :goto_1

    .line 977
    :cond_4
    const/4 v0, 0x2

    goto/16 :goto_2

    .line 992
    .end local v0           #newRingerMode:I
    :cond_5
    #getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:I
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)I

    move-result p2

    goto :goto_3
.end method

.method public setVibrateSetting(II)V
    .locals 8
    .parameter "vibrateType"
    .parameter "vibrateSetting"

    .prologue
    const/4 v4, 0x0

    .line 1307
    iget-object v1, p0, Landroid/media/AudioService;->vibrateSettingLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1308
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1309
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1311
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1315
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v6, 0x0

    move v5, v4

    move v7, v4

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    .line 1317
    return-void

    .line 1309
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setVolumePanelOrientation(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 2019
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVolumePanelOrientation("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Lcom/htc/view/VolumePanel;

    invoke-virtual {v0, p1}, Lcom/htc/view/VolumePanel;->setVolumePanelOrientation(I)V

    .line 2021
    return-void
.end method

.method public shouldVibrate(I)Z
    .locals 5
    .parameter "vibrateType"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1278
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "shouldVibrate("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), mRingerMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/AudioService;->mRingerMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1292
    :cond_0
    :goto_0
    return v0

    .line 1282
    :pswitch_0
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 1285
    :pswitch_1
    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    move v0, v1

    .line 1289
    goto :goto_0

    .line 1279
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1945
    const-string/jumbo v1, "startBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1951
    :cond_0
    :goto_0
    return-void

    .line 1949
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1950
    .local v0, client:Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->incCount()V

    goto :goto_0
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 2
    .parameter "cb"

    .prologue
    .line 1955
    const-string/jumbo v1, "stopBluetoothSco()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v1, :cond_1

    .line 1963
    :cond_0
    :goto_0
    return-void

    .line 1959
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 1960
    .local v0, client:Landroid/media/AudioService$ScoClient;
    if-eqz v0, :cond_0

    .line 1961
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    goto :goto_0
.end method

.method public triggerBeatsLogo(Z)V
    .locals 13
    .parameter "on"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2273
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isSupport=true , sense version="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->SenseVersion:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mAppPlay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , isHeadsetPlugged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v9, v0

    const-wide/high16 v11, 0x4010

    cmpg-double v0, v9, v11

    if-gez v0, :cond_0

    .line 2310
    :goto_0
    return-void

    .line 2282
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "wireless_display"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/htc/service/WirelessDisplayManager;

    .line 2283
    .local v8, wdMgr:Lcom/htc/service/WirelessDisplayManager;
    if-eqz v8, :cond_1

    .line 2284
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , getMirrorDisplayStatus="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mGlobalSoundEffect="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->mGlobalSoundEffect:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2285
    iget-boolean v0, p0, Landroid/media/AudioService;->mMirrorDisplayStatus:Z

    if-eqz v0, :cond_1

    invoke-virtual {v8}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2286
    const-string v0, "AudioService"

    const-string v1, "WirelessDisplay mirror mode!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2291
    :cond_1
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2292
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v0, :cond_8

    .line 2293
    :cond_2
    if-eqz p1, :cond_4

    .line 2294
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_3

    move v5, v4

    :goto_1
    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_1

    .line 2297
    :cond_4
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-nez v0, :cond_6

    .line 2298
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_5

    move v5, v4

    :goto_2
    const/16 v7, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_5
    move v5, v3

    goto :goto_2

    .line 2302
    :cond_6
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_7

    move v5, v4

    :goto_3
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_7
    move v5, v3

    goto :goto_3

    .line 2307
    :cond_8
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_9

    move v5, v4

    :goto_4
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto/16 :goto_0

    :cond_9
    move v5, v3

    goto :goto_4
.end method

.method public triggerBeatsLogo_audio(ZZZ)V
    .locals 11
    .parameter "on"
    .parameter "audio_on"
    .parameter "audio_flag"

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x65

    const/4 v2, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2313
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " isSupport=true , sense version="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->SenseVersion:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mAppPlay="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mAppPlay:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , isHeadsetPlugged="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mBluetoothHeadsetConnected="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , audio_on="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , audio_flag="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " , mMode="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Landroid/media/AudioService;->mMode:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2315
    iget v0, p0, Landroid/media/AudioService;->SenseVersion:F

    float-to-double v7, v0

    const-wide/high16 v9, 0x4010

    cmpg-double v0, v7, v9

    if-gez v0, :cond_1

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2319
    :cond_1
    if-nez p3, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mMode:I

    if-ne v0, v4, :cond_3

    .line 2320
    :cond_2
    iput-boolean p2, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    .line 2322
    :cond_3
    const-string v0, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mEventAudioOnly="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    iput-boolean p1, p0, Landroid/media/AudioService;->mAppPlay:Z

    .line 2324
    iget-boolean v0, p0, Landroid/media/AudioService;->mEventAudioOnly:Z

    if-eqz v0, :cond_0

    .line 2325
    invoke-virtual {p0}, Landroid/media/AudioService;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetConnected:Z

    if-eqz v0, :cond_a

    .line 2326
    :cond_4
    if-eqz p1, :cond_6

    .line 2327
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_5

    move v5, v4

    :goto_1
    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_5
    move v5, v3

    goto :goto_1

    .line 2330
    :cond_6
    iget-boolean v0, p0, Landroid/media/AudioService;->mHtcSpecificAP:Z

    if-nez v0, :cond_8

    .line 2331
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_7

    move v5, v4

    :goto_2
    const/16 v7, 0x3e8

    move v4, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_7
    move v5, v3

    goto :goto_2

    .line 2335
    :cond_8
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_9

    move v5, v4

    :goto_3
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_9
    move v5, v3

    goto :goto_3

    .line 2340
    :cond_a
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget-boolean v5, p0, Landroid/media/AudioService;->mBeatsState:Z

    if-eqz v5, :cond_b

    move v5, v4

    :goto_4
    move v4, v3

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIIILjava/lang/Object;I)V

    goto :goto_0

    :cond_b
    move v5, v3

    goto :goto_4
.end method

.method public unloadSoundEffects()V
    .locals 8

    .prologue
    const/16 v7, 0x9

    .line 1680
    iget-object v4, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1681
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    if-nez v3, :cond_0

    .line 1682
    monitor-exit v4

    .line 1706
    :goto_0
    return-void

    .line 1685
    :cond_0
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1686
    iget-object v3, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 1688
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    new-array v2, v3, [I

    .line 1689
    .local v2, poolId:[I
    const/4 v1, 0x0

    .local v1, fileIdx:I
    :goto_1
    sget-object v3, Landroid/media/AudioService;->SOUND_EFFECT_FILES:[Ljava/lang/String;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 1690
    const/4 v3, 0x0

    aput v3, v2, v1

    .line 1689
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1693
    :cond_1
    const/4 v0, 0x0

    .local v0, effect:I
    :goto_2
    if-ge v0, v7, :cond_4

    .line 1694
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    aget v3, v3, v5

    if-gtz v3, :cond_3

    .line 1693
    :cond_2
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1697
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    aget v3, v2, v3

    if-nez v3, :cond_2

    .line 1698
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v5, v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v3, v5}, Landroid/media/SoundPool;->unload(I)Z

    .line 1699
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x1

    const/4 v6, -0x1

    aput v6, v3, v5

    .line 1700
    iget-object v3, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v3, v3, v0

    const/4 v5, 0x0

    aget v3, v3, v5

    const/4 v5, -0x1

    aput v5, v2, v3

    goto :goto_3

    .line 1705
    .end local v0           #effect:I
    .end local v1           #fileIdx:I
    .end local v2           #poolId:[I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1703
    .restart local v0       #effect:I
    .restart local v1       #fileIdx:I
    .restart local v2       #poolId:[I
    :cond_4
    :try_start_1
    iget-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3}, Landroid/media/SoundPool;->release()V

    .line 1704
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    .line 1705
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 2
    .parameter "clientId"

    .prologue
    .line 4987
    sget-object v1, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v1

    .line 4988
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/media/AudioService;->removeFocusStackEntry(Ljava/lang/String;Z)V

    .line 4989
    monitor-exit v1

    .line 4990
    return-void

    .line 4989
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterBeatsMediaClient(Landroid/os/IBinder;)V
    .locals 8
    .parameter "cb"

    .prologue
    .line 2434
    const-string v4, "AudioService"

    const-string/jumbo v5, "unregisterBeatsMediaClient"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2435
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 2436
    .local v3, size:I
    const/4 v2, 0x0

    .line 2438
    .local v2, mHandler:Landroid/media/AudioService$BeatsDeathHandler;
    iget-object v5, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 2439
    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 2440
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/media/AudioService$BeatsDeathHandler;

    move-object v2, v0

    .line 2441
    iget-object v4, v2, Landroid/media/AudioService$BeatsDeathHandler;->mCb:Landroid/os/IBinder;

    if-ne v4, p1, :cond_0

    .line 2442
    iget-object v4, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2443
    invoke-virtual {v2}, Landroid/media/AudioService$BeatsDeathHandler;->releaseBinder()V

    .line 2444
    const/4 v2, 0x0

    .line 2445
    const-string v4, "AudioService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "unregisterBeatsMediaClient success, size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/AudioService;->mBeatsHandlers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2439
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 2448
    :cond_1
    monitor-exit v5

    .line 2449
    return-void

    .line 2448
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;)V
    .locals 4
    .parameter "mediaIntent"
    .parameter "eventReceiver"

    .prologue
    .line 5493
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Remote Control   unregisterMediaButtonIntent() for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    sget-object v2, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5496
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5497
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->isCurrentRcController(Landroid/app/PendingIntent;)Z

    move-result v0

    .line 5498
    .local v0, topOfStackWillChange:Z
    invoke-direct {p0, p1}, Landroid/media/AudioService;->removeMediaButtonReceiver(Landroid/app/PendingIntent;)V

    .line 5499
    if-eqz v0, :cond_0

    .line 5501
    const/16 v1, 0xf

    invoke-direct {p0, v1}, Landroid/media/AudioService;->checkUpdateRemoteControlDisplay_syncAfRcs(I)V

    .line 5503
    :cond_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5504
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5505
    return-void

    .line 5503
    .end local v0           #topOfStackWillChange:Z
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 5504
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 5
    .parameter "mediaIntent"
    .parameter "rcClient"

    .prologue
    .line 5577
    sget-object v3, Landroid/media/AudioService;->mAudioFocusLock:Ljava/lang/Object;

    monitor-enter v3

    .line 5578
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5579
    :try_start_1
    iget-object v2, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 5580
    .local v1, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5581
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5582
    .local v0, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mMediaIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5586
    invoke-virtual {v0}, Landroid/media/AudioService$RemoteControlStackEntry;->unlinkToRcClientDeath()V

    .line 5588
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    .line 5589
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/media/AudioService$RemoteControlStackEntry;->mCallingPackageName:Ljava/lang/String;

    goto :goto_0

    .line 5592
    .end local v0           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v1           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    .line 5593
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 5592
    .restart local v1       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5593
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 5594
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .parameter "rcd"

    .prologue
    .line 5709
    iget-object v4, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    monitor-enter v4

    .line 5711
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    if-eq p1, v3, :cond_1

    .line 5713
    :cond_0
    monitor-exit v4

    .line 5733
    :goto_0
    return-void

    .line 5716
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->rcDisplay_stopDeathMonitor_syncRcStack()V

    .line 5717
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/AudioService;->mRcDisplay:Landroid/media/IRemoteControlDisplay;

    .line 5720
    iget-object v3, p0, Landroid/media/AudioService;->mRCStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 5721
    .local v2, stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5722
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$RemoteControlStackEntry;

    .line 5723
    .local v1, rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 5725
    :try_start_1
    iget-object v3, v1, Landroid/media/AudioService$RemoteControlStackEntry;->mRcClient:Landroid/media/IRemoteControlClient;

    invoke-interface {v3, p1}, Landroid/media/IRemoteControlClient;->unplugRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 5726
    :catch_0
    move-exception v0

    .line 5727
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error disconnecting remote control display to client: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5728
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 5732
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #rcse:Landroid/media/AudioService$RemoteControlStackEntry;
    .end local v2           #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v2       #stackIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/media/AudioService$RemoteControlStackEntry;>;"
    :cond_3
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
