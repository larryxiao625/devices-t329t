.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$Listener;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final ENABLE:I = 0x2

.field private static final ENABLE_TRACKING:I = 0x3

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final LPSDEBUG:Z = true

.field private static final LTO_INTERVAL:J = 0x5265c00L

.field private static final LTO_RETRY_INTERVAL:J = 0x493e0L

.field private static final LTO_RETRY_MAXIMUM:I = 0x3

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final NTP_RETRY_MAXIMUM:I = 0x3

.field private static final PROPERTIES_FILE:Ljava/lang/String; = null

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final REQUEST_SINGLE_SHOT:I = 0xa

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final UPDATE_TELLHTC_ACQUISITION:I = 0xb

.field private static final UPDATE_TELLHTC_TRACKING:I = 0xc

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = false

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final XTRA_ALARM_TIMEOUT:Ljava/lang/String; = "com.htc.location.XTRA_ALARM_TIMEOUT"

.field private static mAllowBackDoorListener:Z

.field private static mHTCPrivacySetting:Z

.field private static mHtcAllowAPCount:I

.field private static mLTO_Retry_Count:I

.field private static mNTP_Retry_Count:I


# instance fields
.field private IsQuickBootPowerOff:Z

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:I

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAllowHTCListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mAquisition_Start:J

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReciever:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private final mClientUids:Landroid/util/SparseIntArray;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDownloadXtraDataPending:Z

.field private volatile mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHandler:Landroid/os/Handler;

.field private final mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

.field private mInjectNtpTimePending:Z

.field private mIs_In_Tracking:Z

.field private mLastFixTime:J

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/GpsLocationProvider$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNetworkType:I

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private mPendingListenerMessages:I

.field private mPendingMessageBits:I

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private mProperties:Ljava/util/Properties;

.field private mSNTPServer:Ljava/lang/String;

.field private mSNTPTimeout:I

.field private mSUPLCertPath:Ljava/lang/String;

.field private mSUPLUseTLS:Ljava/lang/String;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTTFF:I

.field private final mThread:Ljava/lang/Thread;

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private mTracking_Start:J

.field private mTracking_Stop:J

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mxtraAlarmTimeout:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 186
    const-string v0, "/etc/"

    invoke-static {v0}, Lcom/android/server/location/BrcmGpsHooker;->getGpsConfPathFrom(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES_FILE:Ljava/lang/String;

    .line 312
    sput v1, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    .line 313
    sput v1, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    .line 318
    sput v1, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 319
    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 320
    sput-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 2316
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 11
    .parameter "context"
    .parameter "locationManager"

    .prologue
    .line 552
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 191
    const/4 v7, 0x1

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 194
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 206
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 210
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 211
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 223
    const/16 v7, 0x3e8

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 238
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 240
    const/4 v7, 0x0

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 254
    const/16 v7, 0x2710

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPTimeout:I

    .line 261
    new-instance v7, Landroid/location/Location;

    const-string v8, "gps"

    invoke-direct {v7, v8}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 262
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 263
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    .line 264
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    .line 271
    new-instance v7, Ljava/util/concurrent/CountDownLatch;

    const/4 v8, 0x1

    invoke-direct {v7, v8}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    .line 297
    new-instance v7, Landroid/util/SparseIntArray;

    invoke-direct {v7}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    .line 315
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    .line 324
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Start:J

    .line 325
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    .line 326
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J

    .line 327
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    .line 331
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 430
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    .line 1958
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2307
    const/16 v7, 0x20

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2308
    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2309
    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2310
    const/16 v7, 0x20

    new-array v7, v7, [F

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2311
    const/4 v7, 0x3

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2314
    const/16 v7, 0x78

    new-array v7, v7, [B

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 553
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 554
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 555
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 556
    new-instance v7, Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-direct {v7, p1}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 558
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v7, v8}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 560
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v8, "power"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    .line 561
    .local v4, powerManager:Landroid/os/PowerManager;
    const/4 v7, 0x1

    const-string v8, "GpsLocationProvider"

    invoke-virtual {v4, v7, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 562
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 564
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v8, "alarm"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AlarmManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 565
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 566
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v7, v8, v9, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 569
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.htc.location.XTRA_ALARM_TIMEOUT"

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 570
    .local v6, xtraAlarmTimeout:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v6, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    .line 573
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 574
    .local v2, intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v7, "sms"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 576
    const-string v7, "localhost"

    const-string v8, "7275"

    invoke-virtual {v2, v7, v8}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 579
    new-instance v2, Landroid/content/IntentFilter;

    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 580
    .restart local v2       #intentFilter:Landroid/content/IntentFilter;
    const-string v7, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 582
    :try_start_0
    const-string v7, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 586
    :goto_0
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 588
    const-string v7, "connectivity"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 591
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 593
    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 595
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v7, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES_FILE:Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 596
    .local v1, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 597
    .local v5, stream:Ljava/io/FileInputStream;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-virtual {v7, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 598
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    .line 600
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 601
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 602
    .local v3, portString:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v7, :cond_0

    if-eqz v3, :cond_0

    .line 604
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 605
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SUPL_HOST "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SUPL_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 613
    :cond_0
    :goto_1
    :try_start_3
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "NTP_SERVER"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPServer:Ljava/lang/String;

    .line 615
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ntp_server"

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPServer:Ljava/lang/String;

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 616
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP_SERVER > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPServer:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Set database OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_1
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "ntp_timeout"

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPTimeout:I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 618
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "NTP_SERVER Timeout > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSNTPTimeout:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "Set  database OK"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :cond_2
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "SUPL_TLS_CERT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLCertPath:Ljava/lang/String;

    .line 622
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLCertPath:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 624
    const-string v7, "persist.brcm.agps.certpath"

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLCertPath:Ljava/lang/String;

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SUPL_TLS_CERT > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLCertPath:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    :cond_3
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "PROTOCOL_TYPE"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLUseTLS:Ljava/lang/String;

    .line 629
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLUseTLS:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 631
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLUseTLS:Ljava/lang/String;

    const-string v8, "TLS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 632
    const-string v7, "persist.brcm.agps.mode"

    const-string v8, "1"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "C2K_HOST"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 642
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v8, "C2K_PORT"

    invoke-virtual {v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 643
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v7, :cond_5

    if-eqz v3, :cond_5

    .line 645
    :try_start_4
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 655
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :cond_5
    :goto_3
    new-instance v7, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;

    invoke-direct {v7, p0}, Lcom/android/server/location/GpsLocationProvider$GpsLocationProviderThread;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    .line 656
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mThread:Ljava/lang/Thread;

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 659
    :goto_4
    :try_start_5
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v7}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_4

    .line 667
    return-void

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "Malformed SUPL init mime type"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 607
    .end local v0           #e:Landroid/content/IntentFilter$MalformedMimeTypeException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :catch_1
    move-exception v0

    .line 608
    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_6
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse SUPL_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_1

    .line 650
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    .line 651
    .local v0, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Could not open GPS configuration file "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES_FILE:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 633
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #file:Ljava/io/File;
    .restart local v3       #portString:Ljava/lang/String;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :cond_6
    :try_start_7
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLUseTLS:Ljava/lang/String;

    const-string v8, "Non_TLS"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 634
    const-string v7, "persist.brcm.agps.mode"

    const-string v8, "2"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 636
    :cond_7
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PROTOCOL_TYPE > "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->mSUPLUseTLS:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 646
    :catch_3
    move-exception v0

    .line 647
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse C2K_PORT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_3

    .line 661
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #portString:Ljava/lang/String;
    .end local v5           #stream:Ljava/io/FileInputStream;
    :catch_4
    move-exception v0

    .line 662
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Thread;->interrupt()V

    goto/16 :goto_4
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    return-void
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    sput-boolean p0, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/location/GpsLocationProvider;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleEnableLocationTracking(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleRequestSingleShot()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleAddListener(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleRemoveListener(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateAcquisitionDuration(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateTrackingDuration(I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$2572(Lcom/android/server/location/GpsLocationProvider;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    and-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$2610(Lcom/android/server/location/GpsLocationProvider;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 83
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->initialize()V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInitializedLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/location/GpsLocationProvider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    return v0
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 477
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 478
    .local v1, messages:[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 479
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 480
    .local v2, supl_init:[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 482
    .end local v2           #supl_init:[B
    :cond_0
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const/16 v11, 0x20

    .line 485
    const-string v8, "data"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    move-object v7, v8

    check-cast v7, [B

    .line 491
    .local v7, supl_init:[B
    const-string v8, "header"

    invoke-virtual {p1, v8}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, [B

    move-object v1, v8

    check-cast v1, [B

    .line 492
    .local v1, WapHeader:[B
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WAPPUSH:header:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v1

    if-ge v3, v8, :cond_0

    .line 496
    aget-byte v8, v1, v3

    and-int/lit16 v4, v8, 0xff

    .line 495
    .local v4, j:I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 500
    .end local v4           #j:I
    :cond_0
    new-array v2, v11, [B

    .line 501
    .local v2, bAppId:[B
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v11, :cond_1

    .line 502
    aput-byte v11, v2, v3

    .line 501
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 506
    :cond_1
    const/4 v3, 0x0

    :goto_2
    array-length v8, v1

    if-ge v3, v8, :cond_5

    .line 507
    aget-byte v8, v1, v3

    and-int/lit16 v8, v8, 0xff

    const/16 v9, 0xaf

    if-ne v8, v9, :cond_9

    .line 508
    array-length v8, v1

    sub-int/2addr v8, v3

    const/4 v9, 0x2

    if-le v8, v9, :cond_7

    .line 509
    add-int/lit8 v4, v3, 0x1

    .restart local v4       #j:I
    const/4 v5, 0x0

    .local v5, k:I
    :goto_3
    array-length v8, v1

    if-ge v4, v8, :cond_3

    .line 510
    aget-byte v8, v1, v4

    if-eqz v8, :cond_2

    .line 511
    aget-byte v8, v1, v4

    aput-byte v8, v2, v5

    .line 509
    :cond_2
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 515
    :cond_3
    const/4 v3, 0x0

    :goto_4
    array-length v8, v2

    if-ge v3, v8, :cond_4

    .line 516
    aget-byte v8, v2, v3

    and-int/lit16 v4, v8, 0xff

    .line 515
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 520
    :cond_4
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2}, Ljava/lang/String;-><init>([B)V

    .line 521
    .local v6, sAppId:Ljava/lang/String;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WAPPUSH:application id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    const-string v9, "x-oma-application:ulp.ua"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 545
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #sAppId:Ljava/lang/String;
    :cond_5
    :goto_5
    array-length v8, v7

    invoke-direct {p0, v7, v8}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 546
    :goto_6
    return-void

    .line 526
    .restart local v4       #j:I
    .restart local v5       #k:I
    .restart local v6       #sAppId:Ljava/lang/String;
    :cond_6
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WAPPUSH:invalid application id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 531
    .end local v4           #j:I
    .end local v5           #k:I
    .end local v6           #sAppId:Ljava/lang/String;
    :cond_7
    add-int/lit8 v8, v3, 0x1

    aget-byte v8, v1, v8

    and-int/lit16 v0, v8, 0xff

    .line 532
    .local v0, AppId:I
    const/16 v8, 0x90

    if-eq v0, v8, :cond_8

    .line 533
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WAPPUSH:invalid hex application id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " return"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 537
    :cond_8
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WAPPUSH:hex application id:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 506
    .end local v0           #AppId:I
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .locals 4
    .parameter "extras"

    .prologue
    .line 1290
    if-nez p1, :cond_1

    .line 1291
    const v0, 0xffff

    .line 1309
    .local v0, flags:I
    :cond_0
    :goto_0
    if-eqz v0, :cond_e

    .line 1311
    const-string v1, "GpsLocationProvider"

    const-string v2, "<<---- deleteAidingData ---->>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "flags = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1315
    const/4 v1, 0x1

    .line 1318
    :goto_1
    return v1

    .line 1293
    .end local v0           #flags:I
    :cond_1
    const/4 v0, 0x0

    .line 1294
    .restart local v0       #flags:I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x1

    .line 1295
    :cond_2
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x2

    .line 1296
    :cond_3
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    or-int/lit8 v0, v0, 0x4

    .line 1297
    :cond_4
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    or-int/lit8 v0, v0, 0x8

    .line 1298
    :cond_5
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/lit8 v0, v0, 0x10

    .line 1299
    :cond_6
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    or-int/lit8 v0, v0, 0x20

    .line 1300
    :cond_7
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    or-int/lit8 v0, v0, 0x40

    .line 1301
    :cond_8
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    or-int/lit16 v0, v0, 0x80

    .line 1302
    :cond_9
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    or-int/lit16 v0, v0, 0x100

    .line 1303
    :cond_a
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    or-int/lit16 v0, v0, 0x200

    .line 1304
    :cond_b
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    or-int/lit16 v0, v0, 0x400

    .line 1305
    :cond_c
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1306
    :cond_d
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_0

    .line 1318
    :cond_e
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private getSelectedApn()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 2282
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2283
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2285
    .local v6, apn:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "apn"

    aput-object v4, v2, v5

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2288
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2290
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 2294
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2297
    :cond_1
    return-object v6

    .line 2294
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private handleAddListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 1148
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1150
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1151
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1153
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/location/BrcmGpsHooker;->onHandleAddListener(Landroid/content/Context;I)V

    .line 1154
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_0

    .line 1157
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate add listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    monitor-exit v4

    .line 1173
    :goto_0
    return-void

    .line 1162
    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNavigating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 1165
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1167
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1172
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1168
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 1169
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in addListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleDisable()V
    .locals 2

    .prologue
    .line 1010
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1013
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1014
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1017
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    goto :goto_0
.end method

.method private handleDownloadXtraData()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 822
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] mNetworkAvailable = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v6, :cond_0

    .line 825
    iput-boolean v10, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 826
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] Network not available, download xtradata pending "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    :goto_0
    return-void

    .line 829
    :cond_0
    iput-boolean v9, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    .line 832
    new-instance v5, Lcom/android/server/location/GpsXtraDownloader;

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {v5, v6, v7}, Lcom/android/server/location/GpsXtraDownloader;-><init>(Landroid/content/Context;Ljava/util/Properties;)V

    .line 833
    .local v5, xtraDownloader:Lcom/android/server/location/GpsXtraDownloader;
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] downloadXtraData+"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {v5}, Lcom/android/server/location/GpsXtraDownloader;->downloadXtraData()[B

    move-result-object v0

    .line 835
    .local v0, data:[B
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] downloadXtraData-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    if-eqz v0, :cond_1

    .line 837
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] native_inject_xtra_data+,length="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    array-length v6, v0

    invoke-direct {p0, v0, v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    .line 839
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] native_inject_xtra_data-"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    const-wide/32 v1, 0x5265c00

    .line 858
    .local v1, delay:J
    :goto_1
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] LTO download after "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-wide/32 v8, 0xea60

    div-long v8, v1, v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " minutes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    add-long v3, v6, v1

    .line 860
    .local v3, triggerTime:J
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mxtraAlarmTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v6, v10, v3, v4, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 843
    .end local v1           #delay:J
    .end local v3           #triggerTime:J
    :cond_1
    sget v6, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    const/4 v7, 0x3

    if-lt v6, v7, :cond_2

    .line 845
    const-wide/32 v1, 0x5265c00

    .line 846
    .restart local v1       #delay:J
    sput v9, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    .line 847
    const-string v6, "GpsLocationProvider"

    const-string v7, "[handleDownloadXtraData] LTO download over LTO_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 849
    .end local v1           #delay:J
    :cond_2
    const-wide/32 v1, 0x493e0

    .line 850
    .restart local v1       #delay:J
    sget v6, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    .line 851
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[handleDownloadXtraData] LTO requestLTO got failed,  counter:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/android/server/location/GpsLocationProvider;->mLTO_Retry_Count:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", after 5 Mins"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleEnable()V
    .locals 3

    .prologue
    .line 980
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable: mEnabled:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_1

    .line 996
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 984
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_3

    .line 985
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 986
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 987
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleEnable: SuplServer ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " SuplServerPort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 990
    :cond_2
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    goto :goto_0

    .line 994
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "Failed to enable location provider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleEnableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 1052
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In handleEnableLocationTracking. enable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    if-eqz p1, :cond_0

    .line 1054
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1055
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1056
    invoke-direct {p0, v3}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1064
    :goto_0
    return-void

    .line 1058
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1059
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1060
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1062
    :cond_1
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    goto :goto_0
.end method

.method private handleInjectNtpTime()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v12, 0x0

    .line 771
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_1

    .line 773
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 819
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iput-boolean v12, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    .line 781
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->forceRefresh()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 782
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTime()J

    move-result-wide v1

    .line 783
    .local v1, time:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCachedNtpTimeReference()J

    move-result-wide v3

    .line 784
    .local v3, timeReference:J
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime;->getCacheCertainty()J

    move-result-wide v6

    .line 785
    .local v6, certainty:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 787
    .local v10, now:J
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NTP server returned: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " ("

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ") reference: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " certainty: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, " system time offset: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v12, v1, v10

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    long-to-int v5, v6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    .line 794
    const-wide/32 v8, 0x5265c00

    .line 810
    .end local v1           #time:J
    .end local v3           #timeReference:J
    .end local v6           #certainty:J
    .end local v10           #now:J
    .local v8, delay:J
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-eqz v0, :cond_0

    .line 814
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "requestTime next time: "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 817
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 797
    .end local v8           #delay:J
    :cond_2
    const-string v0, "GpsLocationProvider"

    const-string v5, "requestTime failed"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    sget v0, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    const/4 v5, 0x3

    if-lt v0, v5, :cond_3

    .line 800
    const-wide/32 v8, 0x5265c00

    .line 801
    .restart local v8       #delay:J
    sput v12, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    .line 802
    const-string v0, "GpsLocationProvider"

    const-string v5, "[handleInjectNtpTime] NTP download over NTP_RETRY_MAXIMUM , after 24Hrs"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 804
    .end local v8           #delay:J
    :cond_3
    const-wide/32 v8, 0x493e0

    .line 805
    .restart local v8       #delay:J
    sget v0, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    .line 806
    const-string v0, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[handleInjectNtpTime] NTP requestTime got failed, retry INJECT_NTP_TIME counter:"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v12, Lcom/android/server/location/GpsLocationProvider;->mNTP_Retry_Count:I

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v12, ", after 5 Mins"

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private handleRemoveListener(I)V
    .locals 7
    .parameter "uid"

    .prologue
    .line 1186
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1188
    :try_start_0
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/location/BrcmGpsHooker;->onHandleRemoveListener(Landroid/content/Context;I)V

    .line 1190
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1191
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 1193
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 1196
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unneeded remove listener for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "uid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    monitor-exit v4

    .line 1212
    :goto_0
    return-void

    .line 1201
    :cond_0
    const-string v3, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeListener("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mNavigating="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1204
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 1206
    :try_start_1
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1211
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #name:Ljava/lang/String;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1207
    .restart local v1       #name:Ljava/lang/String;
    .restart local v2       #pm:Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v0

    .line 1208
    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "GpsLocationProvider"

    const-string v5, "RemoteException in removeListener"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private handleRequestSingleShot()V
    .locals 2

    .prologue
    .line 1080
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1081
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1082
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    .line 1083
    return-void
.end method

.method private handleUpdateAcquisitionDuration(I)V
    .locals 5
    .parameter "Acquisition_Duration"

    .prologue
    .line 2142
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TELLHTC] Acquisition_Duration:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 2145
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "GPS_module"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "acquisition"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "duration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 2148
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 2149
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2153
    .end local v1           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-void

    .line 2150
    :catch_0
    move-exception v0

    .line 2151
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Flush Acquisition_Duration fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .locals 6
    .parameter "location"

    .prologue
    .line 872
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleUpdateLocation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 881
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateLocation]: location.hasAccuracy() is NULL"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 10
    .parameter "state"
    .parameter "info"

    .prologue
    .line 705
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 708
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_8

    const-string v0, "available"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    if-eqz p2, :cond_1

    .line 713
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkType:I

    .line 714
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    const/4 v8, 0x1

    .line 716
    .local v8, dataEnabled:Z
    :goto_2
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz v8, :cond_a

    const/4 v4, 0x1

    .line 717
    .local v4, networkAvailable:Z
    :goto_3
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 718
    .local v6, defaultApn:Ljava/lang/String;
    if-nez v6, :cond_0

    .line 719
    const-string v6, "dummy-apn"

    .line 722
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 727
    .end local v4           #networkAvailable:Z
    .end local v6           #defaultApn:Ljava/lang/String;
    .end local v8           #dataEnabled:Z
    :cond_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 729
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 730
    .local v7, apnName:Ljava/lang/String;
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_b

    .line 731
    if-nez v7, :cond_2

    .line 734
    const-string v7, "dummy-apn"

    .line 736
    :cond_2
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 737
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 740
    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x3

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v9

    .line 743
    .local v9, route_result:Z
    if-nez v9, :cond_3

    const-string v0, "GpsLocationProvider"

    const-string v1, "call requestRouteToHost failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    .end local v9           #route_result:Z
    :cond_3
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 747
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 756
    .end local v7           #apnName:Ljava/lang/String;
    :cond_4
    :goto_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_6

    .line 757
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:Z

    if-eqz v0, :cond_5

    .line 758
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] send message: INJECT_NTP_TIME "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 762
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:Z

    if-eqz v0, :cond_6

    .line 763
    const-string v0, "GpsLocationProvider"

    const-string v1, "[handleUpdateNetworkState] send message: DOWNLOAD_XTRA_DATA "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 768
    :cond_6
    return-void

    .line 705
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 708
    :cond_8
    const-string v0, "unavailable"

    goto/16 :goto_1

    .line 714
    :cond_9
    const/4 v8, 0x0

    goto/16 :goto_2

    .line 716
    .restart local v8       #dataEnabled:Z
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 749
    .end local v8           #dataEnabled:Z
    .restart local v7       #apnName:Ljava/lang/String;
    :cond_b
    const-string v0, "GpsLocationProvider"

    const-string v1, "call native_agps_data_conn_failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 751
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 752
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_4
.end method

.method private handleUpdateTrackingDuration(I)V
    .locals 5
    .parameter "Tracking_Duration"

    .prologue
    .line 2157
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[TELLHTC] Tracking_Duration:["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :try_start_0
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 2160
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "GPS_module"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tracking"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "duration"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 2163
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 2164
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2168
    .end local v1           #uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    :goto_0
    return-void

    .line 2165
    :catch_0
    move-exception v0

    .line 2166
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Flush tracking duration fail:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private hasCapability(I)Z
    .locals 1
    .parameter "capability"

    .prologue
    .line 1457
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hibernate()V
    .locals 8

    .prologue
    .line 1448
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1449
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1450
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1451
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1452
    .local v0, now:J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget v6, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1454
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    .line 671
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 672
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 673
    const-string v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 674
    const-string v1, "com.htc.location.XTRA_ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 676
    const-string v1, "android.intent.action.QUICKBOOT_POWERON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 677
    const-string v1, "android.intent.action.QUICKBOOT_POWEROFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 679
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReciever:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 681
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    .line 683
    return-void
.end method

.method public static isSupported()Z
    .locals 1

    .prologue
    .line 549
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_supported()Z
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reportAGpsStatus(III)V
    .locals 6
    .parameter "type"
    .parameter "status"
    .parameter "ipaddr"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1813
    packed-switch p2, :pswitch_data_0

    .line 1869
    :cond_0
    :goto_0
    return-void

    .line 1815
    :pswitch_0
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1819
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 1821
    .local v0, result:I
    iput p3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    .line 1822
    if-nez v0, :cond_3

    .line 1823
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1824
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1825
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAGpsDataConnectionIpAddr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 1828
    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v3, 0x3

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:I

    invoke-virtual {v2, v3, v4}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result v1

    .line 1832
    .local v1, route_result:Z
    if-nez v1, :cond_1

    const-string v2, "GpsLocationProvider"

    const-string v3, "call requestRouteToHost failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    .end local v1           #route_result:Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;)V

    .line 1835
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_0

    .line 1837
    :cond_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving Phone.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1839
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_0

    .line 1841
    :cond_3
    if-ne v0, v5, :cond_4

    .line 1842
    const-string v2, "GpsLocationProvider"

    const-string v3, "Phone.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1845
    :cond_4
    const-string v2, "GpsLocationProvider"

    const-string v3, "startUsingNetworkFeature failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1846
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1847
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_0

    .line 1851
    .end local v0           #result:I
    :pswitch_1
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_0

    .line 1853
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v4, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1855
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1856
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto/16 :goto_0

    .line 1860
    :pswitch_2
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1863
    :pswitch_3
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1866
    :pswitch_4
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1813
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private reportLocation(IDDDFFFJ)V
    .locals 15
    .parameter "flags"
    .parameter "latitude"
    .parameter "longitude"
    .parameter "altitude"
    .parameter "speed"
    .parameter "bearing"
    .parameter "accuracy"
    .parameter "timestamp"

    .prologue
    .line 1470
    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v12

    .line 1471
    :try_start_0
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1472
    and-int/lit8 v11, p1, 0x1

    const/4 v13, 0x1

    if-ne v11, v13, :cond_0

    .line 1473
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p2

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 1474
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1475
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1477
    const-string v11, "GpsLocationProvider"

    const-string v13, "Before GpsTimeSync "

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1478
    invoke-static {}, Lcom/android/server/location/BrcmGpsHooker;->GpsTimeSync()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 1479
    invoke-static/range {p11 .. p12}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 1480
    const-string v11, "GpsLocationProvider"

    const-string v13, "GpsTimeSync Success"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    :cond_0
    :goto_0
    and-int/lit8 v11, p1, 0x2

    const/4 v13, 0x2

    if-ne v11, v13, :cond_2

    .line 1488
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v11, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1492
    :goto_1
    and-int/lit8 v11, p1, 0x4

    const/4 v13, 0x4

    if-ne v11, v13, :cond_3

    .line 1493
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v11, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1497
    :goto_2
    and-int/lit8 v11, p1, 0x8

    const/16 v13, 0x8

    if-ne v11, v13, :cond_4

    .line 1498
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v11, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1502
    :goto_3
    and-int/lit8 v11, p1, 0x10

    const/16 v13, 0x10

    if-ne v11, v13, :cond_5

    .line 1503
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v11, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1507
    :goto_4
    const-string v11, "GpsLocationProvider"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "reportLocation.flag:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1510
    :try_start_1
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v13, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1514
    :goto_5
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1516
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1518
    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    if-nez v11, :cond_8

    and-int/lit8 v11, p1, 0x1

    const/4 v12, 0x1

    if-ne v11, v12, :cond_8

    .line 1519
    iget-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v13, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v11, v13

    long-to-int v11, v11

    iput v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1520
    const-string v11, "GpsLocationProvider"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TTFF: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v12

    .line 1524
    :try_start_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1527
    .local v9, size:I
    sget v11, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v11, :cond_d

    sget-boolean v11, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v11, :cond_d

    .line 1530
    iget-object v13, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1531
    :try_start_4
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1533
    .local v10, sizeAllow:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_6
    if-ge v7, v10, :cond_6

    .line 1534
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1536
    .local v4, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_5
    const-string v11, "GpsLocationProvider"

    const-string v14, "[LPS] (HIT) reportLocation: onFirstFix+++ "

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    iget-object v11, v4, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v14, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v11, v14}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1533
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 1484
    .end local v4           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v7           #j:I
    .end local v9           #size:I
    .end local v10           #sizeAllow:I
    :cond_1
    :try_start_6
    const-string v11, "GpsLocationProvider"

    const-string v13, "No Need GpsTimeSync"

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1514
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 1490
    :cond_2
    :try_start_7
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_1

    .line 1495
    :cond_3
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_2

    .line 1500
    :cond_4
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_3

    .line 1505
    :cond_5
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v11}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_4

    .line 1511
    :catch_0
    move-exception v3

    .line 1512
    .local v3, e:Landroid/os/RemoteException;
    const-string v11, "GpsLocationProvider"

    const-string v13, "RemoteException calling reportLocation"

    invoke-static {v11, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_5

    .line 1538
    .end local v3           #e:Landroid/os/RemoteException;
    .restart local v4       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v7       #j:I
    .restart local v9       #size:I
    .restart local v10       #sizeAllow:I
    :catch_1
    move-exception v3

    .line 1539
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_8
    const-string v11, "GpsLocationProvider"

    const-string v14, "RemoteException in stopNavigating"

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1542
    add-int/lit8 v9, v9, -0x1

    goto :goto_7

    .line 1545
    .end local v3           #e:Landroid/os/RemoteException;
    .end local v4           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_6
    monitor-exit v13
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1563
    .end local v7           #j:I
    .end local v10           #sizeAllow:I
    :cond_7
    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1566
    .end local v9           #size:I
    :cond_8
    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v11, :cond_9

    .line 1567
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1569
    :cond_9
    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v11, :cond_b

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_b

    .line 1572
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v11

    if-nez v11, :cond_a

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v12, 0xea60

    if-ge v11, v12, :cond_a

    .line 1573
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v12, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v11, v12}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1577
    :cond_a
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v6, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1578
    .local v6, intent:Landroid/content/Intent;
    const-string v11, "enabled"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1579
    const-string v11, "GpsLocationProvider"

    const-string v12, "[GICON] +++++ GPS_FIX_CHANGE_ACTION +++++  (true)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J

    sub-long/2addr v11, v13

    long-to-int v11, v11

    div-int/lit16 v2, v11, 0x3e8

    .line 1583
    .local v2, Acquisition_Duration:I
    const/16 v11, 0xb

    const/4 v12, 0x0

    invoke-direct {p0, v11, v2, v12}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iput-wide v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Start:J

    .line 1585
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    .line 1587
    const/4 v11, 0x2

    iget v12, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v12}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1590
    .end local v2           #Acquisition_Duration:I
    .end local v6           #intent:Landroid/content/Intent;
    :cond_b
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v11

    if-nez v11, :cond_c

    iget-boolean v11, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v11, :cond_c

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v12, 0x3e8

    if-le v11, v12, :cond_c

    .line 1591
    const-string v11, "GpsLocationProvider"

    const-string v12, "got fix, hibernating"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1594
    :cond_c
    return-void

    .line 1545
    .restart local v9       #size:I
    :catchall_1
    move-exception v11

    :try_start_a
    monitor-exit v13
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v11

    .line 1563
    .end local v9           #size:I
    :catchall_2
    move-exception v11

    monitor-exit v12
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v11

    .line 1550
    .restart local v9       #size:I
    :cond_d
    const/4 v5, 0x0

    .local v5, i:I
    :goto_8
    if-ge v5, v9, :cond_7

    .line 1551
    :try_start_c
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 1553
    .local v8, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_d
    iget-object v11, v8, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    iget v13, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    invoke-interface {v11, v13}, Landroid/location/IGpsStatusListener;->onFirstFix(I)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_2

    .line 1550
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1554
    :catch_2
    move-exception v3

    .line 1555
    .restart local v3       #e:Landroid/os/RemoteException;
    :try_start_e
    const-string v11, "GpsLocationProvider"

    const-string v13, "RemoteException in stopNavigating"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 1558
    add-int/lit8 v9, v9, -0x1

    goto :goto_9
.end method

.method private reportNmea(J)V
    .locals 16
    .parameter "timestamp"

    .prologue
    .line 1875
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    monitor-enter v12

    .line 1876
    :try_start_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1877
    .local v9, size:I
    if-lez v9, :cond_1

    .line 1879
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v13, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v6

    .line 1880
    .local v6, length:I
    new-instance v8, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v13, 0x0

    invoke-direct {v8, v11, v13, v6}, Ljava/lang/String;-><init>([BII)V

    .line 1883
    .local v8, nmea:Ljava/lang/String;
    sget v11, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v11, :cond_2

    sget-boolean v11, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v11, :cond_2

    .line 1887
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    monitor-enter v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1888
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1890
    .local v10, sizeAllow:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    if-ge v5, v10, :cond_0

    .line 1891
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 1893
    .local v3, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    const-string v11, "GpsLocationProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "[LPS] (HIT) reportNmea: listener = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1895
    :try_start_2
    iget-object v11, v3, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-wide/from16 v0, p1

    invoke-interface {v11, v0, v1, v8}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1890
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1896
    :catch_0
    move-exception v2

    .line 1897
    .local v2, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v11, "GpsLocationProvider"

    const-string v14, "RemoteException in reportNmea"

    invoke-static {v11, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1900
    add-int/lit8 v9, v9, -0x1

    goto :goto_1

    .line 1903
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1925
    .end local v5           #j:I
    .end local v6           #length:I
    .end local v8           #nmea:Ljava/lang/String;
    .end local v10           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1926
    return-void

    .line 1903
    .restart local v6       #length:I
    .restart local v8       #nmea:Ljava/lang/String;
    :catchall_0
    move-exception v11

    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v11

    .line 1925
    .end local v6           #length:I
    .end local v8           #nmea:Ljava/lang/String;
    .end local v9           #size:I
    :catchall_1
    move-exception v11

    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11

    .line 1909
    .restart local v6       #length:I
    .restart local v8       #nmea:Ljava/lang/String;
    .restart local v9       #size:I
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v9, :cond_1

    .line 1910
    :try_start_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1914
    .local v7, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    iget-object v11, v7, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-wide/from16 v0, p1

    invoke-interface {v11, v0, v1, v8}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1909
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1915
    :catch_1
    move-exception v2

    .line 1916
    .restart local v2       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v11, "GpsLocationProvider"

    const-string v13, "RemoteException in reportNmea"

    invoke-static {v11, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1917
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1919
    add-int/lit8 v9, v9, -0x1

    goto :goto_3
.end method

.method private reportStatus(I)V
    .locals 21
    .parameter "status"

    .prologue
    .line 1600
    const-string v15, "GpsLocationProvider"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "reportStatus status: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 1603
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1605
    .local v14, wasNavigating:Z
    packed-switch p1, :pswitch_data_0

    .line 1622
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v14, v15, :cond_7

    .line 1623
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 1626
    .local v11, size:I
    sget v15, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v15, :cond_3

    sget-boolean v15, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v15, :cond_3

    .line 1629
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    monitor-enter v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1630
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 1632
    .local v12, sizeAllow:I
    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    if-ge v9, v12, :cond_1

    .line 1633
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 1635
    .local v6, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    const-string v15, "GpsLocationProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "[LPS] (HIT) reportStatus: listener = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1637
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v15, :cond_0

    .line 1638
    iget-object v15, v6, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v15}, Landroid/location/IGpsStatusListener;->onGpsStarted()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1632
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1607
    .end local v6           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v9           #j:I
    .end local v11           #size:I
    .end local v12           #sizeAllow:I
    :pswitch_0
    const/4 v15, 0x1

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1608
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1715
    .end local v14           #wasNavigating:Z
    :catchall_0
    move-exception v15

    monitor-exit v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v15

    .line 1611
    .restart local v14       #wasNavigating:Z
    :pswitch_1
    const/4 v15, 0x0

    :try_start_4
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_0

    .line 1614
    :pswitch_2
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_0

    .line 1617
    :pswitch_3
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1618
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 1640
    .restart local v6       #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v9       #j:I
    .restart local v11       #size:I
    .restart local v12       #sizeAllow:I
    :cond_0
    :try_start_5
    iget-object v15, v6, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v15}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 1642
    :catch_0
    move-exception v5

    .line 1643
    .local v5, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v15, "GpsLocationProvider"

    const-string v18, "RemoteException in reportStatus"

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1646
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 1649
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v6           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    monitor-exit v17
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1675
    .end local v9           #j:I
    .end local v12           #sizeAllow:I
    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v15

    add-int/lit8 v7, v15, -0x1

    .local v7, i:I
    :goto_3
    if-ltz v7, :cond_6

    .line 1676
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mClientUids:Landroid/util/SparseIntArray;

    invoke-virtual {v15, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v13

    .line 1677
    .local v13, uid:I
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v15, :cond_5

    .line 1678
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v15, v13}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1675
    :goto_4
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 1649
    .end local v7           #i:I
    .end local v13           #uid:I
    :catchall_1
    move-exception v15

    :try_start_8
    monitor-exit v17
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v15

    .line 1655
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    if-ge v7, v11, :cond_2

    .line 1656
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1658
    .local v10, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v15, :cond_4

    .line 1659
    iget-object v15, v10, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v15}, Landroid/location/IGpsStatusListener;->onGpsStarted()V

    .line 1655
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1661
    :cond_4
    iget-object v15, v10, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v15}, Landroid/location/IGpsStatusListener;->onGpsStopped()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_6

    .line 1663
    :catch_1
    move-exception v5

    .line 1664
    .restart local v5       #e:Landroid/os/RemoteException;
    :try_start_b
    const-string v15, "GpsLocationProvider"

    const-string v17, "RemoteException in reportStatus"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 1667
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 1680
    .end local v5           #e:Landroid/os/RemoteException;
    .end local v10           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v13       #uid:I
    :cond_5
    :try_start_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v15, v13}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    .line 1683
    .end local v7           #i:I
    .end local v13           #uid:I
    :catch_2
    move-exception v5

    .line 1684
    .restart local v5       #e:Landroid/os/RemoteException;
    :try_start_d
    const-string v15, "GpsLocationProvider"

    const-string v17, "RemoteException in reportStatus"

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    .end local v5           #e:Landroid/os/RemoteException;
    :cond_6
    const-string v15, "GpsLocationProvider"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "[GICON] ### GPS_ENABLED_CHANGE_ACTION ###  ("

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ")"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v15, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1689
    new-instance v8, Landroid/content/Intent;

    const-string v15, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v8, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1690
    .local v8, intent:Landroid/content/Intent;
    const-string v15, "enabled"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v8, v15, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1691
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1693
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-nez v15, :cond_9

    .line 1695
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    if-eqz v15, :cond_8

    .line 1697
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    .line 1698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    .line 1699
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Start:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v15, v0

    div-int/lit16 v4, v15, 0x3e8

    .line 1700
    .local v4, Tracking_Duration:I
    const/16 v15, 0xc

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v4, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1715
    .end local v4           #Tracking_Duration:I
    .end local v8           #intent:Landroid/content/Intent;
    .end local v11           #size:I
    :cond_7
    :goto_7
    monitor-exit v16

    .line 1716
    return-void

    .line 1704
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v11       #size:I
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    long-to-int v15, v0

    div-int/lit16 v3, v15, 0x3e8

    .line 1705
    .local v3, Acquisition_Duration:I
    const/16 v15, 0xb

    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v15, v3, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_7

    .line 1711
    .end local v3           #Acquisition_Duration:I
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_7

    .line 1605
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private reportSvStatus()V
    .locals 22

    .prologue
    .line 1723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v2

    .line 1725
    .local v2, svCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1726
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1729
    .local v17, size:I
    sget v1, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-lez v1, :cond_2

    sget-boolean v1, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    if-nez v1, :cond_2

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1733
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 1735
    .local v18, sizeAllow:I
    const/4 v15, 0x0

    .local v15, j:I
    :goto_0
    move/from16 v0, v18

    if-ge v15, v0, :cond_0

    .line 1736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 1738
    .local v12, htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[LPS] (HIT) reportSvStatus: listener = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1740
    :try_start_2
    iget-object v1, v12, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v21, 0x2

    aget v9, v9, v21

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1735
    :goto_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 1743
    :catch_0
    move-exception v11

    .line 1744
    .local v11, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1747
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    .line 1750
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v12           #htclistener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_0
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1770
    .end local v15           #j:I
    .end local v18           #sizeAllow:I
    :cond_1
    :try_start_4
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1773
    const-string v1, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SV count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ephemerisMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " almanacMask: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    const/4 v13, 0x0

    .local v13, i:I
    :goto_2
    if-ge v13, v2, :cond_6

    .line 1777
    const-string v3, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sv: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " snr: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v4, v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " elev: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v4, v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " azimuth: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v4, v4, v13

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x0

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v13

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_3

    const-string v1, "  "

    :goto_3
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x1

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v13

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_4

    const-string v1, "  "

    :goto_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v5, 0x2

    aget v1, v1, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v6, v6, v13

    add-int/lit8 v6, v6, -0x1

    shl-int/2addr v5, v6

    and-int/2addr v1, v5

    if-nez v1, :cond_5

    const-string v1, ""

    :goto_5
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1776
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 1750
    .end local v13           #i:I
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v20
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 1770
    .end local v17           #size:I
    :catchall_1
    move-exception v1

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 1755
    .restart local v17       #size:I
    :cond_2
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_6
    move/from16 v0, v17

    if-ge v13, v0, :cond_1

    .line 1756
    :try_start_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1758
    .local v16, listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :try_start_8
    move-object/from16 v0, v16

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/16 v20, 0x2

    aget v9, v9, v20

    invoke-interface/range {v1 .. v9}, Landroid/location/IGpsStatusListener;->onSvStatusChanged(I[I[F[F[FIII)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1755
    :goto_7
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 1761
    :catch_1
    move-exception v11

    .line 1762
    .restart local v11       #e:Landroid/os/RemoteException;
    :try_start_9
    const-string v1, "GpsLocationProvider"

    const-string v3, "RemoteException in reportSvInfo"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 1765
    add-int/lit8 v17, v17, -0x1

    goto :goto_7

    .line 1777
    .end local v11           #e:Landroid/os/RemoteException;
    .end local v16           #listener:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_3
    const-string v1, " E"

    goto/16 :goto_3

    :cond_4
    const-string v1, " A"

    goto/16 :goto_4

    :cond_5
    const-string v1, "U"

    goto :goto_5

    .line 1788
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->bitCount(I)I

    move-result v3

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1790
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_7

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x2710

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    .line 1793
    const-string v1, "GpsLocationProvider"

    const-string v3, "[GICON] ----- GPS_FIX_CHANGE_ACTION -----  (false)"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    new-instance v14, Landroid/content/Intent;

    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v14, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1795
    .local v14, intent:Landroid/content/Intent;
    const-string v1, "enabled"

    const/4 v3, 0x0

    invoke-virtual {v14, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1796
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1797
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1800
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    .line 1801
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    .line 1802
    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Start:J

    sub-long/2addr v3, v5

    long-to-int v1, v3

    div-int/lit16 v10, v1, 0x3e8

    .line 1803
    .local v10, Tracking_Duration:I
    const/16 v1, 0xc

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v10, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1804
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object/from16 v0, p0

    iput-wide v3, v0, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J

    .line 1807
    .end local v10           #Tracking_Duration:I
    .end local v14           #intent:Landroid/content/Intent;
    :cond_7
    return-void
.end method

.method private requestRefLocation(I)V
    .locals 10
    .parameter "flags"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x3

    .line 2092
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2094
    .local v8, phone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2095
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2096
    .local v6, gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_4

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    if-ne v0, v9, :cond_4

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_4

    .line 2100
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2101
    .local v2, mcc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2102
    .local v3, mnc:I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2103
    .local v7, networkType:I
    if-eq v7, v5, :cond_0

    const/16 v0, 0x8

    if-eq v7, v0, :cond_0

    const/16 v0, 0x9

    if-eq v7, v0, :cond_0

    const/16 v0, 0xa

    if-ne v7, v0, :cond_3

    .line 2107
    :cond_0
    const/4 v1, 0x2

    .line 2112
    .local v1, type:I
    :goto_0
    const/16 v0, 0x1cc

    if-ne v2, v0, :cond_2

    if-eqz v3, :cond_1

    const/4 v0, 0x7

    if-eq v3, v0, :cond_1

    const/4 v0, 0x2

    if-ne v3, v0, :cond_2

    .line 2113
    :cond_1
    const/4 v1, 0x1

    .line 2115
    :cond_2
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2124
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #networkType:I
    :goto_1
    return-void

    .line 2109
    .restart local v2       #mcc:I
    .restart local v3       #mnc:I
    .restart local v6       #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #networkType:I
    :cond_3
    const/4 v1, 0x1

    .restart local v1       #type:I
    goto :goto_0

    .line 2118
    .end local v1           #type:I
    .end local v2           #mcc:I
    .end local v3           #mnc:I
    .end local v7           #networkType:I
    :cond_4
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2122
    .end local v6           #gsm_cell:Landroid/telephony/gsm/GsmCellLocation;
    :cond_5
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private requestSetID(I)V
    .locals 6
    .parameter "flags"

    .prologue
    .line 2049
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2051
    .local v2, phone:Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2052
    .local v3, type:I
    const-string v0, ""

    .line 2054
    .local v0, data:Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2055
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2056
    .local v1, data_temp:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 2074
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2075
    return-void

    .line 2060
    .restart local v1       #data_temp:Ljava/lang/String;
    :cond_1
    move-object v0, v1

    .line 2061
    const/4 v3, 0x1

    goto :goto_0

    .line 2064
    .end local v1           #data_temp:Ljava/lang/String;
    :cond_2
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 2065
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2066
    .restart local v1       #data_temp:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 2070
    move-object v0, v1

    .line 2071
    const/4 v3, 0x2

    goto :goto_0
.end method

.method private requestUtcTime()V
    .locals 0

    .prologue
    .line 2085
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .locals 4
    .parameter "message"
    .parameter "arg"
    .parameter "obj"

    .prologue
    .line 2128
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2129
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    const/4 v3, 0x1

    shl-int/2addr v3, p1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingMessageBits:I

    .line 2130
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2131
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2132
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 2133
    .local v0, m:Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 2134
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2135
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2136
    monitor-exit v2

    .line 2137
    return-void

    .line 2136
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setEngineCapabilities(I)V
    .locals 3
    .parameter "capabilities"

    .prologue
    .line 1932
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[setEngineCapabilities] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1935
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_0

    .line 1936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1943
    :cond_0
    return-void
.end method

.method private startNavigating(Z)V
    .locals 10
    .parameter "singleShot"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 1323
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v0, :cond_1

    .line 1325
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: Skip request due to Quick boot power off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1330
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_9

    .line 1331
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating, singleshot="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1333
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1334
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1337
    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Start:J

    .line 1338
    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mTracking_Stop:J

    .line 1339
    iput-wide v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAquisition_Start:J

    .line 1340
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mIs_In_Tracking:Z

    .line 1342
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    .line 1344
    const-string v0, "GpsLocationProvider"

    const-string v1, "Settings.Secure.ASSISTED_GPS_ENABLED: assisted_gps_enabled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    if-eqz p1, :cond_5

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1346
    iput v7, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1351
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-static {v0}, Lcom/android/server/location/BrcmGpsHooker;->getPositionModeFromSphCfg(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1352
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating, singleshot="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mNetworkType"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " mNetworkAvailable"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_4

    .line 1357
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-eq v0, v6, :cond_3

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    if-ne v0, v7, :cond_4

    .line 1359
    :cond_3
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkType:I

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_4

    .line 1361
    const-string v0, "GpsLocationProvider"

    const-string v1, "Log only Position Mode MSA MSB But Network unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_4
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetPositionMode, mode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1380
    .local v3, interval:I
    :goto_2
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1382
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1383
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1347
    .end local v3           #interval:I
    :cond_5
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1348
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    goto/16 :goto_1

    .line 1379
    :cond_6
    const/16 v3, 0x3e8

    goto :goto_2

    .line 1387
    .restart local v3       #interval:I
    :cond_7
    invoke-static {}, Lcom/android/server/location/BrcmGpsHooker;->onGpsStart()V

    .line 1388
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: set_position_mode (complete)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1392
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1393
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1396
    :cond_8
    const-string v0, "GpsLocationProvider"

    const-string v1, "startNavigating: native_start (complete)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    invoke-direct {p0, v6, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1399
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1400
    invoke-direct {p0, v6}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1403
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_0

    .line 1404
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/32 v4, 0xea60

    add-long/2addr v1, v4

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 1412
    .end local v3           #interval:I
    :cond_9
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(XXX) startNavigating : mStarted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private stopNavigating()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1417
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_0

    .line 1419
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1420
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1421
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1422
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTTFF:I

    .line 1423
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1424
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1427
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1428
    invoke-static {}, Lcom/android/server/location/BrcmGpsHooker;->onBeforeGpsStop()V

    .line 1444
    :cond_0
    return-void
.end method

.method private updateStatus(II)V
    .locals 2
    .parameter "status"
    .parameter "svCount"

    .prologue
    .line 1032
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_1

    .line 1033
    :cond_0
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1034
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1035
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1036
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1038
    :cond_1
    return-void
.end method

.method private xtraDownloadRequest()V
    .locals 2

    .prologue
    .line 1949
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1953
    return-void
.end method


# virtual methods
.method public addListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1132
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->IsQuickBootPowerOff:Z

    if-eqz v1, :cond_0

    .line 1134
    const-string v1, "GpsLocationProvider"

    const-string v2, "addListener: Skip request due to Quick boot power off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :goto_0
    return-void

    .line 1138
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1139
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1140
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1141
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x8

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1142
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1143
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1144
    monitor-exit v2

    goto :goto_0

    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disable()V
    .locals 4

    .prologue
    .line 1004
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1005
    const/4 v0, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1006
    monitor-exit v1

    .line 1007
    return-void

    .line 1006
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 974
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 975
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 976
    monitor-exit v1

    .line 977
    return-void

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableLocationTracking(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v1

    .line 1047
    const/4 v2, 0x3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1048
    monitor-exit v1

    .line 1049
    return-void

    .line 1047
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1048
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAccuracy()I
    .locals 1

    .prologue
    .line 965
    const/4 v0, 0x1

    return v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getInternalState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1106
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 689
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .locals 1

    .prologue
    .line 1974
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getPowerRequirement()I
    .locals 1

    .prologue
    .line 947
    const/4 v0, 0x3

    return v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .locals 2
    .parameter "extras"

    .prologue
    .line 1025
    if-eqz p1, :cond_0

    .line 1026
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1028
    :cond_0
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .locals 2

    .prologue
    .line 1041
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public hasMonetaryCost()Z
    .locals 1

    .prologue
    .line 907
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1021
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    return v0
.end method

.method public meetsCriteria(Landroid/location/Criteria;)Z
    .locals 2
    .parameter "criteria"

    .prologue
    const/4 v0, 0x1

    .line 955
    invoke-virtual {p1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeListener(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 1176
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 1177
    :try_start_0
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPendingListenerMessages:I

    .line 1178
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1179
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x9

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1180
    .local v0, m:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1181
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1182
    monitor-exit v2

    .line 1183
    return-void

    .line 1182
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 10
    .parameter "notificationId"
    .parameter "niType"
    .parameter "notifyFlags"
    .parameter "timeout"
    .parameter "defaultResponse"
    .parameter "requestorId"
    .parameter "text"
    .parameter "requestorIdEncoding"
    .parameter "textEncoding"
    .parameter "extras"

    .prologue
    .line 1991
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1992
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2003
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2005
    .local v6, notification:Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2006
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2007
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2008
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2009
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_3

    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2010
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2011
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2012
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2013
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2014
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2015
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2019
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2021
    .local v1, bundle:Landroid/os/Bundle;
    if-nez p10, :cond_0

    const-string p10, ""

    .line 2022
    :cond_0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2025
    .local v4, extraProp:Ljava/util/Properties;
    :try_start_0
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2032
    :goto_3
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2034
    .local v3, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 2007
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v3           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4           #extraProp:Ljava/util/Properties;
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 2008
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 2009
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 2027
    .restart local v1       #bundle:Landroid/os/Bundle;
    .restart local v4       #extraProp:Ljava/util/Properties;
    :catch_0
    move-exception v2

    .line 2029
    .local v2, e:Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2037
    .end local v2           #e:Ljava/io/IOException;
    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_4
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2039
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2040
    return-void
.end method

.method public requestSingleShotFix()Z
    .locals 4

    .prologue
    .line 1067
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v1, :cond_0

    .line 1069
    const/4 v1, 0x0

    .line 1076
    :goto_0
    return v1

    .line 1071
    :cond_0
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    .line 1072
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1073
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 1074
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    monitor-exit v2

    .line 1076
    const/4 v1, 0x1

    goto :goto_0

    .line 1075
    .end local v0           #m:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requiresCell()Z
    .locals 1

    .prologue
    .line 898
    const/4 v0, 0x0

    return v0
.end method

.method public requiresNetwork()Z
    .locals 1

    .prologue
    .line 697
    const/4 v0, 0x1

    return v0
.end method

.method public requiresSatellite()Z
    .locals 1

    .prologue
    .line 889
    const/4 v0, 0x1

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 8
    .parameter "command"
    .parameter "extras"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1216
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1217
    .local v0, identity:J
    const/4 v3, 0x0

    .line 1219
    .local v3, result:Z
    const-string v4, "GpsLocationProvider"

    const-string v5, "sendExtraCommand ++"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v4, "delete_aiding_data"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1222
    const-string v4, "GpsLocationProvider"

    const-string v5, "sendExtraCommand: delete_aiding_data"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v3

    .line 1283
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1284
    return v3

    .line 1224
    :cond_1
    const-string v4, "force_time_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1225
    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-direct {p0, v4, v7, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1226
    const/4 v3, 0x1

    goto :goto_0

    .line 1227
    :cond_2
    const-string v4, "force_xtra_injection"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1228
    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v4, :cond_0

    .line 1229
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1230
    const/4 v3, 0x1

    goto :goto_0

    .line 1233
    :cond_3
    const-string v4, "set_privacy_lock"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1237
    const-string v4, "enable_lock"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1238
    .local v2, mPrivacySetting:I
    if-ne v2, v6, :cond_4

    .line 1239
    sput-boolean v7, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 1240
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = false "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    :goto_1
    const/4 v3, 0x1

    .line 1254
    goto :goto_0

    .line 1242
    :cond_4
    if-nez v2, :cond_5

    .line 1243
    sput-boolean v6, Lcom/android/server/location/GpsLocationProvider;->mHTCPrivacySetting:Z

    .line 1244
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting = true "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1247
    :cond_5
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: set_privacy_lock: mHTCPrivacySetting => Incorrect value !!!   <FAIL>"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1254
    .end local v2           #mPrivacySetting:I
    :cond_6
    const-string v4, "disable_backdoor_gps_request"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1255
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 1257
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LPS] sendExtraCommand: disable_backdoor_gps_request.  --->(XXXXX)  , mHtcAllowAPCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    if-gez v4, :cond_7

    .line 1259
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: disable_backdoor_gps_request , mHtcAllowAPCount already < 0 ...... (CHECK) !!!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    sput v7, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 1262
    :cond_7
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1263
    :cond_8
    const-string v4, "enable_backdoor_gps_request"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1264
    sget v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    add-int/lit8 v4, v4, 0x1

    sput v4, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    .line 1265
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[LPS] sendExtraCommand: enable_backdoor_gps_request.   --->(OOOOO)  , mHtcAllowAPCount = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/location/GpsLocationProvider;->mHtcAllowAPCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1268
    :cond_9
    const-string v4, "disable_backdoor_gps_listener"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1269
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: disable_backdoor_gps_listener."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1270
    sput-boolean v7, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 1271
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1272
    :cond_a
    const-string v4, "enable_backdoor_gps_listener"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1273
    const-string v4, "GpsLocationProvider"

    const-string v5, "[LPS] sendExtraCommand: enable_backdoor_gps_listener."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    sput-boolean v6, Lcom/android/server/location/GpsLocationProvider;->mAllowBackDoorListener:Z

    .line 1275
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 1280
    :cond_b
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendExtraCommand: unknown command "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setMinTime(JLandroid/os/WorkSource;)V
    .locals 6
    .parameter "minTime"
    .parameter "ws"

    .prologue
    const/4 v2, 0x0

    .line 1086
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMinTime "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 1089
    long-to-int v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1091
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1092
    const-string v0, "GpsLocationProvider"

    const-string v1, "setMinTime: mStarted is TRUE && hasCapability is OK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    :cond_0
    :goto_0
    return-void

    .line 1100
    :cond_1
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(*)setMinTime: mStarted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsAltitude()Z
    .locals 1

    .prologue
    .line 917
    const/4 v0, 0x1

    return v0
.end method

.method public supportsBearing()Z
    .locals 1

    .prologue
    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public supportsSpeed()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x1

    return v0
.end method

.method public updateLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 868
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 869
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 701
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 702
    return-void
.end method
