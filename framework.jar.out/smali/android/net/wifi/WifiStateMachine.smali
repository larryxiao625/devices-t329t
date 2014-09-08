.class public Landroid/net/wifi/WifiStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;,
        Landroid/net/wifi/WifiStateMachine$TetheredState;,
        Landroid/net/wifi/WifiStateMachine$TetheringState;,
        Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartedState;,
        Landroid/net/wifi/WifiStateMachine$SoftApStartingState;,
        Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectedState;,
        Landroid/net/wifi/WifiStateMachine$DisconnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectedState;,
        Landroid/net/wifi/WifiStateMachine$ConnectingState;,
        Landroid/net/wifi/WifiStateMachine$ConnectModeState;,
        Landroid/net/wifi/WifiStateMachine$ScanModeState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStoppingState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartedState;,
        Landroid/net/wifi/WifiStateMachine$DriverStartingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;,
        Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;,
        Landroid/net/wifi/WifiStateMachine$DriverFailedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadedState;,
        Landroid/net/wifi/WifiStateMachine$DriverLoadingState;,
        Landroid/net/wifi/WifiStateMachine$InitialState;,
        Landroid/net/wifi/WifiStateMachine$DefaultState;,
        Landroid/net/wifi/WifiStateMachine$CwHandler;,
        Landroid/net/wifi/WifiStateMachine$TetherStateChange;,
        Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    }
.end annotation


# static fields
.field private static final ACTION_IPV6_RENEW:Ljava/lang/String; = "android.net.wifi.IPV6_RENEW"

.field private static final ACTION_START_SCAN:Ljava/lang/String; = "com.android.server.WifiManager.action.START_SCAN"

.field private static final ACTION_WIFI_AP_CONN_REQ_TIMEOUT:Ljava/lang/String; = "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

.field static final ARP_FILTER:I = 0x5

.field static final AUTHENTICATION_FAILURE_EVENT:I = 0x20028

.field static final BASE:I = 0x20000

.field private static final BLACK_LIST_SIZE:I = 0x10

.field static final BROADCAST_FILTER:I = 0x1

.field private static final BROADCAST_INTENT_ACTION_CUSTOMIZATION:Ljava/lang/String; = "android.htc.intent.action.CUSTOMIZATION_CHANGE"

.field static final CMD_ADD_OR_UPDATE_NETWORK:I = 0x20034

.field static final CMD_ASSOC_LIST_CHANGE:I = 0x2007c

.field static final CMD_BLACKLIST_NETWORK:I = 0x20039

.field static final CMD_BLUETOOTH_ADAPTER_STATE_CHANGE:I = 0x2001f

.field static final CMD_CLEAR_BLACKLIST:I = 0x2003a

.field static final CMD_CONNECTION_REQUESTS:I = 0x2007b

.field static final CMD_CONNECT_NETWORK:I = 0x20056

.field static final CMD_DELAYED_STOP_DRIVER:I = 0x20012

.field static final CMD_DISABLE_NETWORK:I = 0x20038

.field static final CMD_DISCONNECT:I = 0x2004a

.field static final CMD_ENABLE_ALL_NETWORKS:I = 0x20037

.field static final CMD_ENABLE_BACKGROUND_SCAN:I = 0x2005b

.field static final CMD_ENABLE_NETWORK:I = 0x20036

.field static final CMD_ENABLE_RSSI_POLL:I = 0x20052

.field static final CMD_FORGET_NETWORK:I = 0x20058

.field static final CMD_LOAD_DRIVER:I = 0x20001

.field static final CMD_LOAD_DRIVER_FAILURE:I = 0x20004

.field static final CMD_LOAD_DRIVER_SUCCESS:I = 0x20003

.field static final CMD_MAC_LIST_PROFILE_CHANGE:I = 0x2007d

.field static final CMD_PING_SUPPLICANT:I = 0x20033

.field static final CMD_REASSOCIATE:I = 0x2004c

.field static final CMD_RECONNECT:I = 0x2004b

.field static final CMD_REMOVE_NETWORK:I = 0x20035

.field static final CMD_RENEW_IPV6:I = 0x20086

.field static final CMD_REQUEST_AP_CONFIG:I = 0x2001b

.field static final CMD_RESET_SUPPLICANT_STATE:I = 0x2006f

.field static final CMD_RESET_WPS_STATE:I = 0x2007a

.field static final CMD_RESPONSE_AP_CONFIG:I = 0x2001c

.field static final CMD_RSSI_POLL:I = 0x20053

.field static final CMD_SAVE_CONFIG:I = 0x2003b

.field static final CMD_SAVE_NETWORK:I = 0x20057

.field static final CMD_SET_AP_CONFIG:I = 0x20019

.field static final CMD_SET_AP_CONFIG_COMPLETED:I = 0x2001a

.field static final CMD_SET_COUNTRY_CODE:I = 0x20050

.field static final CMD_SET_FREQUENCY_BAND:I = 0x2005a

.field static final CMD_SET_HIGH_PERF_MODE:I = 0x2004d

.field static final CMD_SET_RSSI_TO_WIFIINFO:I = 0x20081

.field static final CMD_SET_SCAN_MODE:I = 0x20048

.field static final CMD_SET_SCAN_TYPE:I = 0x20049

.field static final CMD_SET_SCREEN_ON:I = 0x2007e

.field static final CMD_SET_WIFIDISPLAY_AP_CONFIG:I = 0x2007f

.field static final CMD_START_AP:I = 0x20015

.field static final CMD_START_AP_FAILURE:I = 0x20017

.field static final CMD_START_AP_SUCCESS:I = 0x20016

.field static final CMD_START_DONGLE_SCAN:I = 0x20068

.field static final CMD_START_DONGLE_SINGLE_CSCAN:I = 0x20069

.field static final CMD_START_DONGLE_WAKEUP:I = 0x2006a

.field static final CMD_START_DRIVER:I = 0x2000d

.field static final CMD_START_PACKET_FILTERING:I = 0x20054

.field static final CMD_START_SCAN:I = 0x20047

.field static final CMD_START_SUPPLICANT:I = 0x2000b

.field static final CMD_START_WPS:I = 0x20059

.field static final CMD_START_WPS_REGISTRAR:I = 0x20061

.field static final CMD_STATIC_IP_FAILURE:I = 0x20010

.field static final CMD_STATIC_IP_SUCCESS:I = 0x2000f

.field static final CMD_STOP_AP:I = 0x20018

.field static final CMD_STOP_DRIVER:I = 0x2000e

.field static final CMD_STOP_PACKET_FILTERING:I = 0x20055

.field static final CMD_STOP_SUPPLICANT:I = 0x2000c

.field static final CMD_STOP_SUPPLICANT_FAILED:I = 0x20011

.field static final CMD_STOP_WPS:I = 0x2005d

.field static final CMD_STOP_WPS_REGISTRAR:I = 0x20062

.field static final CMD_TETHER_NOTIFICATION_TIMED_OUT:I = 0x2001e

.field static final CMD_TETHER_STATE_CHANGE:I = 0x2001d

.field static final CMD_UNLOAD_DRIVER:I = 0x20002

.field static final CMD_UNLOAD_DRIVER_FAILURE:I = 0x20006

.field static final CMD_UNLOAD_DRIVER_SUCCESS:I = 0x20005

.field static final CMD_UPDATE_IPV6_ADDRESSES:I = 0x20085

.field static final CMD_WIFIDISPLAY_MAC_LIST_PROFILE_CHANGE:I = 0x20080

.field private static final CONNECT_MODE:I = 0x1

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DBG_DETAIL:Z = false

.field private static final DEFAULT_DHCP_FAIL_WORKAROUND:I = 0x2

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x2

.field private static final DELAYED_DRIVER_STOP_MS:I = 0x1d4c0

.field static final DHCPOFFER_FILTER:I = 0x4

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_DISABLE:I = 0x14

.field private static final DRIVER_WIFI_BEST_PERFORMANCE_ENABLE:I = 0x15

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_WIFI_EVENT_HANDLED:I = 0xc366

.field private static final EVENTLOG_WIFI_STATE_CHANGED:I = 0xc365

.field private static final EVENT_CW_DEREGISTER_START:I = 0x3ea

.field private static final EVENT_CW_REGISTER_EXPIRE_START:I = 0x3eb

.field private static final EVENT_CW_REGISTER_START:I = 0x3e9

.field static final EVENT_EAP_NOTIFICATION:I = 0x20021

.field static final EVENT_GET_AIRPLANE_MODE:I = 0x20020

.field private static final EVENT_HTC_BASE:I = 0x12c

.field public static final EVENT_HTC_STATE_UPDATE:I = 0x131

.field public static final EVENT_STATE_CHANGED:I = 0x1

.field private static final EXPLICIT_CONNECT_ALLOWED_DELAY_MS:J = 0x1d4c0L

.field private static final FAILURE:I = -0x1

.field private static final FLASHLIGHT_FILE:Ljava/lang/String; = "/sys/camera_led_status/led_hotspot_status"

.field static final HEXES:Ljava/lang/String; = "0123456789ABCDEF"

.field private static final HOTSPOT_REQUESTED_MILLIS:J = 0x1d4c0L

.field private static final ICON_WIFI_CONNECTION_REQUEST:I = 0x10804f4

.field private static final IN_ECM_STATE:I = 0x1

.field private static final IPV6_RENEW:I = 0x0

.field static final L2PE_FAIL_EVENT:I = 0x20067

.field static final L2PE_SUCCESSFUL_EVENT:I = 0x20066

.field private static final MAX_IPV6_RENEWAL_TIME_MS:I = 0x1f40

.field private static final MAX_REQUESTED_NUMBER:I = 0x10

.field private static final MAX_RSSI:I = 0x100

.field private static final MIN_INTERVAL_ENABLE_ALL_NETWORKS_MS:I = 0x927c0

.field private static final MIN_RENEWAL_TIME_SECS:I = 0x12c

.field private static final MIN_RSSI:I = -0xc8

.field static final MULTICAST_V4:I = 0x2

.field static final MULTICAST_V6:I = 0x3

.field private static final NETWORKTYPE:Ljava/lang/String; = "WIFI"

.field private static final NOT_IN_ECM_STATE:I = 0x0

.field public static final P2P_ENABLE_PROCEED:I = 0x20084

.field private static final POLL_RSSI_INTERVAL_MSECS:I = 0xbb8

.field static final POWER_MODE_ACTIVE:I = 0x1

.field static final POWER_MODE_AUTO:I = 0x0

.field private static final PROPERTY_WIFI_V6_SUPPORTED:Ljava/lang/String; = "persist.wifi.v6"

.field private static final SCAN_ACTIVE:I = 0x1

.field private static final SCAN_ONLY_MODE:I = 0x2

.field private static final SCAN_PASSIVE:I = 0x2

.field private static final SCAN_REQUEST:I = 0x0

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field static final SELF_FILTER:I = 0x0

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wlan0"

.field static final SSDP_FILTER:I = 0x6

.field private static final SUCCESS:I = 0x1

.field private static final SUPPLICANT_RESTART_INTERVAL_MSECS:I = 0x1388

.field private static final SUPPLICANT_RESTART_TRIES:I = 0x5

.field static final SUPPLICANT_STATE_CHANGE_EVENT:I = 0x20027

.field private static final TAG:Ljava/lang/String; = "WifiStateMachine"

.field private static final TETHER_NOTIFICATION_TIME_OUT_MSECS:I = 0x1388

.field private static final VZW_STATUS_AP_DETECTED_BUT_NOT_CONNECTED:I = 0x2

.field private static final VZW_STATUS_CONNECTED:I = 0x3

.field private static final VZW_STATUS_NO_AP_DETECTED:I = 0x1

.field private static final VZW_STATUS_WIFI_OFF:I = 0x0

.field private static final WHITE_LIST_SIZE:I = 0x10

.field private static final WIFI_AP_CONN_REQ_TIMEOUT:I = 0x4

.field private static final WIFI_AP_IDLE:Ljava/lang/String; = "com.android.server.HotspotManager.action.DEVICE_IDLE"

.field public static final WIFI_ENABLE_PENDING:I = 0x20083

.field private static final WIIF_AP_IDLE_REQUEST:I = 0x1

.field static final WIVU_FILTER:I = 0x7

.field static final WPS_COMPLETED_EVENT:I = 0x20079

.field static final WPS_REGISTRAR_FAIL_EVENT:I = 0x20065

.field static final WPS_REGISTRAR_START_EVENT:I = 0x20063

.field static final WPS_REGISTRAR_SUCCESSFUL_EVENT:I = 0x20064

.field public static mCwRegistered:Z

.field private static mIsSupplicantActived:Z

.field private static mNeedConfig:Z

.field private static mSetAutoChannel:Z

.field private static mWifidisplayApEnable:Z

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private IsCwRegisterByUser:Z

.field private final PROPERTY_SIM_ENABLED:Ljava/lang/String;

.field private final RESOURCE_PACKAGENAME:Ljava/lang/String;

.field private SameSignalLevelCount:I

.field private WimaxStatus:Z

.field private cw_ssid_key:I

.field private last_state:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAssociateManual:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothConnectionActive:Z

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCTFinalPreConfigSsidList:[Ljava/lang/String;

.field private mCTPreConfigSsidList:[Ljava/lang/String;

.field private mCWRemoteConnection:Landroid/content/ServiceConnection;

.field private mCWService:Landroid/os/IBinder;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mConnectModeState:Lcom/android/internal/util/State;

.field private mConnectedState:Lcom/android/internal/util/State;

.field private mConnectingState:Lcom/android/internal/util/State;

.field private mContext:Landroid/content/Context;

.field private mCtNetworkInfo:Landroid/net/NetworkInfo;

.field private mCwRegisterCapability:Z

.field private mCwRetryCounter:I

.field private mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

.field private final mDefaultFrameworkScanIntervalMs:I

.field private mDefaultState:Lcom/android/internal/util/State;

.field private final mDefaultSupplicantScanIntervalMs:I

.field private mDelayedStopCounter:I

.field private mDhcpFailWorkaround:I

.field private mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

.field private mDhcpStateMachine:Landroid/net/DhcpStateMachine;

.field private mDisconnectedState:Lcom/android/internal/util/State;

.field private mDisconnectingState:Lcom/android/internal/util/State;

.field private mDongleScanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverFailedState:Lcom/android/internal/util/State;

.field private mDriverLoadedState:Lcom/android/internal/util/State;

.field private mDriverLoadingState:Lcom/android/internal/util/State;

.field private mDriverStartedState:Lcom/android/internal/util/State;

.field private mDriverStartingState:Lcom/android/internal/util/State;

.field private mDriverStoppedState:Lcom/android/internal/util/State;

.field private mDriverStoppingState:Lcom/android/internal/util/State;

.field private mDriverUnloadedState:Lcom/android/internal/util/State;

.field private mDriverUnloadingState:Lcom/android/internal/util/State;

.field private mEnableBackgroundScan:Z

.field private mEnableFakeScanresult:Z

.field private mEnableImeiPassword:Z

.field private mEnableImeiSsid:Z

.field private mEnableMdnPassword:Z

.field private mEnableRssiPolling:Z

.field private mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mFinalPreConfigSsidList:[Ljava/lang/String;

.field private mFirstCustomizeSSID_IMEI:Z

.field private mFirstCustomizeSSID_NAME:Z

.field private mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mHaveIpAddress:Z

.field private mInDelayedStop:Z

.field private mIndicateWepError:Z

.field private mInitialState:Lcom/android/internal/util/State;

.field private mInterfaceName:Ljava/lang/String;

.field private mIpv6RenewalIntent:Landroid/app/PendingIntent;

.field private mIsDongleScan:Z

.field private mIsRunning:Z

.field private mIsScanMode:Z

.field private mIsScreenOn:I

.field private mIsSsdpFilterRuleEnabled:Z

.field private final mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastBssid:Ljava/lang/String;

.field private mLastEnableAllNetworksTime:J

.field private final mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mLastExplicitNetworkId:I

.field private mLastNetworkChoiceTime:J

.field private mLastNetworkId:I

.field private mLastRSSI:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mMobileNetworkType:Ljava/lang/String;

.field private mMulticastEnabled:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNextWifiActionExplicit:Z

.field private mNwService:Landroid/os/INetworkManagementService;

.field private mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerMode:I

.field private mPowerModeRefCount:I

.field private mPreConfigSsidList:[Ljava/lang/String;

.field private mReconnectCount:I

.field private mReplyChannel:Lcom/android/internal/util/AsyncChannel;

.field private mReportedRunning:Z

.field private mReqConnList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private mRes:Landroid/content/res/Resources;

.field private mResetWifiApSleepPolicy:Z

.field private mRssiPollToken:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanIntent:Landroid/app/PendingIntent;

.field private mScanModeState:Lcom/android/internal/util/State;

.field private final mScanResultCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScanResultIsPending:Z

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSignalStrength:Landroid/telephony/SignalStrength;

.field private mSoftApStartedState:Lcom/android/internal/util/State;

.field private mSoftApStartingState:Lcom/android/internal/util/State;

.field private mSoftApStoppingState:Lcom/android/internal/util/State;

.field private mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

.field private mSupplicantRestartCount:I

.field private mSupplicantStartedState:Lcom/android/internal/util/State;

.field private mSupplicantStartingState:Lcom/android/internal/util/State;

.field private mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

.field private mSupplicantStopFailureToken:I

.field private mSupplicantStoppingState:Lcom/android/internal/util/State;

.field private mTetherInterfaceName:Ljava/lang/String;

.field private mTetherToken:I

.field private mTetheredState:Lcom/android/internal/util/State;

.field private mTetheringState:Lcom/android/internal/util/State;

.field private mUpdateV6Addresses:Z

.field private mUser:I

.field private mVzwWifiStatus:I

.field private mVzwWifiStatusFeature:Z

.field private mWDManager:Lcom/htc/service/WirelessDisplayManager;

.field private mWaitForP2pDisableState:Lcom/android/internal/util/State;

.field private mWaitForWpsCompletionState:Lcom/android/internal/util/State;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

.field private mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

.field private mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiApConnReqTimeout:Landroid/app/PendingIntent;

.field private mWifiApNotification:Landroid/app/Notification;

.field private mWifiApNotificationShown:Z

.field private mWifiApSleepIntent:Landroid/app/PendingIntent;

.field private final mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiConnected:Z

.field private mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisplayUnscan:Z

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private mWifiOffloadEnabled:Z

.field private mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWifiV6Supported:Z

.field private mWifiWepErrorNotification:Landroid/app/Notification;

.field private mWifiWepErrorNotificationShown:Z

.field private final mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

.field private mfakeresult:Landroid/net/wifi/ScanResult;

.field private phoneManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    .line 219
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 247
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 248
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    .line 303
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    .line 340
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 805
    sput-boolean v1, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 15
    .parameter "context"
    .parameter "wlanInterface"

    .prologue
    .line 997
    const-string v1, "WifiStateMachine"

    invoke-direct {p0, v1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 220
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 223
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    .line 227
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    .line 235
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 237
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    .line 240
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    .line 243
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    .line 254
    const-string v1, "com.htc"

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->RESOURCE_PACKAGENAME:Ljava/lang/String;

    .line 258
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 260
    const-string/jumbo v1, "wlan.sim.enabled"

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->PROPERTY_SIM_ENABLED:Ljava/lang/String;

    .line 267
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 268
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    .line 269
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 272
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 289
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 292
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    .line 293
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    .line 294
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    .line 295
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    .line 296
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    .line 297
    new-instance v1, Landroid/net/wifi/ScanResult;

    const-string v2, "defaultfake"

    const-string v3, "11:22:33:44:55:66"

    const-string v4, "[WPA-EAP-TKIP]"

    const/16 v5, 0xa5

    const/16 v6, 0x96c

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    .line 348
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 349
    const/16 v1, -0xc8

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 352
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    .line 353
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    .line 354
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    .line 355
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 357
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    .line 360
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    .line 362
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    .line 364
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    .line 365
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->last_state:Z

    .line 383
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    .line 385
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    .line 393
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    .line 416
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 419
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 422
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    .line 426
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    .line 427
    new-instance v1, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v1}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    .line 677
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    .line 699
    const-string v1, "UNINITIALIZED"

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    .line 701
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    .line 702
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 707
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 738
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    .line 744
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DefaultState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DefaultState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    .line 746
    new-instance v1, Landroid/net/wifi/WifiStateMachine$InitialState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$InitialState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    .line 748
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    .line 750
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverUnloadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    .line 752
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverFailedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverFailedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    .line 754
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    .line 756
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverLoadedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    .line 758
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    .line 760
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    .line 762
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SupplicantStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    .line 764
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverStartingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    .line 766
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverStartedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    .line 768
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    .line 770
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DriverStoppedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    .line 772
    new-instance v1, Landroid/net/wifi/WifiStateMachine$ScanModeState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$ScanModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    .line 774
    new-instance v1, Landroid/net/wifi/WifiStateMachine$ConnectModeState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$ConnectModeState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    .line 776
    new-instance v1, Landroid/net/wifi/WifiStateMachine$ConnectingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$ConnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    .line 778
    new-instance v1, Landroid/net/wifi/WifiStateMachine$ConnectedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$ConnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    .line 780
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DisconnectingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    .line 782
    new-instance v1, Landroid/net/wifi/WifiStateMachine$DisconnectedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$DisconnectedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    .line 784
    new-instance v1, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$WaitForWpsCompletionState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    .line 787
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    .line 789
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    .line 791
    new-instance v1, Landroid/net/wifi/WifiStateMachine$TetheringState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$TetheringState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    .line 793
    new-instance v1, Landroid/net/wifi/WifiStateMachine$TetheredState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    .line 795
    new-instance v1, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$SoftApStoppingState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    .line 798
    new-instance v1, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$WaitForP2pDisableState;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    .line 801
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\"CMCC\""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    .line 802
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\"CMCC\""

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    .line 803
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "\"ChinaNet\""

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "\"ChinaNet_CW\""

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "\"ChinaNet_HomeCW\""

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    .line 804
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ChinaNet"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "ChinaNet_CW"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "ChinaNet_HomeCW"

    aput-object v3, v1, v2

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    .line 807
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    .line 811
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    .line 812
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 816
    new-instance v1, Landroid/net/wifi/WifiStateMachine$1;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$1;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    .line 886
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 896
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/16 v2, 0xb

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 898
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 899
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 908
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    .line 913
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    .line 919
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    .line 930
    const-string/jumbo v1, "persist.wifi.v6"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    .line 959
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    .line 964
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    .line 967
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    .line 1588
    new-instance v1, Landroid/net/wifi/WifiStateMachine$6;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$6;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1597
    new-instance v1, Landroid/net/wifi/WifiStateMachine$7;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiStateMachine$7;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 998
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    .line 999
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    .line 1000
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    .line 1002
    new-instance v1, Landroid/net/NetworkInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "WIFI"

    const-string v5, ""

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 1003
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 1005
    const-string/jumbo v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    .line 1006
    .local v7, b:Landroid/os/IBinder;
    invoke-static {v7}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    .line 1008
    new-instance v1, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Lcom/android/internal/util/StateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    .line 1010
    new-instance v1, Landroid/net/hotspot/SoftapMonitor;

    invoke-direct {v1, p0}, Landroid/net/hotspot/SoftapMonitor;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    .line 1012
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.htc"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRes:Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :goto_0
    new-instance v14, Landroid/content/Intent;

    const-string v1, "com.android.server.HotspotManager.action.DEVICE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v14, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1016
    .local v14, wifiApStopIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v14, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    .line 1017
    new-instance v13, Landroid/content/Intent;

    const-string v1, "com.android.server.HotspotManager.action.WIFI_AP_CONN_REQ_TIMEOUT"

    const/4 v2, 0x0

    invoke-direct {v13, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1018
    .local v13, wifiApConnReqTimeout:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v13, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    .line 1020
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 1022
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_auto_ip_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 1023
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    :goto_1
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_0

    .line 1030
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    .line 1033
    :cond_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x9b

    if-eq v1, v2, :cond_1

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0x40

    if-ne v1, v2, :cond_8

    .line 1034
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    .line 1035
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    .line 1040
    :cond_2
    :goto_2
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v1, :cond_3

    .line 1041
    new-instance v8, Landroid/content/IntentFilter;

    const-string v1, "com.htc.net.wimax.WIMAX_ENABLED_CHANGED"

    invoke-direct {v8, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v8, intentFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1044
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    .line 1045
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x100

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1051
    .end local v8           #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    new-instance v1, Landroid/net/DhcpInfoInternal;

    invoke-direct {v1}, Landroid/net/DhcpInfoInternal;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 1052
    new-instance v1, Landroid/net/wifi/WifiInfo;

    invoke-direct {v1}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    .line 1053
    new-instance v1, Landroid/net/wifi/SupplicantStateTracker;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v2}, Landroid/net/wifi/SupplicantStateTracker;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    .line 1054
    new-instance v1, Landroid/net/wifi/WpsStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v1, v0, p0, v2}, Landroid/net/wifi/WpsStateMachine;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    .line 1055
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 1057
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/net/wifi/WifiApConfigStore;->makeWifiApConfigStore(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/wifi/WifiApConfigStore;

    move-result-object v12

    .line 1059
    .local v12, wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    invoke-virtual {v12}, Landroid/net/wifi/WifiApConfigStore;->loadApConfiguration()V

    .line 1060
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v12}, Landroid/net/wifi/WifiApConfigStore;->getMessenger()Landroid/os/Messenger;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/util/AsyncChannel;->connectSync(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Messenger;)I

    .line 1062
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 1063
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 1064
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 1065
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 1066
    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 1067
    const/16 v1, -0xc8

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 1069
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1070
    new-instance v11, Landroid/content/Intent;

    const-string v1, "com.android.server.WifiManager.action.START_SCAN"

    const/4 v2, 0x0

    invoke-direct {v11, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1071
    .local v11, scanIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v11, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    .line 1073
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    .line 1076
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    .line 1079
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$2;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStateMachine$2;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1094
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$3;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStateMachine$3;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.WifiManager.action.START_SCAN"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1112
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$4;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStateMachine$4;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.htc.intent.action.CUSTOMIZATION_CHANGE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1141
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    .line 1143
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/PowerManager;

    .line 1144
    .local v10, powerManager:Landroid/os/PowerManager;
    const/4 v1, 0x1

    const-string v2, "WifiStateMachine"

    invoke-virtual {v10, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1146
    const/4 v1, 0x1

    const-string v2, "WifiStateMachine"

    invoke-virtual {v10, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    .line 1147
    const/4 v1, 0x1

    const-string v2, "WifiStateMachine"

    invoke-virtual {v10, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    .line 1148
    const/16 v1, 0x40

    const-string v2, "WifiStateMachine"

    invoke-virtual {v10, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1152
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    if-eqz v1, :cond_4

    .line 1153
    new-instance v9, Landroid/content/Intent;

    const-string v1, "android.net.wifi.IPV6_RENEW"

    invoke-direct {v9, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v9, ipv6RenewalIntent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v9, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mIpv6RenewalIntent:Landroid/app/PendingIntent;

    .line 1156
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/net/wifi/WifiStateMachine$5;

    invoke-direct {v2, p0}, Landroid/net/wifi/WifiStateMachine$5;-><init>(Landroid/net/wifi/WifiStateMachine;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.net.wifi.IPV6_RENEW"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1173
    .end local v9           #ipv6RenewalIntent:Landroid/content/Intent;
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wireless_display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/service/WirelessDisplayManager;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    .line 1178
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 1179
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1180
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1181
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1182
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1183
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1184
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1185
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1186
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1187
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1188
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1189
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1190
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1191
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1192
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1193
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1194
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1195
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConnectModeState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1196
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1197
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1198
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1199
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1200
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1201
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1202
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1203
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1204
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 1237
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 1239
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_5

    .line 1240
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCTPreConfigSsidList:[Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    .line 1241
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mFinalPreConfigSsidList:[Ljava/lang/String;

    .line 1242
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1243
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W]bindCWService failed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_5
    :goto_3
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xda

    if-eq v1, v2, :cond_6

    .line 1254
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 1256
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->start()V

    .line 1257
    return-void

    .line 1025
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v11           #scanIntent:Landroid/content/Intent;
    .end local v12           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_7
    const-string v1, "dhcp.wlan0.autoip"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1036
    :cond_8
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xa8

    if-ne v1, v2, :cond_2

    .line 1037
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    goto/16 :goto_2

    .line 1245
    .restart local v10       #powerManager:Landroid/os/PowerManager;
    .restart local v11       #scanIntent:Landroid/content/Intent;
    .restart local v12       #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    :cond_9
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W]bindCWService successfully in StateMachie constructer!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1013
    .end local v10           #powerManager:Landroid/os/PowerManager;
    .end local v11           #scanIntent:Landroid/content/Intent;
    .end local v12           #wifiApConfigStore:Landroid/net/wifi/WifiApConfigStore;
    .end local v13           #wifiApConnReqTimeout:Landroid/content/Intent;
    .end local v14           #wifiApStopIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method private CustomizeSSIDbyCode()V
    .locals 11

    .prologue
    const/16 v10, 0xd

    const/4 v6, 0x2

    const/4 v9, 0x3

    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 8818
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x9b

    if-ne v4, v5, :cond_3

    .line 8819
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string/jumbo v5, "myTouch 4G Hotspot"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 8820
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x7b

    if-ne v4, v5, :cond_1

    .line 8821
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Sensation"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 8880
    :cond_0
    :goto_0
    return-void

    .line 8822
    :cond_1
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x89

    if-ne v4, v5, :cond_2

    .line 8823
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC Amaze 4G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 8824
    :cond_2
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xe1

    if-ne v4, v5, :cond_0

    .line 8825
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC One S"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 8827
    :cond_3
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x40

    if-ne v4, v5, :cond_4

    .line 8828
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "Iusacell 3.5G"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 8830
    :cond_4
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 8831
    .local v0, mac:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 8832
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 8833
    .local v1, macFileds:[Ljava/lang/String;
    array-length v4, v1

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 8834
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x91

    if-ne v4, v5, :cond_6

    .line 8835
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x51

    if-eq v4, v5, :cond_5

    .line 8836
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 8838
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v5, "HTC network"

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8840
    :cond_6
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x93

    if-ne v4, v5, :cond_7

    .line 8841
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVO Shift 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8842
    :cond_7
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x61

    if-ne v4, v5, :cond_8

    .line 8843
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6400L "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8844
    :cond_8
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xad

    if-ne v4, v5, :cond_9

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_9

    .line 8845
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6425LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8846
    :cond_9
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0xaa

    if-ne v4, v5, :cond_a

    .line 8847
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6350 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8848
    :cond_a
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_b

    .line 8849
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Verizon ADR6410LVW "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8850
    :cond_b
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_c

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_c

    .line 8851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "holiday"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8852
    .local v2, randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 8853
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8854
    .local v3, randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC Vivid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8856
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_c
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x24

    if-ne v4, v5, :cond_d

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_d

    .line 8857
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "evita"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8858
    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 8859
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8860
    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC EVA_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8862
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_d
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x9f

    if-ne v4, v5, :cond_e

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v4, v6, :cond_e

    .line 8863
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "totem"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 8864
    .restart local v2       #randomssid:Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v10, :cond_0

    .line 8865
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 8866
    .restart local v3       #randomssid4:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTC TOM_UL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8868
    .end local v2           #randomssid:Ljava/lang/String;
    .end local v3           #randomssid4:Ljava/lang/String;
    :cond_e
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x95

    if-ne v4, v5, :cond_f

    .line 8869
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO 3D "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8870
    :cond_f
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x21

    if-ne v4, v5, :cond_10

    .line 8871
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVO View 4G "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8872
    :cond_10
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x50

    if-ne v4, v5, :cond_11

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_11

    .line 8873
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PH44100 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0

    .line 8874
    :cond_11
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v5, 0x49

    if-ne v4, v5, :cond_0

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v5, 0x94

    if-ne v4, v5, :cond_0

    .line 8875
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "JEWEL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private WifiRecover()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 3650
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    .line 3652
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    .line 3655
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_pwr_active_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 3657
    const/16 v0, 0x15

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 3660
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3662
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_wivu()V

    .line 3663
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_self()V

    .line 3664
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV6Packets()V

    .line 3665
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_dhcpoffer()V

    .line 3666
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setScreenOn(Z)V

    .line 3669
    :cond_1
    :goto_0
    return-void

    .line 3667
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->setScreenOn(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateMachine;)Landroid/os/IBinder;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Landroid/net/wifi/WifiStateMachine;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCWService:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    return v0
.end method

.method static synthetic access$10000(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return v0
.end method

.method static synthetic access$10002(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$1002(Landroid/net/wifi/WifiStateMachine;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return v0
.end method

.method static synthetic access$10102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mInDelayedStop:Z

    return p1
.end method

.method static synthetic access$10200(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setCountryCode()V

    return-void
.end method

.method static synthetic access$10300(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand()V

    return-void
.end method

.method static synthetic access$10400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    return v0
.end method

.method static synthetic access$10700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanModeState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    return v0
.end method

.method static synthetic access$11000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->WimaxStatus:Z

    return p1
.end method

.method static synthetic access$11100(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setHighPerfModeEnabledNative(Z)V

    return-void
.end method

.method static synthetic access$11200(Landroid/net/wifi/WifiStateMachine;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$11308(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mDelayedStopCounter:I

    return v0
.end method

.method static synthetic access$11400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/IState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$11500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$11600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->WifiRecover()V

    return-void
.end method

.method static synthetic access$11802(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$11902(Landroid/net/wifi/WifiStateMachine;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateV6Addresses(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStoppedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$12600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$12800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$12900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    return v0
.end method

.method static synthetic access$13000(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    return-void
.end method

.method static synthetic access$13100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I

    return v0
.end method

.method static synthetic access$13302(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastExplicitNetworkId:I

    return p1
.end method

.method static synthetic access$13400(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J

    return-wide v0
.end method

.method static synthetic access$13402(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkChoiceTime:J

    return-wide p1
.end method

.method static synthetic access$13500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    return v0
.end method

.method static synthetic access$13502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mNextWifiActionExplicit:Z

    return p1
.end method

.method static synthetic access$13600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForWpsCompletionState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$13900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    return v0
.end method

.method static synthetic access$14000(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendWPSSuccessBroadcast()V

    return-void
.end method

.method static synthetic access$14100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendWPSFailBroadcast()V

    return-void
.end method

.method static synthetic access$14200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)[B
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$14400(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$14500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    return-void
.end method

.method static synthetic access$14600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchFrequency()I

    move-result v0

    return v0
.end method

.method static synthetic access$14700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$14900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    return v0
.end method

.method static synthetic access$15000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object v0
.end method

.method static synthetic access$15102(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpStateMachine;)Landroid/net/DhcpStateMachine;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    return-object p1
.end method

.method static synthetic access$15200(Landroid/net/wifi/WifiStateMachine;Landroid/net/DhcpInfoInternal;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConnectedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$15400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleFailedIpConfiguration(Z)V

    return-void
.end method

.method static synthetic access$15600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$15900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16000(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$16202(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    return p1
.end method

.method static synthetic access$16300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    return v0
.end method

.method static synthetic access$16400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return v0
.end method

.method static synthetic access$16402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    return p1
.end method

.method static synthetic access$16500(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$16600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$16608(Landroid/net/wifi/WifiStateMachine;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mRssiPollToken:I

    return v0
.end method

.method static synthetic access$16700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    return v0
.end method

.method static synthetic access$16800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    return v0
.end method

.method static synthetic access$16802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    return p1
.end method

.method static synthetic access$16900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/net/wifi/WifiStateMachine;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    return-void
.end method

.method static synthetic access$17100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    return-void
.end method

.method static synthetic access$17200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/LinkProperties;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method

.method static synthetic access$17300(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateV6AddressesWithAnotherThread(Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    return-void
.end method

.method static synthetic access$17800(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    return-void
.end method

.method static synthetic access$17900(Landroid/net/wifi/WifiStateMachine;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$18000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mIpv6RenewalIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$18100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$18200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18500(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$18600(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultFrameworkScanIntervalMs:I

    return v0
.end method

.method static synthetic access$18700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$1900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->bindCWService()Z

    move-result v0

    return v0
.end method

.method static synthetic access$19000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$19200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$19300(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->stopTethering()V

    return-void
.end method

.method static synthetic access$19700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$19800()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return v0
.end method

.method static synthetic access$19802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    return p0
.end method

.method static synthetic access$19900()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return v0
.end method

.method static synthetic access$19902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    return p0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$20000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mIsSupplicantActived:Z

    return p0
.end method

.method static synthetic access$20200(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$20300(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$20400(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$20500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$20600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$20700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$20804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetherToken:I

    return v0
.end method

.method static synthetic access$20900(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return v0
.end method

.method static synthetic access$21000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mTetheredState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2102(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    return p1
.end method

.method static synthetic access$21100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$21300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$21400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$21700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mReplyChannel:Lcom/android/internal/util/AsyncChannel;

    return-object v0
.end method

.method static synthetic access$2300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return v0
.end method

.method static synthetic access$2302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableRssiPolling:Z

    return p1
.end method

.method static synthetic access$2400(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return v0
.end method

.method static synthetic access$2402(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableBackgroundScan:Z

    return p1
.end method

.method static synthetic access$2500()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    sput-boolean p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return p0
.end method

.method static synthetic access$2600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverLoadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$2800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$300(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object v0
.end method

.method static synthetic access$3102(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/p2p/WifiP2pManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p1
.end method

.method static synthetic access$3200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiState(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/net/wifi/WifiStateMachine;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V

    return-void
.end method

.method static synthetic access$3600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverFailedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$3800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverUnloadingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiMonitor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    return-object v0
.end method

.method static synthetic access$4300(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStartingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$4400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$4502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    return p1
.end method

.method static synthetic access$4600(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$4800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method static synthetic access$4802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return p1
.end method

.method static synthetic access$4900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$502(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    return-void
.end method

.method static synthetic access$5200(Landroid/net/wifi/WifiStateMachine;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$5800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5802(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return p1
.end method

.method static synthetic access$5804(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantRestartCount:I

    return v0
.end method

.method static synthetic access$5900(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    return-void
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateMachine;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->checkSSIDCustomization(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$6000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WpsStateMachine;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object v0
.end method

.method static synthetic access$6202(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$CwHandler;)Landroid/net/wifi/WifiStateMachine$CwHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    return-object p1
.end method

.method static synthetic access$6300(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$6302(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6400(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return v0
.end method

.method static synthetic access$6402(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    return p1
.end method

.method static synthetic access$6502(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    return p1
.end method

.method static synthetic access$6602(Landroid/net/wifi/WifiStateMachine;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    return p1
.end method

.method static synthetic access$6700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$6800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    return v0
.end method

.method static synthetic access$6900(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    return v0
.end method

.method static synthetic access$6902(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    return p1
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    return p1
.end method

.method static synthetic access$7100(Landroid/net/wifi/WifiStateMachine;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->sendSupplicantConnectionChangedBroadcast(Z)V

    return-void
.end method

.method static synthetic access$7200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDriverStartedState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$7300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$7700(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return v0
.end method

.method static synthetic access$7702(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    return p1
.end method

.method static synthetic access$7800(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDefaultSupplicantScanIntervalMs:I

    return v0
.end method

.method static synthetic access$7900(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    .prologue
    .line 200
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    return v0
.end method

.method static synthetic access$8000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V

    return-void
.end method

.method static synthetic access$8200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return v0
.end method

.method static synthetic access$8302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    return p1
.end method

.method static synthetic access$8400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDongleScanList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendDongleScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$8600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setScanResults(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8700(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 200
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V

    return-void
.end method

.method static synthetic access$8800(Landroid/net/wifi/WifiStateMachine;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return v0
.end method

.method static synthetic access$8802(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/net/wifi/WifiStateMachine;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 200
    iget-wide v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide v0
.end method

.method static synthetic access$8902(Landroid/net/wifi/WifiStateMachine;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-wide p1, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableAllNetworksTime:J

    return-wide p1
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfiguration;
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic access$9100(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$9204(Landroid/net/wifi/WifiStateMachine;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 200
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStopFailureToken:I

    return v0
.end method

.method static synthetic access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return p1
.end method

.method static synthetic access$9400(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$9800(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 200
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method private bindCWService()Z
    .locals 6

    .prologue
    .line 836
    const/4 v1, 0x0

    .line 837
    .local v1, ret:Z
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.htc.cw.CWService"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mCWRemoteConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    .line 840
    if-nez v1, :cond_0

    .line 841
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] fail to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    :cond_0
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] bind CW service successfully!!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 847
    :goto_0
    return v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "WifiStateMachine"

    const-string v3, "[C+W] no permission to bind CW service"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private byte2String([B)Ljava/lang/String;
    .locals 7
    .parameter "byteArray"

    .prologue
    .line 3627
    if-nez p1, :cond_0

    const/4 v4, 0x0

    .line 3636
    :goto_0
    return-object v4

    .line 3629
    :cond_0
    const-string v0, "0123456789ABCDEF"

    .line 3630
    .local v0, HEX:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 3632
    .local v3, sb:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v4, p1

    if-ge v2, v4, :cond_1

    .line 3633
    aget-byte v1, p1, v2

    .line 3634
    .local v1, b:B
    const-string v4, "0123456789ABCDEF"

    shr-int/lit8 v5, v1, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "0123456789ABCDEF"

    and-int/lit8 v6, v1, 0xf

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 3632
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3636
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private byteArray2Bundle([B)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v3, 0x0

    .line 8758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 8759
    .local v1, parcel:Landroid/os/Parcel;
    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 8760
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 8761
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 8762
    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 8764
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 8763
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    goto :goto_0
.end method

.method private checkAndSetConnectivityInstance()V
    .locals 2

    .prologue
    .line 3734
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    .line 3735
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    .line 3737
    :cond_0
    return-void
.end method

.method private checkSSIDCustomization(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 8696
    const-string v1, "content://customization_settings/SettingTable/application_HotspotName"

    .line 8698
    .local v1, customize_uri:Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 8699
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bundle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8700
    if-eqz v0, :cond_0

    .line 8701
    invoke-direct {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 8705
    :goto_0
    return-void

    .line 8703
    :cond_0
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_0
.end method

.method private checkSleepPolicy()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 3502
    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    if-nez v3, :cond_4

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v3

    const/16 v4, 0xd

    if-ne v3, v4, :cond_4

    .line 3503
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "set sleep policy"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v3, :cond_1

    .line 3505
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3507
    const/4 v0, 0x0

    .line 3508
    .local v0, idleTimeMin:I
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-nez v3, :cond_2

    .line 3509
    const/4 v0, 0x5

    .line 3513
    :cond_0
    :goto_0
    if-eqz v0, :cond_3

    .line 3514
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set SoftAP sleep policy for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mins"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3515
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    mul-int/lit8 v5, v0, 0x3c

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long v1, v3, v5

    .line 3516
    .local v1, triggerTime:J
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v7, v1, v2, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 3521
    .end local v0           #idleTimeMin:I
    .end local v1           #triggerTime:J
    :cond_1
    :goto_1
    iput-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 3527
    :goto_2
    return-void

    .line 3510
    .restart local v0       #idleTimeMin:I
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-ne v3, v6, :cond_0

    .line 3511
    const/16 v0, 0xa

    goto :goto_0

    .line 3518
    :cond_3
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "set SoftAP sleep policy to always on"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 3523
    .end local v0           #idleTimeMin:I
    :cond_4
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cancel SoftAP sleep policy: mUser="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncGetWifiApState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3524
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApSleepIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 3525
    iput-boolean v6, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    goto :goto_2
.end method

.method private configureLinkProperties()V
    .locals 3

    .prologue
    .line 4326
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4327
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->getLinkProperties(I)Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4340
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 4342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "persist.wifi.v6:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4343
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiV6Supported:Z

    if-eqz v1, :cond_1

    .line 4344
    const-string v1, "Need to update V6 addresses"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4345
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mUpdateV6Addresses:Z

    .line 4347
    :cond_1
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_2

    .line 4348
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "netId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Link configured: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4351
    :cond_2
    return-void

    .line 4329
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v2

    .line 4330
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4331
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4334
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v0

    .line 4335
    .local v0, proxy:Landroid/net/ProxyProperties;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4336
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    goto :goto_0

    .line 4331
    .end local v0           #proxy:Landroid/net/ProxyProperties;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fetchFrequency()I
    .locals 4

    .prologue
    .line 4196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4197
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v2, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 4198
    .local v1, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v1, :cond_0

    .line 4199
    iget v2, v1, Landroid/net/wifi/ScanResult;->frequency:I

    .line 4201
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private fetchRssiAndLinkSpeedNative()V
    .locals 18

    .prologue
    .line 4209
    const/4 v10, -0x1

    .line 4210
    .local v10, newRssi:I
    const/4 v9, -0x1

    .line 4212
    .local v9, newLinkSpeed:I
    invoke-static {}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v13

    .line 4214
    .local v13, signalPoll:Ljava/lang/String;
    if-eqz v13, :cond_3

    .line 4215
    const-string v15, "\n"

    invoke-virtual {v13, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 4216
    .local v8, lines:[Ljava/lang/String;
    move-object v1, v8

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_3

    aget-object v7, v1, v5

    .line 4217
    .local v7, line:Ljava/lang/String;
    const-string v15, "="

    invoke-virtual {v7, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 4218
    .local v12, prop:[Ljava/lang/String;
    array-length v15, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 4216
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 4220
    :cond_1
    const/4 v15, 0x0

    :try_start_0
    aget-object v15, v12, v15

    const-string v16, "RSSI"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 4221
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_1

    .line 4222
    :cond_2
    const/4 v15, 0x0

    aget-object v15, v12, v15

    const-string v16, "LINKSPEED"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 4223
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    goto :goto_1

    .line 4225
    :catch_0
    move-exception v2

    .line 4227
    .local v2, e:Ljava/lang/NumberFormatException;
    const-string v15, "WifiStateMachine"

    const-string v16, "fetchRssiAndLinkSpeedNative NumberFormatException"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4232
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v5           #i$:I
    .end local v6           #len$:I
    .end local v7           #line:Ljava/lang/String;
    .end local v8           #lines:[Ljava/lang/String;
    .end local v12           #prop:[Ljava/lang/String;
    :cond_3
    const-string v15, "WifiStateMachine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "fetchRssiAndLinkSpeedNative RSSI = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4233
    const/4 v15, -0x1

    if-eq v10, v15, :cond_d

    const/16 v15, -0xc8

    if-ge v15, v10, :cond_d

    const/16 v15, 0x100

    if-ge v10, v15, :cond_d

    .line 4237
    if-lez v10, :cond_4

    add-int/lit16 v10, v10, -0x100

    .line 4238
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15, v10}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4254
    sget-boolean v15, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z

    if-eqz v15, :cond_6

    .line 4255
    const/4 v14, 0x0

    .line 4256
    .local v14, type:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->getMobileDataSettingEnabled()Z

    move-result v15

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v15, v15, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 4257
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v15}, Landroid/telephony/SignalStrength;->getGsmSignalStrength()I

    move-result v4

    .line 4258
    .local v4, gsmSignalStrength:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiStateMachine;->setSignalStrength(I)Z

    .line 4259
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->phoneManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v15}, Landroid/telephony/TelephonyManager;->getNetworkTypeName()Ljava/lang/String;

    move-result-object v14

    .line 4260
    const-string v15, "UNKNOWN"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 4262
    const-string v15, "gsm.network.type"

    const-string v16, "UNKNOWN"

    invoke-static/range {v15 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 4268
    .end local v4           #gsmSignalStrength:I
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 4269
    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    .line 4270
    const-string v15, "WifiStateMachine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "WiFi offload: set mMobileNetworkType= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4271
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mMobileNetworkType:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiStateMachine;->setMobileNetworkType(Ljava/lang/String;)Z

    .line 4276
    .end local v14           #type:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    .line 4277
    .local v3, frequency:I
    const/4 v15, 0x4

    invoke-static {v10, v15, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(III)I

    move-result v11

    .line 4278
    .local v11, newSignalLevel:I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v15}, Landroid/net/wifi/WifiStateMachine;->shouldBroadcastRSSIForIMS(II)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 4279
    const-string v15, "WifiStateMachine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BroadcastRSSIForIMS, newrssi ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " , oldRssi= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 4281
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    .line 4298
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iput v11, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4299
    move-object/from16 v0, p0

    iput v10, v0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 4305
    .end local v3           #frequency:I
    .end local v11           #newSignalLevel:I
    :goto_4
    const/4 v15, -0x1

    if-eq v9, v15, :cond_8

    .line 4306
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v15, v9}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 4308
    :cond_8
    return-void

    .line 4265
    .restart local v14       #type:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v15, v15, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    if-nez v15, :cond_a

    const-string v15, "WifiStateMachine"

    const-string v16, "Not get IP address yet, shall not do WiFi offload"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4266
    :cond_a
    const-string v14, "NOT_AVAILABLE"

    goto/16 :goto_2

    .line 4283
    .end local v14           #type:Ljava/lang/String;
    .restart local v3       #frequency:I
    .restart local v11       #newSignalLevel:I
    :cond_b
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-eq v11, v15, :cond_c

    .line 4285
    const-string v15, "WifiStateMachine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "fetchRssiAndLinkSpeedNative send RSSIChange intent, newSignalLevel ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, "mLastSignalLevel = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4286
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 4288
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto :goto_3

    .line 4290
    :cond_c
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    if-ne v11, v15, :cond_7

    .line 4291
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    iput v15, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    .line 4292
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    .line 4293
    const-string v15, "WifiStateMachine"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "fetchRssiAndLinkSpeedNative send RSSIChange intent, SameSignalLevelCount ="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateMachine;->SameSignalLevelCount:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4294
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v3}, Landroid/net/wifi/WifiStateMachine;->sendRssiChangeBroadcast(II)V

    goto/16 :goto_3

    .line 4302
    .end local v3           #frequency:I
    .end local v11           #newSignalLevel:I
    :cond_d
    const-string v15, "WifiStateMachine"

    const-string v16, "fetchRssiAndLinkSpeedNative: Don\'t get new RSSI"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4
.end method

.method private fetchSSID()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 4162
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v7

    .line 4163
    .local v7, status:Ljava/lang/String;
    if-nez v7, :cond_0

    move-object v8, v9

    .line 4175
    :goto_0
    return-object v8

    .line 4167
    :cond_0
    const-string v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 4168
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    .line 4169
    .local v3, line:Ljava/lang/String;
    const-string v10, " *= *"

    invoke-virtual {v3, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 4170
    .local v6, prop:[Ljava/lang/String;
    array-length v10, v6

    const/4 v11, 0x2

    if-ge v10, v11, :cond_2

    .line 4168
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4171
    :cond_2
    const/4 v10, 0x0

    aget-object v5, v6, v10

    .line 4172
    .local v5, name:Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v8, v6, v10

    .line 4173
    .local v8, value:Ljava/lang/String;
    const-string/jumbo v10, "ssid"

    invoke-virtual {v5, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    .end local v3           #line:Ljava/lang/String;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #prop:[Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    move-object v8, v9

    .line 4175
    goto :goto_0
.end method

.method private static findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "addrString"
    .parameter "maskString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    .line 3557
    if-nez p0, :cond_0

    .line 3558
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3560
    :cond_0
    if-nez p1, :cond_1

    .line 3561
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3565
    :cond_1
    :try_start_0
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 3566
    .local v10, parts:[Ljava/lang/String;
    array-length v12, v10

    if-eq v12, v13, :cond_2

    .line 3567
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3588
    .end local v10           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 3589
    .local v5, ex:Ljava/lang/NumberFormatException;
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3569
    .end local v5           #ex:Ljava/lang/NumberFormatException;
    .restart local v10       #parts:[Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v12, "\\."

    invoke-virtual {p1, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 3570
    .local v11, parts2:[Ljava/lang/String;
    array-length v12, v11

    if-eq v12, v13, :cond_3

    .line 3571
    new-instance v12, Ljava/net/UnknownHostException;

    invoke-direct {v12, p1}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 3573
    :cond_3
    const/4 v12, 0x0

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 3574
    .local v0, addr1:I
    const/4 v12, 0x1

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 3575
    .local v1, addr2:I
    const/4 v12, 0x2

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 3576
    .local v2, addr3:I
    const/4 v12, 0x3

    aget-object v12, v10, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 3577
    .local v3, addr4:I
    const/4 v12, 0x0

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 3578
    .local v6, mask1:I
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 3579
    .local v7, mask2:I
    const/4 v12, 0x2

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 3580
    .local v8, mask3:I
    const/4 v12, 0x3

    aget-object v12, v11, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 3581
    .local v9, mask4:I
    xor-int/lit16 v12, v6, 0xff

    or-int/2addr v0, v12

    .line 3582
    xor-int/lit16 v12, v7, 0xff

    or-int/2addr v1, v12

    .line 3583
    xor-int/lit16 v12, v8, 0xff

    or-int/2addr v2, v12

    .line 3584
    xor-int/lit16 v12, v9, 0xff

    or-int/2addr v3, v12

    .line 3585
    if-eqz v3, :cond_4

    add-int/lit8 v3, v3, -0x1

    .line 3586
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 3587
    .local v4, endingIP:Ljava/lang/String;
    return-object v4
.end method

.method private getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .parameter "config"

    .prologue
    .line 3473
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 3483
    :goto_0
    return-object v2

    .line 3475
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3476
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 3477
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 3479
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3480
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3476
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3483
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getConvertedNetworkInfo()Landroid/net/NetworkInfo;
    .locals 3

    .prologue
    .line 5014
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5015
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_0

    .line 5016
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 5019
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 5021
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0
.end method

.method private getCustomizationData(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 11
    .parameter "context"
    .parameter "uriString"

    .prologue
    const/4 v2, 0x0

    .line 8708
    const/4 v1, 0x0

    .line 8709
    .local v1, uri:Landroid/net/Uri;
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 8754
    :cond_0
    :goto_0
    return-object v2

    .line 8712
    :cond_1
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 8714
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 8715
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_2

    .line 8716
    const-string v0, "WifiStateMachine"

    const-string v3, "Failed to get cursor"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 8719
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_4

    .line 8720
    const-string v0, "WifiStateMachine"

    const-string v3, "cursor size is 0"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8721
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8722
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8724
    :cond_3
    const/4 v7, 0x0

    .line 8725
    goto :goto_0

    .line 8727
    :cond_4
    const-string/jumbo v0, "value"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 8728
    .local v10, nValueIdx:I
    const/4 v0, -0x1

    if-ne v0, v10, :cond_6

    .line 8729
    const-string v0, "WifiStateMachine"

    const-string/jumbo v3, "no customized data support"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8730
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_5

    .line 8731
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8733
    :cond_5
    const/4 v7, 0x0

    .line 8734
    goto :goto_0

    .line 8736
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 8737
    const/4 v8, 0x0

    .line 8738
    .local v8, data:[B
    const/4 v6, 0x0

    .line 8741
    .local v6, bundle:Landroid/os/Bundle;
    :try_start_0
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    .line 8742
    invoke-direct {p0, v8}, Landroid/net/wifi/WifiStateMachine;->byteArray2Bundle([B)Landroid/os/Bundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 8747
    if-eqz v7, :cond_8

    .line 8748
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8751
    :cond_7
    :goto_1
    const/4 v7, 0x0

    :cond_8
    move-object v2, v6

    .line 8754
    goto :goto_0

    .line 8743
    :catch_0
    move-exception v9

    .line 8744
    .local v9, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v0, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load customize URI failed, get exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8745
    const/4 v6, 0x0

    .line 8747
    if-eqz v7, :cond_8

    .line 8748
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_7

    .line 8749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 8747
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 8748
    invoke-interface {v7}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_9

    .line 8749
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 8751
    :cond_9
    const/4 v7, 0x0

    .line 8747
    :cond_a
    throw v0
.end method

.method private getKey([B)[B
    .locals 6
    .parameter "seed"

    .prologue
    .line 3615
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 3616
    .local v1, keyGen:Ljavax/crypto/KeyGenerator;
    const-string v3, "SHA1PRNG"

    invoke-static {v3}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object v2

    .line 3617
    .local v2, random:Ljava/security/SecureRandom;
    invoke-virtual {v2, p1}, Ljava/security/SecureRandom;->setSeed([B)V

    .line 3618
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 3619
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 3622
    .end local v1           #keyGen:Ljavax/crypto/KeyGenerator;
    .end local v2           #random:Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 3620
    :catch_0
    move-exception v0

    .line 3621
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getKey() ERROR: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3622
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    .line 4354
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_max_dhcp_retry_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 4448
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    return-object v0
.end method

.method private getRandomKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "seed"

    .prologue
    .line 3594
    if-nez p1, :cond_0

    .line 3595
    const-string v2, "WifiStateMachine"

    const-string v3, "getRandomKey() ERROR: using default mac = 00:11:22:33:44:55"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3596
    const-string p1, "00:11:22:33:44:55"

    .line 3600
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->getKey([B)[B

    move-result-object v1

    .line 3601
    .local v1, key:[B
    if-nez v1, :cond_1

    .line 3602
    const-string v2, "WifiStateMachine"

    const-string v3, "() ERROR: getKey() fails!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    const-string v2, "1234567890123"

    .line 3609
    .end local v1           #key:[B
    :goto_0
    return-object v2

    .line 3606
    .restart local v1       #key:[B
    :cond_1
    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->byte2String([B)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 3607
    .end local v1           #key:[B
    :catch_0
    move-exception v0

    .line 3608
    .local v0, ex:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRandomKey() ERROR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3609
    const-string v2, "1234567890123"

    goto :goto_0
.end method

.method private getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 3
    .parameter "config"

    .prologue
    .line 3488
    if-nez p1, :cond_0

    const/4 v2, 0x0

    .line 3498
    :goto_0
    return-object v2

    .line 3490
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3491
    .local v1, sbuilder:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_2

    .line 3492
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 3494
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3495
    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3491
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3498
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private handleFailedIpConfiguration(Z)V
    .locals 5
    .parameter "doReconnect"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 4875
    const-string v0, "IP configuration failed"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4877
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4882
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getMaxDhcpRetries()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 4883
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " times, Disabling "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4885
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0, v4}, Landroid/net/wifi/WifiConfigStore;->disableNetwork(II)Z

    .line 4887
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4889
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    .line 4890
    const/4 p1, 0x1

    .line 4894
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    if-le v0, v4, :cond_1

    .line 4895
    const-string v0, "Get IP failed over 4.5 minutes, do dhcp workaround !!!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4896
    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    .line 4897
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 4898
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWifiEnabled(Z)V

    .line 4931
    :goto_0
    return-void

    .line 4908
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getIsWepCommand()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 4909
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    if-nez v0, :cond_2

    .line 4911
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    .line 4912
    const-string/jumbo v0, "set WEP_ERROR icon"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4913
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 4915
    :cond_2
    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->sendErrorBroadcast(I)V

    .line 4920
    :cond_3
    if-eqz p1, :cond_4

    .line 4924
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    .line 4925
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    .line 4926
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDisconnectingState:Lcom/android/internal/util/State;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 4928
    :cond_4
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->handleRestartDHCP()V

    goto :goto_0
.end method

.method private handleNetworkDisconnect()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 4494
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "Stopping DHCP and clearing IP"

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4497
    :cond_0
    const-string v1, "WifiStateMachine"

    const-string v2, "Reset connections and stopping DHCP"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4503
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v1, :cond_1

    .line 4504
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v2, 0x30002

    invoke-virtual {v1, v2}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4505
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v1}, Landroid/net/DhcpStateMachine;->quit()V

    .line 4506
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4510
    :cond_1
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearInterfaceAddresses(Ljava/lang/String;)V

    .line 4511
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->disableIpv6(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4517
    :goto_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v2, 0xd8

    if-ne v1, v2, :cond_2

    .line 4518
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] trigger deregister check"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4519
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4520
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] trigger deregister when disconnect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4521
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->triggerCWDeRegister()V

    .line 4522
    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine;->setCwRegisterState(Z)V

    .line 4528
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4529
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4530
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 4531
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4532
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v2, -0xc8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 4533
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V

    .line 4535
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiInfo;->setFrequency(I)V

    .line 4537
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiInfo;->setExplicitConnect(Z)V

    .line 4540
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4541
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4544
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1}, Landroid/net/LinkProperties;->clear()V

    .line 4546
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 4547
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v1}, Landroid/net/wifi/WifiConfigStore;->clearIpConfiguration(I)V

    .line 4550
    :cond_3
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    .line 4551
    iput v4, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    .line 4552
    return-void

    .line 4512
    :catch_0
    move-exception v0

    .line 4513
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to clear addresses or disable ipv6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private handleRestartDHCP()V
    .locals 2

    .prologue
    .line 4852
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v0}, Landroid/net/wifi/WifiConfigStore;->isUsingStaticIp(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4854
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    if-eqz v0, :cond_0

    .line 4855
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30002

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4856
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->quit()V

    .line 4857
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4861
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0, p0, v1}, Landroid/net/DhcpStateMachine;->makeDhcpStateMachine(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Ljava/lang/String;)Landroid/net/DhcpStateMachine;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    .line 4863
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    invoke-virtual {v0}, Landroid/net/DhcpStateMachine;->registerForPreDhcpNotification()V

    .line 4864
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpStateMachine:Landroid/net/DhcpStateMachine;

    const v1, 0x30001

    invoke-virtual {v0, v1}, Landroid/net/DhcpStateMachine;->sendMessage(I)V

    .line 4866
    :cond_1
    return-void
.end method

.method private handleSuccessfulIpConfiguration(Landroid/net/DhcpInfoInternal;)V
    .locals 11
    .parameter "dhcpInfoInternal"

    .prologue
    const/16 v10, 0xb

    const/16 v9, 0xa

    const/4 v8, 0x0

    .line 4617
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v6

    .line 4618
    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    .line 4619
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4620
    const/4 v5, -0x1

    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 4621
    const/16 v5, -0xc8

    iput v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastRSSI:I

    .line 4622
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    .line 4624
    iput v8, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    .line 4627
    :try_start_1
    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v5, p1}, Landroid/net/wifi/WifiConfigStore;->setIpConfiguration(ILandroid/net/DhcpInfoInternal;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 4631
    :goto_0
    iget-object v5, p1, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 4632
    .local v0, addr:Ljava/net/InetAddress;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5, v0}, Landroid/net/wifi/WifiInfo;->setInetAddress(Ljava/net/InetAddress;)V

    .line 4636
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v5

    if-eq v5, v10, :cond_0

    .line 4637
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiDisplay: STA IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,Hotspot IP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4638
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v5, v5, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v10, :cond_0

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v5, v5, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 4639
    const-string v5, "WifiStateMachine"

    const-string v6, "STA got IP address and IP conflicts with hotspot setting, neet to reconfigure hotspot in APSTA concurrent case!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4640
    const v5, 0x20018

    invoke-virtual {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4641
    const v5, 0x20015

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    const-wide/16 v6, 0x7d0

    invoke-virtual {p0, v5, v6, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 4648
    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->clearWepErrorNotification()V

    .line 4651
    monitor-enter p0

    .line 4652
    :try_start_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v5}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v5

    iget v5, v5, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v5}, Landroid/net/wifi/WifiNative;->addGatewayCommand(I)Z

    .line 4653
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4657
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 4658
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_arp()V

    .line 4659
    iget-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    if-eqz v5, :cond_1

    .line 4660
    invoke-virtual {p0, v8}, Landroid/net/wifi/WifiStateMachine;->startPacketFiltering_ssdp(Z)V

    .line 4665
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4667
    :cond_2
    const-string v5, "WifiStateMachine"

    const-string/jumbo v6, "renew IP when wif is already CONNECTED"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 4671
    .local v3, linkProperties:Landroid/net/LinkProperties;
    iget v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-static {v5}, Landroid/net/wifi/WifiConfigStore;->getProxyProperties(I)Landroid/net/ProxyProperties;

    move-result-object v4

    .line 4672
    .local v4, proxy:Landroid/net/ProxyProperties;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 4673
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v4}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .line 4676
    :cond_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 4677
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v3, v5}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 4678
    sget-boolean v5, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v5, :cond_4

    .line 4679
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Link configuration changed for netId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " old: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "new: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4682
    :cond_4
    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    .line 4683
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 4687
    :cond_5
    :try_start_3
    new-instance v2, Landroid/net/InterfaceConfiguration;

    invoke-direct {v2}, Landroid/net/InterfaceConfiguration;-><init>()V

    .line 4688
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    invoke-virtual {p1}, Landroid/net/DhcpInfoInternal;->makeLinkAddress()Landroid/net/LinkAddress;

    move-result-object v5

    iput-object v5, v2, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 4689
    const-string v5, "[up]"

    iput-object v5, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 4690
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v5, v6, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 4696
    .end local v2           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v3           #linkProperties:Landroid/net/LinkProperties;
    .end local v4           #proxy:Landroid/net/ProxyProperties;
    :cond_6
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v5

    if-nez v5, :cond_7

    .line 4697
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->configureLinkProperties()V

    .line 4698
    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 4699
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4701
    :cond_7
    return-void

    .line 4619
    .end local v0           #addr:Ljava/net/InetAddress;
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v5

    .line 4628
    :catch_0
    move-exception v1

    .line 4629
    .local v1, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to setIpConfiguration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4653
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v0       #addr:Ljava/net/InetAddress;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 4691
    .restart local v3       #linkProperties:Landroid/net/LinkProperties;
    .restart local v4       #proxy:Landroid/net/ProxyProperties;
    :catch_1
    move-exception v1

    .line 4692
    .restart local v1       #e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dhcpcd Failed to set interface up "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleSupplicantStateChange(Landroid/os/Message;)Landroid/net/wifi/SupplicantState;
    .locals 5
    .parameter "message"

    .prologue
    .line 4453
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/StateChangeResult;

    .line 4454
    .local v2, stateChangeResult:Landroid/net/wifi/StateChangeResult;
    iget-object v1, v2, Landroid/net/wifi/StateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    .line 4459
    .local v1, state:Landroid/net/wifi/SupplicantState;
    const v3, 0xc367

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(II)I

    .line 4460
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    .line 4462
    invoke-static {v1}, Landroid/net/wifi/SupplicantState;->isConnecting(Landroid/net/wifi/SupplicantState;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4463
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget v4, v2, Landroid/net/wifi/StateChangeResult;->networkId:I

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    .line 4468
    :goto_0
    sget-object v3, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-ne v1, v3, :cond_0

    .line 4470
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v4, v2, Landroid/net/wifi/StateChangeResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    .line 4474
    :cond_0
    sget-object v3, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-eq v1, v3, :cond_1

    sget-object v3, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    if-ne v1, v3, :cond_2

    .line 4476
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchSSID()Ljava/lang/String;

    move-result-object v0

    .line 4477
    .local v0, ssid:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 4478
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3, v0}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    .line 4483
    .end local v0           #ssid:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(Landroid/os/Message;)V

    .line 4484
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWpsStateMachine:Landroid/net/wifi/WpsStateMachine;

    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WpsStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4486
    return-object v1

    .line 4465
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    goto :goto_0
.end method

.method private hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .parameter "s"

    .prologue
    const/16 v6, 0x10

    .line 8675
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 8676
    .local v2, len:I
    div-int/lit8 v3, v2, 0x2

    new-array v0, v3, [B

    .line 8677
    .local v0, data:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 8678
    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 8677
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 8680
    :cond_0
    return-object v0
.end method

.method private isCT_CDMA_WIFI_SSID()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 4989
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    .line 4990
    .local v1, ssid:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 4999
    :cond_0
    :goto_0
    return v2

    .line 4993
    :cond_1
    const/4 v0, 0x0

    .local v0, j:I
    :goto_1
    const/4 v3, 0x3

    if-ge v0, v3, :cond_0

    .line 4994
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mCTFinalPreConfigSsidList:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4995
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] match Ssid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    const/4 v2, 0x1

    goto :goto_0

    .line 4993
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private isMulticastEnabled()Z
    .locals 1

    .prologue
    .line 3067
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    return v0
.end method

.method private isWifiTethered(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3844
    .local p1, active:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3846
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v6

    .line 3847
    .local v6, wifiRegexs:[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3848
    .local v3, intf:Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v5, v0, v2

    .line 3849
    .local v5, regex:Ljava/lang/String;
    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3850
    const/4 v7, 0x1

    .line 3855
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :goto_1
    return v7

    .line 3848
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #intf:Ljava/lang/String;
    .restart local v4       #len$:I
    .restart local v5       #regex:Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3855
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #intf:Ljava/lang/String;
    .end local v4           #len$:I
    .end local v5           #regex:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 8666
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8667
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 8670
    const-string v0, "WifiStateMachine"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8671
    return-void
.end method

.method private parseBundle(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 14
    .parameter "bundle"
    .parameter "context"

    .prologue
    .line 8768
    const-string v2, "device_name"

    .line 8769
    .local v2, DEVICE_NAME:Ljava/lang/String;
    const-string v1, "additional_string"

    .line 8770
    .local v1, ADDITIONAL_STRING:Ljava/lang/String;
    const-string v0, "additional_count"

    .line 8774
    .local v0, ADDITIONAL_COUNT:Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 8775
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x2122

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    .line 8776
    .local v5, device_name:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8777
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 8778
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 8779
    .local v4, additional_string:Ljava/lang/String;
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_string"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8780
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v7

    .line 8781
    .local v7, mac:Ljava/lang/String;
    if-eqz v7, :cond_1

    .line 8782
    const-string v11, ":"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 8783
    .local v8, macFileds:[Ljava/lang/String;
    array-length v11, v8

    const/4 v12, 0x6

    if-ne v11, v12, :cond_1

    .line 8784
    const-string/jumbo v11, "mac_address"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 8785
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 8786
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 8787
    .local v3, additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8788
    move v6, v3

    .local v6, i:I
    :goto_0
    if-lez v6, :cond_1

    .line 8789
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    rsub-int/lit8 v12, v6, 0x5

    add-int/lit8 v12, v12, 0x1

    aget-object v12, v8, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 8788
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 8791
    .end local v3           #additional_count:I
    .end local v6           #i:I
    :cond_0
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8811
    .end local v4           #additional_string:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_1
    :goto_1
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v11

    iput-object v5, v11, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 8816
    .end local v5           #device_name:Ljava/lang/String;
    :goto_2
    return-void

    .line 8793
    .restart local v4       #additional_string:Ljava/lang/String;
    .restart local v5       #device_name:Ljava/lang/String;
    .restart local v7       #mac:Ljava/lang/String;
    .restart local v8       #macFileds:[Ljava/lang/String;
    :cond_2
    const-string/jumbo v11, "random"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 8794
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 8795
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 8796
    .restart local v3       #additional_count:I
    const-string v11, "WifiStateMachine"

    const-string v12, "get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8797
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 8798
    .local v9, randomssid:Ljava/lang/String;
    if-eqz v9, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_1

    .line 8799
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v3

    invoke-virtual {v9, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 8800
    .local v10, randomssidf:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 8803
    .end local v3           #additional_count:I
    .end local v9           #randomssid:Ljava/lang/String;
    .end local v10           #randomssidf:Ljava/lang/String;
    :cond_3
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_count"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8806
    :cond_4
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get additional_string or IMEI"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 8813
    .end local v4           #additional_string:Ljava/lang/String;
    .end local v5           #device_name:Ljava/lang/String;
    .end local v7           #mac:Ljava/lang/String;
    .end local v8           #macFileds:[Ljava/lang/String;
    :cond_5
    const-string v11, "WifiStateMachine"

    const-string v12, "Can\'t get device_name"

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8814
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->CustomizeSSIDbyCode()V

    goto :goto_2
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 13
    .parameter "line"

    .prologue
    .line 4018
    const/4 v0, 0x0

    .line 4019
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 4024
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    monitor-enter v11

    .line 4025
    :try_start_0
    sget-object v10, Landroid/net/wifi/WifiStateMachine;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v10, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 4026
    .local v8, result:[Ljava/lang/String;
    const/4 v10, 0x3

    array-length v12, v8

    if-gt v10, v12, :cond_6

    array-length v10, v8

    const/4 v12, 0x5

    if-gt v10, v12, :cond_6

    .line 4027
    const/4 v10, 0x0

    aget-object v2, v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4032
    .local v2, bssid:Ljava/lang/String;
    const/4 v10, 0x1

    :try_start_1
    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 4033
    .local v5, frequency:I
    const/4 v10, 0x2

    aget-object v10, v8, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 4037
    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    .line 4053
    :cond_0
    :goto_0
    :try_start_2
    array-length v10, v8

    const/4 v12, 0x4

    if-ne v10, v12, :cond_3

    .line 4054
    const/4 v10, 0x3

    aget-object v10, v8, v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x5b

    if-ne v10, v12, :cond_2

    .line 4055
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 4056
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 4072
    .local v1, ssid:Ljava/lang/String;
    :goto_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4073
    .local v7, key:Ljava/lang/String;
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4074
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    .line 4075
    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 4076
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 4077
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 4078
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

    .line 4092
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v11

    .line 4095
    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 4038
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 4039
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 4040
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .line 4058
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .line 4059
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 4061
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v10, v8

    const/4 v12, 0x5

    if-ne v10, v12, :cond_4

    .line 4062
    const/4 v10, 0x3

    aget-object v3, v8, v10

    .line 4063
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v10, 0x4

    aget-object v1, v8, v10

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 4067
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .line 4068
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 4081
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 4082
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 4085
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mScanResultCache:Landroid/util/LruCache;

    invoke-virtual {v10, v7, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4092
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :goto_3
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v10

    .line 4089
    .restart local v8       #result:[Ljava/lang/String;
    :cond_6
    :try_start_7
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Misformatted scan result text with "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    array-length v12, v8

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " fields: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 4092
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v10

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 4
    .parameter "wifiConfig"

    .prologue
    .line 1510
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1511
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "persistApConfiguration..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1512
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1514
    :cond_0
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "wificonfig is null..."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    :goto_0
    return-void

    .line 1517
    :cond_1
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1519
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1520
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1524
    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "hotspot_hidden"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-boolean v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    :goto_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1527
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 1528
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_security_type"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1532
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 1533
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1537
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_macfilter_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1540
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1543
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_connection_array"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1546
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_channel"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1549
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_on"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1552
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_max_connection"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1555
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 1556
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_dhcp_start_ip"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1560
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 1561
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_subnet_mask"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1565
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1566
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_id_address"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1570
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_sleep_policy"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1572
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_black_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1573
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_white_list"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1524
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method private sendDongleScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    .line 2428
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.DONGLE_SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2430
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2431
    return-void
.end method

.method private sendErrorBroadcast(I)V
    .locals 2
    .parameter "errorCode"

    .prologue
    .line 4398
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.ERROR"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4399
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4400
    const-string v1, "errorCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4401
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4402
    return-void
.end method

.method private sendLinkConfigurationChangedBroadcast()V
    .locals 4

    .prologue
    .line 4419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4420
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4421
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4422
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4423
    return-void
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    .line 4374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4375
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Before WifiStateMachine send networkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4384
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4386
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4387
    if-eqz p1, :cond_0

    .line 4388
    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4389
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    .line 4390
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4391
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    .line 4392
    const-string v1, "cw_ssid_key"

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->cw_ssid_key:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4394
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 4395
    return-void

    .line 4391
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private sendRssiChangeBroadcast(II)V
    .locals 2
    .parameter "newRssi"
    .parameter "frequency"

    .prologue
    .line 4366
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4367
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4368
    const-string/jumbo v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4369
    const-string v1, "frequency"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4370
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4371
    return-void
.end method

.method private sendScanResultsAvailableBroadcast()V
    .locals 2

    .prologue
    .line 4360
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4361
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4362
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4363
    return-void
.end method

.method private sendSupplicantConnectionChangedBroadcast(Z)V
    .locals 2
    .parameter "connected"

    .prologue
    .line 4426
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4427
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4428
    const-string v1, "connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4429
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4430
    return-void
.end method

.method private sendVzwStatusNotification(I)I
    .locals 14
    .parameter "iVzwStatus"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3682
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 3687
    .local v3, nm:Landroid/app/NotificationManager;
    const v0, 0x4020038

    .line 3688
    .local v0, iID:I
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "sendVzwStatusNotification iVzwStatus = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    if-nez p1, :cond_1

    .line 3691
    const v1, 0x4020038

    .line 3692
    .local v1, iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3693
    .local v5, sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080003

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 3712
    .local v4, sText:Ljava/lang/String;
    :goto_0
    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v10, v8, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const-wide/16 v7, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    .line 3721
    .local v2, n:Landroid/app/Notification;
    iput v12, v2, Landroid/app/Notification;->flags:I

    .line 3722
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v7, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v6, v5, v4, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 3723
    if-ne p1, v13, :cond_0

    .line 3724
    iget-object v6, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v7, "vzw_wifi_hide_notification_icon"

    invoke-virtual {v6, v7, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3727
    :cond_0
    invoke-virtual {v3, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 3729
    return v10

    .line 3694
    .end local v1           #iVzwStatusIcon:I
    .end local v2           #n:Landroid/app/Notification;
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_1
    if-ne p1, v11, :cond_2

    .line 3695
    const v1, 0x402003a

    .line 3696
    .restart local v1       #iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3697
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto :goto_0

    .line 3698
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_2
    if-ne p1, v12, :cond_3

    .line 3699
    const v1, 0x4020037

    .line 3700
    .restart local v1       #iVzwStatusIcon:I
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 3701
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_0

    .line 3702
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_3
    if-ne p1, v13, :cond_4

    .line 3703
    const v1, 0x402003b

    .line 3704
    .restart local v1       #iVzwStatusIcon:I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x4080008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3705
    .restart local v5       #sTitle:Ljava/lang/String;
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x4080009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_0

    .line 3707
    .end local v1           #iVzwStatusIcon:I
    .end local v4           #sText:Ljava/lang/String;
    .end local v5           #sTitle:Ljava/lang/String;
    :cond_4
    const/4 v1, 0x0

    .line 3708
    .restart local v1       #iVzwStatusIcon:I
    const-string v5, "Title Error"

    .line 3709
    .restart local v5       #sTitle:Ljava/lang/String;
    const-string v4, "Text Error"

    .restart local v4       #sText:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method private sendWPSFailBroadcast()V
    .locals 3

    .prologue
    .line 4412
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WPS_FAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4413
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4414
    const-string v1, "WifiStateMachine"

    const-string v2, "WPS: set intent WPS_FAIL_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    return-void
.end method

.method private sendWPSSuccessBroadcast()V
    .locals 3

    .prologue
    .line 4406
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WPS_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4407
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4408
    const-string v1, "WifiStateMachine"

    const-string v2, "WPS: set intent WPS_SUCCESS_CHANGED_ACTION"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4409
    return-void
.end method

.method private setCountryCode()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3862
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3864
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3865
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    .line 3870
    :goto_0
    return-void

    .line 3868
    :cond_0
    const-string v1, "NONE"

    invoke-virtual {p0, v1, v3}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private setCwStateProperty(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 3370
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->last_state:Z

    if-ne v0, v2, :cond_0

    if-ne p1, v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    .line 3372
    :cond_0
    if-ne p1, v2, :cond_2

    .line 3373
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    if-ne v0, v2, :cond_1

    .line 3374
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W]-- user register, set cw property 1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    const-string/jumbo v0, "persist.sys.cw.CwRegisterState"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3386
    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->last_state:Z

    .line 3388
    return-void

    .line 3378
    :cond_1
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W]-- not user register, set cw property 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    const-string/jumbo v0, "persist.sys.cw.CwRegisterState"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3380
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    goto :goto_0

    .line 3383
    :cond_2
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W]-- set cw property 0"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3384
    const-string/jumbo v0, "persist.sys.cw.CwRegisterState"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setDongleScanList(Ljava/lang/String;)V
    .locals 9
    .parameter "scanResults"

    .prologue
    .line 2393
    if-nez p1, :cond_0

    .line 2425
    :goto_0
    return-void

    .line 2396
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2398
    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 2400
    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 2403
    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v6, :cond_5

    .line 2404
    if-eq v3, v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_2

    .line 2405
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2407
    const/4 v7, 0x1

    if-ne v2, v7, :cond_3

    .line 2408
    add-int/lit8 v1, v3, 0x1

    .line 2403
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2411
    :cond_3
    if-le v3, v1, :cond_4

    .line 2412
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2413
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 2414
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_4

    .line 2415
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2420
    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 2424
    :cond_5
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    goto :goto_0
.end method

.method private setFrequencyBand()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3876
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_frequency_band"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 3878
    .local v0, band:I
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V

    .line 3879
    return-void
.end method

.method private setHighPerfModeEnabledNative(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4311
    if-nez p1, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4312
    const-string/jumbo v0, "set suspend optimizations failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4314
    :cond_0
    if-eqz p1, :cond_3

    .line 4315
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4316
    const-string/jumbo v0, "set power mode active failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4323
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v2

    .line 4311
    goto :goto_0

    .line 4319
    :cond_3
    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4320
    const-string/jumbo v0, "set power mode auto failed!"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 4437
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v0, :cond_0

    .line 4438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDetailed state, old ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4442
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 4443
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, p1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 4445
    :cond_1
    return-void
.end method

.method private setPreConfigAPHigherPriority()V
    .locals 17

    .prologue
    .line 5286
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v12

    .line 5287
    .local v12, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const/4 v14, 0x4

    new-array v11, v14, [Landroid/net/wifi/WifiConfiguration;

    .line 5288
    .local v11, updatedwifiConfig:[Landroid/net/wifi/WifiConfiguration;
    const/4 v4, 0x0

    .line 5289
    .local v4, maxPriority:I
    const/4 v1, 0x0

    .line 5290
    .local v1, bMatch:Z
    const/4 v3, 0x0

    .line 5291
    .local v3, j:I
    const/4 v8, 0x1

    .line 5292
    .local v8, preConfigSsidListNum:I
    const/4 v6, -0x1

    .line 5293
    .local v6, mostPreferredSsidPriority:I
    const/4 v10, 0x1

    .line 5296
    .local v10, totalListNum:I
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_0

    .line 5297
    const/4 v8, 0x3

    .line 5298
    const/4 v10, 0x3

    .line 5302
    :cond_0
    const-string/jumbo v14, "persist.sys.cw.ssid"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5303
    .local v5, mostPreferredSsid:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsid is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5304
    const-string/jumbo v14, "persist.sys.cw.security"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5305
    .local v7, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] mostPreferredSsidSecurity is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5306
    const-string v14, ""

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, ""

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 5308
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aput-object v5, v14, v8

    .line 5309
    add-int/lit8 v10, v8, 0x1

    .line 5310
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "mostPreferredSsid = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v8

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " security = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5313
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v13

    .line 5314
    .local v13, wifiState:I
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] wifiState is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5315
    const/4 v14, 0x3

    if-eq v13, v14, :cond_3

    .line 5316
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "wifi state not enabled : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5485
    :cond_2
    :goto_0
    return-void

    .line 5320
    :cond_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v2, v14, -0x1

    .local v2, i:I
    :goto_1
    if-ltz v2, :cond_16

    .line 5321
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiConfiguration;

    .line 5322
    .local v9, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] tmpWifiConfig is:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5323
    if-eqz v9, :cond_4

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v14, :cond_6

    .line 5324
    :cond_4
    const-string v14, "WifiStateMachine"

    const-string v15, "get null wifi configuration"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5320
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 5327
    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_7

    .line 5328
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 5329
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "match preConfigSsidList = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateMachine;->mPreConfigSsidList:[Ljava/lang/String;

    move-object/from16 v16, v0

    aget-object v16, v16, v3

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5330
    const/4 v1, 0x1

    .line 5331
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "bMatch is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5335
    :cond_7
    if-eqz v1, :cond_14

    .line 5336
    const-string v14, "WifiStateMachine"

    const-string v15, "[C+W] enter set maxPriority loop>>>>>>>>>>>"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5337
    if-ne v3, v8, :cond_b

    .line 5338
    const-string/jumbo v14, "open"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_c

    .line 5339
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_8

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-eqz v14, :cond_a

    .line 5341
    :cond_8
    const/4 v1, 0x0

    .line 5342
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    .line 5343
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto :goto_2

    .line 5327
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 5346
    :cond_a
    const-string v14, "WifiStateMachine"

    const-string v15, "[open] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5381
    :cond_b
    :goto_4
    aput-object v9, v11, v3

    .line 5382
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 5348
    :cond_c
    const-string/jumbo v14, "wep"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 5349
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_d

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aget-object v14, v14, v15

    if-nez v14, :cond_e

    .line 5351
    :cond_d
    const/4 v1, 0x0

    .line 5352
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    .line 5353
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    .line 5356
    :cond_e
    const-string v14, "WifiStateMachine"

    const-string v15, "[wep] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5358
    :cond_f
    const-string/jumbo v14, "wpapsk"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 5359
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_10

    .line 5360
    const/4 v1, 0x0

    .line 5361
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    .line 5362
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    .line 5365
    :cond_10
    const-string v14, "WifiStateMachine"

    const-string v15, "[wpapsk] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 5367
    :cond_11
    const-string v14, "eap"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_13

    .line 5368
    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    iget-object v14, v9, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_12

    .line 5370
    const/4 v1, 0x0

    .line 5371
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_5

    .line 5372
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    goto/16 :goto_2

    .line 5375
    :cond_12
    const-string v14, "WifiStateMachine"

    const-string v15, "[eap] mostPreferredSsid matched"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5378
    :cond_13
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no matched mostPreferredSsidSecurity"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 5384
    :cond_14
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-gt v4, v14, :cond_15

    .line 5385
    iget v14, v9, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v4, v14, 0x1

    .line 5386
    :cond_15
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] maxPriority is :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 5391
    .end local v9           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_16
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xd8

    if-ne v14, v15, :cond_1b

    .line 5392
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    const/4 v14, 0x2

    aget-object v14, v11, v14

    if-eqz v14, :cond_1a

    .line 5393
    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_17

    const/4 v14, 0x1

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_17

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x1

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-le v14, v15, :cond_17

    .line 5396
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5419
    :goto_5
    const/4 v14, 0x3

    aget-object v14, v11, v14

    if-eqz v14, :cond_2

    const/4 v14, 0x2

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    const/4 v15, 0x3

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v15, :cond_2

    .line 5420
    const/4 v14, 0x3

    aget-object v14, v11, v14

    const/4 v15, 0x2

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5421
    const/4 v14, 0x3

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_19

    .line 5422
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x3

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5423
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    .line 5399
    :cond_17
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5400
    const/4 v14, 0x1

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5401
    const/4 v14, 0x2

    aget-object v14, v11, v14

    add-int/lit8 v15, v4, 0x2

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5402
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updatedwifiConfig[0].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5404
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    const/4 v14, 0x2

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_18

    .line 5407
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after update updated>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5409
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5410
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    .line 5411
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "[C+W] after saved configure>>>>updatedwifiConfig[0].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[1].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "updatedwifiConfig[2].priority is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5413
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5416
    :cond_18
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 5426
    :cond_19
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5431
    :cond_1a
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5434
    :cond_1b
    const/4 v14, 0x0

    aget-object v14, v11, v14

    if-eqz v14, :cond_23

    .line 5435
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iget v14, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    if-lt v14, v4, :cond_1c

    .line 5436
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "no need to update ssids priority"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    :goto_6
    const/4 v14, 0x1

    aget-object v14, v11, v14

    if-eqz v14, :cond_2

    .line 5460
    const/4 v14, 0x1

    aget-object v14, v11, v14

    const/4 v15, 0x0

    aget-object v15, v11, v15

    iget v15, v15, Landroid/net/wifi/WifiConfiguration;->priority:I

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5461
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xda

    if-ne v14, v15, :cond_21

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_21

    .line 5462
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_20

    .line 5463
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    .line 5439
    :cond_1c
    const/4 v14, 0x0

    aget-object v14, v11, v14

    iput v4, v14, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 5440
    sget-short v14, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v15, 0xda

    if-ne v14, v15, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    if-eqz v14, :cond_1e

    .line 5441
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork_CMCC(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1d

    .line 5442
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5443
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_6

    .line 5446
    :cond_1d
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5450
    :cond_1e
    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1f

    .line 5451
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "preconfig ssids priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5452
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_6

    .line 5455
    :cond_1f
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#1"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 5467
    :cond_20
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5471
    :cond_21
    const/4 v14, 0x1

    aget-object v14, v11, v14

    invoke-static {v14}, Landroid/net/wifi/WifiConfigStore;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v14

    const/4 v15, -0x1

    if-eq v14, v15, :cond_22

    .line 5472
    const-string v14, "WifiStateMachine"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "user saved ssid priority updated, Priority : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v16, v11, v16

    move-object/from16 v0, v16

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5473
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->saveConfig()Z

    goto/16 :goto_0

    .line 5476
    :cond_22
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "mWM.saveConfiguration failed#2"

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 5482
    :cond_23
    const-string v14, "WifiStateMachine"

    const-string/jumbo v15, "miss some preconfig ssids"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private setScanResults(Ljava/lang/String;)V
    .locals 11
    .parameter "scanResults"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 4104
    if-nez p1, :cond_1

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-nez v7, :cond_1

    .line 4106
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_0

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v9, :cond_0

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_0

    .line 4107
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[No APs detected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4108
    iput v9, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 4109
    invoke-direct {p0, v9}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 4159
    :cond_0
    :goto_0
    return-void

    .line 4115
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4117
    .local v4, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    if-eqz v7, :cond_4

    .line 4118
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4148
    :cond_2
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_9

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_9

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v9, :cond_9

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_9

    .line 4149
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[No APs detected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4150
    iput v9, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 4151
    invoke-direct {p0, v9}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 4158
    :cond_3
    :goto_1
    iput-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    goto :goto_0

    .line 4119
    :cond_4
    if-eqz p1, :cond_2

    .line 4120
    const/4 v2, 0x0

    .line 4121
    .local v2, lineCount:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    .line 4125
    .local v6, scanResultsLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_2
    if-gt v3, v6, :cond_2

    .line 4126
    if-eq v3, v6, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_6

    .line 4127
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 4129
    if-ne v2, v9, :cond_7

    .line 4130
    add-int/lit8 v1, v3, 0x1

    .line 4125
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 4133
    :cond_7
    if-le v3, v1, :cond_8

    .line 4134
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 4135
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v5

    .line 4136
    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v5, :cond_8

    .line 4137
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4142
    .end local v0           #line:Ljava/lang/String;
    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    add-int/lit8 v1, v3, 0x1

    goto :goto_3

    .line 4152
    .end local v1           #lineBeg:I
    .end local v2           #lineCount:I
    .end local v3           #lineEnd:I
    .end local v6           #scanResultsLen:I
    :cond_9
    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    iget v7, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eq v7, v10, :cond_3

    iget-boolean v7, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    if-nez v7, :cond_3

    .line 4153
    const-string v7, "WifiStateMachine"

    const-string v8, "VzwStatus[AP detected but not connected]"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4154
    iput v10, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 4155
    invoke-direct {p0, v10}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    goto :goto_1
.end method

.method private setTetheringSetting(Landroid/net/wifi/WifiConfiguration;)I
    .locals 9
    .parameter "config"

    .prologue
    const/4 v6, -0x1

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 3530
    const-string v7, "WifiStateMachine"

    const-string/jumbo v8, "setTetheringSetting"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3531
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-ne v7, v0, :cond_1

    .line 3532
    .local v0, dhcpEnable:Z
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 3533
    .local v4, startingIP:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v2, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 3534
    .local v2, dhcpSubnetMask:Ljava/lang/String;
    if-nez p1, :cond_2

    move v5, v6

    .line 3553
    :cond_0
    :goto_1
    return v5

    .end local v0           #dhcpEnable:Z
    .end local v2           #dhcpSubnetMask:Ljava/lang/String;
    .end local v4           #startingIP:Ljava/lang/String;
    :cond_1
    move v0, v5

    .line 3531
    goto :goto_0

    .line 3538
    .restart local v0       #dhcpEnable:Z
    .restart local v2       #dhcpSubnetMask:Ljava/lang/String;
    .restart local v4       #startingIP:Ljava/lang/String;
    :cond_2
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v0}, Landroid/os/INetworkManagementService;->setTetheringDhcpEnabled(Z)V

    .line 3539
    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    .line 3540
    const/4 v6, 0x2

    new-array v1, v6, [Ljava/lang/String;

    .line 3541
    .local v1, dhcpRange:[Ljava/lang/String;
    const/4 v6, 0x0

    aput-object v4, v1, v6

    .line 3542
    const/4 v6, 0x1

    invoke-static {v4, v2}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v6

    .line 3544
    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6, v1}, Landroid/os/INetworkManagementService;->setTetheringHtcDhcpRange([Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_0

    .line 3545
    const/4 v5, -0x2

    goto :goto_1

    .end local v1           #dhcpRange:[Ljava/lang/String;
    :cond_3
    move v5, v6

    .line 3547
    goto :goto_1

    .line 3549
    :catch_0
    move-exception v3

    .line 3550
    .local v3, ee:Ljava/lang/Exception;
    const-string v5, "WifiStateMachine"

    const-string/jumbo v6, "setTetheringSetting failed"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    const/4 v5, -0x3

    goto :goto_1
.end method

.method private setWifiApState(I)V
    .locals 7
    .parameter "wifiApState"

    .prologue
    const/high16 v6, 0x1000

    const/16 v4, 0xd

    const/4 v5, 0x0

    .line 3921
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3924
    .local v2, previousWifiApState:I
    if-ne p1, v4, :cond_4

    .line 3925
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 3927
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3940
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3942
    const/16 v3, 0xc

    if-ne p1, v3, :cond_5

    .line 3943
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V

    .line 3947
    :cond_1
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHotspotEnabled: get value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v4}, Landroid/os/INetworkManagementService;->getHotspotEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3951
    :goto_2
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiApState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3955
    :cond_2
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_6

    .line 3956
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3957
    const-string/jumbo v3, "send WIFIDISPLAY_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3958
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFIDISPLAY_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3959
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3960
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3961
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3962
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3972
    :goto_3
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApStateByName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "disabled"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3973
    const-string v3, "WiFiDisplay: Got disabled state in concurrent, set mWifidisplayApEnable =false "

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3974
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 3986
    :cond_3
    return-void

    .line 3929
    .end local v1           #intent:Landroid/content/Intent;
    :cond_4
    const/16 v3, 0xb

    if-ne p1, v3, :cond_0

    .line 3930
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    .line 3932
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->writeWifiApStatusForFlashlight(Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 3935
    :catch_0
    move-exception v0

    .line 3936
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3944
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    if-eq p1, v4, :cond_1

    .line 3945
    :try_start_3
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/os/INetworkManagementService;->setHotspotEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 3948
    :catch_1
    move-exception v3

    goto/16 :goto_2

    .line 3964
    :cond_6
    const-string/jumbo v3, "send WIFI_AP_STATE_CHANGED_ACTION intent"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3965
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3966
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3967
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3968
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3969
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto :goto_3
.end method

.method private setWifiState(I)V
    .locals 5
    .parameter "wifiState"

    .prologue
    .line 3882
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    .line 3885
    .local v2, previousWifiState:I
    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    .line 3886
    :try_start_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V

    .line 3888
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3909
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3911
    sget-boolean v3, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 3913
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3914
    .local v1, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3915
    const-string/jumbo v3, "wifi_state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3916
    const-string/jumbo v3, "previous_wifi_state"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3917
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 3918
    return-void

    .line 3890
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 3891
    :try_start_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V

    .line 3893
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpFailWorkaround:I

    .line 3894
    const/4 v3, -0x1

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    .line 3897
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-eqz v3, :cond_0

    .line 3898
    const-string v3, "WifiStateMachine"

    const-string v4, "VzwStatus[Wifi_off]"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3899
    const/4 v3, 0x0

    iput v3, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3900
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 3901
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3905
    :catch_0
    move-exception v0

    .line 3906
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Failed to note battery stats in wifi"

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private shouldBroadcastRSSIForIMS(II)Z
    .locals 6
    .parameter "newRSSI"
    .parameter "lastRSSI"

    .prologue
    const/4 v1, 0x0

    const/16 v5, -0x4b

    const/16 v4, -0x50

    const/16 v3, -0x55

    const/4 v0, 0x1

    .line 4179
    if-eq p1, p2, :cond_5

    .line 4180
    const/16 v2, -0xc8

    if-ne p2, v2, :cond_1

    .line 4191
    :cond_0
    :goto_0
    return v0

    .line 4182
    :cond_1
    if-le p1, v5, :cond_2

    if-le p2, v5, :cond_0

    .line 4184
    :cond_2
    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_0

    .line 4186
    :cond_3
    if-gt p1, v3, :cond_4

    if-gt p2, v3, :cond_0

    :cond_4
    move v0, v1

    .line 4189
    goto :goto_0

    :cond_5
    move v0, v1

    .line 4191
    goto :goto_0
.end method

.method private startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 4951
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$9;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$9;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4978
    return-void
.end method

.method private startTethering(Ljava/util/ArrayList;)Z
    .locals 15
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3741
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 3744
    .local v10, wifiAvailable:Z
    new-instance v9, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v9}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 3745
    .local v9, wifiAPConfig:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 3747
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3749
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v12}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v11

    .line 3751
    .local v11, wifiRegexs:[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 3752
    .local v5, intf:Ljava/lang/String;
    move-object v0, v11

    .local v0, arr$:[Ljava/lang/String;
    array-length v7, v0

    .local v7, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v7, :cond_0

    aget-object v8, v0, v3

    .line 3753
    .local v8, regex:Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 3755
    const/4 v4, 0x0

    .line 3761
    .local v4, ifcg:Landroid/net/InterfaceConfiguration;
    const-string/jumbo v12, "wlan0"

    invoke-virtual {v5, v12}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    sget-boolean v12, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v12, :cond_1

    .line 3762
    const-string v12, "WifiStateMachine"

    const-string v13, "Skip wlan0 interface when concurrent mode"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    const/4 v12, 0x1

    .line 3816
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v5           #intf:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    :goto_1
    return v12

    .line 3768
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v3       #i$:I
    .restart local v4       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v5       #intf:Ljava/lang/String;
    .restart local v7       #len$:I
    .restart local v8       #regex:Ljava/lang/String;
    :cond_1
    :try_start_0
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v4

    .line 3769
    if-eqz v4, :cond_2

    .line 3772
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v12

    iget-object v12, v12, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v12, :cond_3

    .line 3773
    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v12

    iget-object v6, v12, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 3774
    .local v6, ipAddress:Ljava/lang/String;
    const-string v12, "WifiStateMachine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "starting Ipaddress = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3775
    new-instance v12, Landroid/net/LinkAddress;

    invoke-static {v6}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/16 v14, 0x18

    invoke-direct {v12, v13, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 3786
    .end local v6           #ipAddress:Ljava/lang/String;
    :goto_2
    const-string v12, "[up]"

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 3788
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v5, v4}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V

    .line 3790
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v12, v9}, Landroid/os/INetworkManagementService;->setMACList(Landroid/net/wifi/WifiConfiguration;)V

    .line 3792
    sget-boolean v12, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-nez v12, :cond_4

    .line 3793
    invoke-static {}, Landroid/net/wifi/WifiNative;->setApCountry()Z

    move-result v12

    if-nez v12, :cond_2

    .line 3794
    const-string v12, "WifiStateMachine"

    const-string v13, "Set AP Country failed"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3806
    :cond_2
    :goto_3
    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v12, v5}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v12

    if-eqz v12, :cond_5

    .line 3807
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error tethering on "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3808
    const/4 v12, 0x0

    goto :goto_1

    .line 3780
    :cond_3
    :try_start_1
    const-string v12, "WifiStateMachine"

    const-string v13, "Ipaddress = 192.168.43.1"

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3781
    new-instance v12, Landroid/net/LinkAddress;

    const-string v13, "192.168.43.1"

    invoke-static {v13}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v13

    const/16 v14, 0x18

    invoke-direct {v12, v13, v14}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v12, v4, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 3801
    :catch_0
    move-exception v1

    .line 3802
    .local v1, e:Ljava/lang/Exception;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error configuring interface "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3803
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 3797
    .end local v1           #e:Ljava/lang/Exception;
    :cond_4
    :try_start_2
    const-string/jumbo v12, "mWifidisplayApEnable is true, don\'t need to set ap country code again"

    invoke-direct {p0, v12}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 3810
    :cond_5
    iput-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    .line 3811
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 3752
    .end local v4           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 3816
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v5           #intf:Ljava/lang/String;
    .end local v7           #len$:I
    .end local v8           #regex:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method private stopTethering()V
    .locals 5

    .prologue
    .line 3821
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkAndSetConnectivityInstance()V

    .line 3825
    const/4 v1, 0x0

    .line 3827
    .local v1, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v1

    .line 3828
    if-eqz v1, :cond_0

    .line 3829
    new-instance v2, Landroid/net/LinkAddress;

    const-string v3, "0.0.0.0"

    invoke-static {v3}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, v1, Landroid/net/InterfaceConfiguration;->addr:Landroid/net/LinkAddress;

    .line 3831
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3837
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCm:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mTetherInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 3838
    const-string v2, "Untether initiate failed!"

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 3840
    :cond_1
    return-void

    .line 3833
    :catch_0
    move-exception v0

    .line 3834
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error resetting interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private string2Byte(Ljava/lang/String;)[B
    .locals 5
    .parameter "hexString"

    .prologue
    .line 3640
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v2, v3, 0x2

    .line 3641
    .local v2, len:I
    new-array v0, v2, [B

    .line 3642
    .local v0, byteArray:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 3643
    mul-int/lit8 v3, v1, 0x2

    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v0, v1

    .line 3642
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3645
    :cond_0
    return-object v0
.end method

.method private triggerCWDeRegister()V
    .locals 2

    .prologue
    .line 857
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessage(I)Z

    .line 859
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W De-Register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    return-void
.end method

.method private triggerCWRegister(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 851
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 853
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W register-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    return-void
.end method

.method private triggerCWRegisterExpire(J)V
    .locals 2
    .parameter "delayMillis"

    .prologue
    .line 863
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W CWRegisterExpire+"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwTarget:Landroid/net/wifi/WifiStateMachine$CwHandler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine$CwHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 865
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger C+W CWRegisterExpire-"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void
.end method

.method private updateApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/16 v7, 0xa

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1626
    sput-boolean v6, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1627
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "updateApConfiguration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1630
    :cond_0
    const-string v3, "WifiStateMachine"

    const-string v4, "[updateApConfiguration]mConfig is null..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    :cond_1
    :goto_0
    return-void

    .line 1634
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 1635
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "mConfig.getWifiApProfile().SSID is null, give temp default SSID..."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1636
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    const-string v4, "HTC Portable Hotspot"

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1639
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1640
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1641
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1644
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    if-eq v3, v4, :cond_5

    .line 1645
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-boolean v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    .line 1646
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1649
    :cond_5
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1650
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1651
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1654
    :cond_6
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1655
    :cond_7
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1656
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1660
    :cond_8
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-lt v3, v5, :cond_9

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-gt v3, v7, :cond_9

    .line 1661
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_9

    .line 1662
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    .line 1663
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1667
    :cond_9
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-lt v3, v5, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-gt v3, v7, :cond_a

    .line 1668
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    if-eq v3, v4, :cond_a

    .line 1669
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    .line 1670
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1674
    :cond_a
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v3, v4, :cond_b

    .line 1675
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 1676
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1679
    :cond_b
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    if-eq v3, v4, :cond_c

    .line 1680
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1681
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1684
    :cond_c
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    if-eq v3, v4, :cond_d

    .line 1685
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    .line 1686
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1689
    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-eqz v3, :cond_e

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 1690
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1691
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1694
    :cond_e
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-eqz v3, :cond_f

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1695
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1696
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1699
    :cond_f
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-eqz v3, :cond_10

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 1700
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1701
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1704
    :cond_10
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    if-eqz v3, :cond_11

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 1705
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    .line 1706
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1709
    :cond_11
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    if-eqz v3, :cond_12

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1710
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    .line 1711
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1714
    :cond_12
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    if-eq v3, v4, :cond_13

    .line 1715
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 1716
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    .line 1719
    :cond_13
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    if-eq v3, v4, :cond_14

    .line 1720
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    iput v4, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    .line 1721
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1725
    :cond_14
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v1

    .line 1726
    .local v1, originalBlackList:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_15

    .line 1727
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 1726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1729
    :cond_15
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v2

    .line 1730
    .local v2, originalWhiteList:Ljava/lang/String;
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_16

    .line 1731
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v4, v4, v0

    aput-object v4, v3, v0

    .line 1730
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1733
    :cond_16
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getBlackMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiStateMachine;->getWhiteMacFilterString(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1734
    :cond_17
    sput-boolean v5, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    .line 1738
    :cond_18
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    if-eq v3, v5, :cond_19

    .line 1739
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 1740
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-eqz v3, :cond_19

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1743
    :cond_19
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getPendingRequestedList()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1744
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->setConnectionReqNotificationVisible(Z)V

    .line 1745
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->CancelNotifyWIFIAPreqtimer()V

    goto/16 :goto_0
.end method

.method private updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "macStr"
    .parameter "config"

    .prologue
    .line 2059
    const/4 v0, 0x0

    .line 2060
    .local v0, count:I
    if-nez p1, :cond_1

    .line 2080
    :cond_0
    return-void

    .line 2062
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2064
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 2066
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2068
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2069
    :goto_0
    if-lez v1, :cond_0

    .line 2070
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2072
    .local v2, lastindex:I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    .line 2074
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2075
    add-int/lit8 v0, v0, 0x1

    .line 2076
    add-int/lit8 v2, v2, 0x1

    .line 2077
    move v1, v2

    goto :goto_0
.end method

.method private updateV6Addresses(Landroid/net/LinkProperties;)V
    .locals 25
    .parameter "linkProperties"

    .prologue
    .line 4716
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    .line 4717
    const-string/jumbo v2, "mWakeLock_IPv6 acquire"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4718
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v2, v5, v6}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4721
    :cond_0
    const/4 v9, 0x0

    .line 4723
    .local v9, broadcastRequired:Z
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v22

    .line 4726
    .local v22, wlanIf:Ljava/net/NetworkInterface;
    if-eqz v22, :cond_9

    .line 4728
    invoke-virtual/range {v22 .. v22}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v18

    .line 4730
    .local v18, interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interfaceAddresses:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4732
    :cond_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/net/InterfaceAddress;

    .line 4733
    .local v16, ia:Ljava/net/InterfaceAddress;
    invoke-virtual/range {v16 .. v16}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/InterfaceAddress;->getNetworkPrefixLength()S

    move-result v3

    invoke-static {v2, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 4737
    .local v8, addr:Ljava/net/InetAddress;
    instance-of v2, v8, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    invoke-virtual {v8}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2, v8}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4741
    new-instance v2, Landroid/net/LinkAddress;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/net/LinkAddress;-><init>(Ljava/net/InterfaceAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 4742
    const/4 v9, 0x1

    goto :goto_0

    .line 4747
    .end local v8           #addr:Ljava/net/InetAddress;
    .end local v16           #ia:Ljava/net/InterfaceAddress;
    :cond_3
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "retrieving gateway for :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 4749
    :cond_4
    const/4 v13, 0x0

    .line 4750
    .local v13, gatewayInfo:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4751
    .local v12, gateway:Ljava/lang/String;
    const/16 v19, 0x0

    .line 4752
    .local v19, ip6addr:Ljava/lang/String;
    const/16 v20, 0x0

    .line 4753
    .local v20, lease:I
    const/4 v10, 0x0

    .line 4754
    .local v10, dns:Ljava/lang/String;
    const/16 v21, 0x0

    .line 4757
    .local v21, lifetime:I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v2, v3}, Landroid/os/INetworkManagementService;->getIpv6Gateway(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v13

    .line 4767
    const/16 v16, 0x0

    .line 4768
    .local v16, ia:Ljava/net/InetAddress;
    const/16 v17, 0x0

    .line 4770
    .local v17, ib:Ljava/net/InetAddress;
    :try_start_2
    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 4771
    .local v14, gatewayInfoTokens:[Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v19, v14, v2

    .line 4772
    const/4 v2, 0x2

    aget-object v12, v14, v2

    .line 4773
    const/4 v2, 0x3

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    .line 4774
    const/4 v2, 0x4

    aget-object v10, v14, v2

    .line 4775
    const/4 v2, 0x5

    aget-object v2, v14, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 4777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ip: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gateway: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lease: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4780
    if-ltz v20, :cond_6

    .line 4782
    const/16 v2, 0x12c

    move/from16 v0, v20

    if-ge v0, v2, :cond_5

    .line 4783
    const/16 v20, 0x12c

    .line 4787
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move/from16 v0, v20

    mul-int/lit16 v7, v0, 0x1e0

    int-to-long v0, v7

    move-wide/from16 v23, v0

    add-long v5, v5, v23

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/net/wifi/WifiStateMachine;->mIpv6RenewalIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4793
    :cond_6
    invoke-static {v12}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v16

    .line 4794
    invoke-static/range {v19 .. v19}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result-object v17

    .line 4818
    :try_start_3
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding gateway :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lease time in seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4820
    :cond_7
    invoke-virtual/range {v16 .. v16}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v2

    if-nez v2, :cond_8

    .line 4821
    new-instance v2, Landroid/net/RouteInfo;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 4822
    const/4 v9, 0x1

    .line 4824
    :cond_8
    new-instance v2, Landroid/net/LinkAddress;

    const/16 v3, 0x80

    move-object/from16 v0, v17

    invoke-direct {v2, v0, v3}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 4825
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isIpv4Connected()Z

    move-result v4

    .line 4826
    .local v4, mIsIpv4Connected:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    sget-object v3, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;ZZLjava/lang/String;Ljava/lang/String;)V

    .line 4827
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    .line 4828
    invoke-static {v10}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 4829
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/net/LinkProperties;->setInterfaceNameV6(Ljava/lang/String;)V

    .line 4830
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adding ipv6 :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v17 .. v17}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lease time in seconds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", dns: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 4837
    .end local v4           #mIsIpv4Connected:Z
    .end local v10           #dns:Ljava/lang/String;
    .end local v12           #gateway:Ljava/lang/String;
    .end local v13           #gatewayInfo:Ljava/lang/String;
    .end local v14           #gatewayInfoTokens:[Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #ia:Ljava/net/InetAddress;
    .end local v17           #ib:Ljava/net/InetAddress;
    .end local v18           #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .end local v19           #ip6addr:Ljava/lang/String;
    .end local v20           #lease:I
    .end local v21           #lifetime:I
    :cond_9
    if-eqz v9, :cond_a

    .line 4838
    .end local v22           #wlanIf:Ljava/net/NetworkInterface;
    :goto_1
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 4842
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateV6Addresses(): linkProperties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4843
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 4844
    const-string/jumbo v2, "mWakeLock_IPv6 release 5"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4847
    :cond_b
    :goto_2
    return-void

    .line 4758
    .restart local v10       #dns:Ljava/lang/String;
    .restart local v12       #gateway:Ljava/lang/String;
    .restart local v13       #gatewayInfo:Ljava/lang/String;
    .restart local v15       #i$:Ljava/util/Iterator;
    .restart local v18       #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .restart local v19       #ip6addr:Ljava/lang/String;
    .restart local v20       #lease:I
    .restart local v21       #lifetime:I
    .restart local v22       #wlanIf:Ljava/net/NetworkInterface;
    :catch_0
    move-exception v11

    .line 4759
    .local v11, e:Ljava/lang/Exception;
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in requestRtSol for interface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4760
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 4761
    const-string/jumbo v2, "mWakeLock_IPv6 release 1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4762
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 4837
    :cond_c
    if-eqz v9, :cond_b

    .line 4838
    .end local v11           #e:Ljava/lang/Exception;
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    goto :goto_2

    .line 4795
    .restart local v16       #ia:Ljava/net/InetAddress;
    .restart local v17       #ib:Ljava/net/InetAddress;
    :catch_1
    move-exception v11

    .line 4796
    .local v11, e:Ljava/lang/NullPointerException;
    :try_start_5
    const-string v2, "Null gateway info"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 4798
    const-string/jumbo v2, "mWakeLock_IPv6 release 2"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4799
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4837
    :cond_d
    if-eqz v9, :cond_b

    goto :goto_3

    .line 4802
    .end local v11           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v11

    .line 4803
    .local v11, e:Ljava/lang/NumberFormatException;
    const-string v2, "Invalid lease info"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4804
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 4805
    const-string/jumbo v2, "mWakeLock_IPv6 release 3"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4806
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4837
    :cond_e
    if-eqz v9, :cond_b

    goto :goto_3

    .line 4809
    .end local v11           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v11

    .line 4810
    .local v11, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-numeric gateway addr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 4811
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 4812
    const-string/jumbo v2, "mWakeLock_IPv6 release 4"

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4813
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 4837
    :cond_f
    if-eqz v9, :cond_b

    goto/16 :goto_3

    .line 4834
    .end local v10           #dns:Ljava/lang/String;
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    .end local v12           #gateway:Ljava/lang/String;
    .end local v13           #gatewayInfo:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v16           #ia:Ljava/net/InetAddress;
    .end local v17           #ib:Ljava/net/InetAddress;
    .end local v18           #interfaceAddresses:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/net/InterfaceAddress;>;"
    .end local v19           #ip6addr:Ljava/lang/String;
    .end local v20           #lease:I
    .end local v21           #lifetime:I
    .end local v22           #wlanIf:Ljava/net/NetworkInterface;
    :catch_4
    move-exception v11

    .line 4835
    .local v11, e:Ljava/lang/Exception;
    :try_start_6
    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->DBG:Z

    if-eqz v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 4837
    :cond_10
    if-eqz v9, :cond_a

    goto/16 :goto_1

    .end local v11           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v9, :cond_11

    .line 4838
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateMachine;->sendLinkConfigurationChangedBroadcast()V

    .line 4837
    :cond_11
    throw v2
.end method

.method private updateV6AddressesWithAnotherThread(Landroid/net/LinkProperties;)V
    .locals 2
    .parameter "linkProperties"

    .prologue
    .line 4704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressesWithAnotherThread() enter: linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4705
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$8;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiStateMachine$8;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/net/LinkProperties;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AddressesWithAnotherThread() leave: linkProperties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 4711
    return-void
.end method

.method private updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 5
    .parameter "macStr"
    .parameter "config"

    .prologue
    .line 2033
    const/4 v0, 0x0

    .line 2034
    .local v0, count:I
    if-nez p1, :cond_1

    .line 2053
    :cond_0
    return-void

    .line 2036
    :cond_1
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2038
    .local v1, index:I
    if-ltz v1, :cond_0

    .line 2040
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2042
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    .line 2043
    :goto_0
    if-lez v1, :cond_0

    .line 2044
    const-string v3, ","

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    .line 2046
    .local v2, lastindex:I
    if-ltz v2, :cond_0

    const/16 v3, 0xf

    if-gt v0, v3, :cond_0

    .line 2048
    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 2049
    add-int/lit8 v0, v0, 0x1

    .line 2050
    add-int/lit8 v2, v2, 0x1

    .line 2051
    move v1, v2

    goto :goto_0
.end method

.method private writeWifiApStatusForFlashlight(Z)V
    .locals 8
    .parameter "enable"

    .prologue
    .line 3990
    const/4 v2, 0x0

    .line 3992
    .local v2, fWriter:Ljava/io/FileWriter;
    :try_start_0
    new-instance v3, Ljava/io/FileWriter;

    const-string v4, "/sys/camera_led_status/led_hotspot_status"

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 3993
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .local v3, fWriter:Ljava/io/FileWriter;
    :try_start_1
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3994
    if-eqz p1, :cond_1

    .line 3995
    const-string v4, "1\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4003
    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 4007
    .end local v3           #fWriter:Ljava/io/FileWriter;
    :cond_0
    :goto_1
    const/4 v2, 0x0

    .line 4009
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    return-void

    .line 3997
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :cond_1
    :try_start_3
    const-string v4, "0\n"

    invoke-virtual {v3, v4}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3999
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 4000
    .end local v3           #fWriter:Ljava/io/FileWriter;
    .local v0, e:Ljava/io/IOException;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    :goto_2
    :try_start_4
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 4003
    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 4004
    :catch_1
    move-exception v1

    .line 4005
    .local v1, exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 4002
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 4003
    :goto_3
    if-eqz v2, :cond_2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 4007
    :cond_2
    :goto_4
    const/4 v2, 0x0

    .line 4002
    throw v4

    .line 4004
    :catch_2
    move-exception v1

    .line 4005
    .restart local v1       #exception:Ljava/io/IOException;
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "2.set flash flag="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "exception="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 4004
    .end local v1           #exception:Ljava/io/IOException;
    .end local v2           #fWriter:Ljava/io/FileWriter;
    .restart local v3       #fWriter:Ljava/io/FileWriter;
    :catch_3
    move-exception v1

    .line 4005
    .restart local v1       #exception:Ljava/io/IOException;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "2.set flash flag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "exception="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4002
    .end local v1           #exception:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #fWriter:Ljava/io/FileWriter;
    .restart local v2       #fWriter:Ljava/io/FileWriter;
    goto :goto_3

    .line 3999
    :catch_4
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method public CancelNotifyWIFIAPreqtimer()V
    .locals 2

    .prologue
    .line 1756
    const-string v0, "WifiStateMachine"

    const-string v1, "CancelNotifyWIFIAPreqtimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1758
    return-void
.end method

.method public declared-synchronized CtrlMsg(Ljava/lang/String;)Z
    .locals 2
    .parameter "MsgDetail"

    .prologue
    .line 978
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 979
    const/4 v0, 0x0

    .line 981
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->CtrlMsg(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public SetNotifyWIFIAPreqtimer()V
    .locals 6

    .prologue
    .line 1750
    const-string v2, "WifiStateMachine"

    const-string v3, "SetNotifyWIFIAPreqtimer"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0x1d4c0

    add-long v0, v2, v4

    .line 1752
    .local v0, triggerTime:J
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x0

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConnReqTimeout:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1753
    return-void
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2835
    const v0, 0x20039

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2836
    return-void
.end method

.method public assignDongleIP(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "BSSID"

    .prologue
    const/4 v10, 0x1

    .line 2272
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 2273
    .local v5, hash:I
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "assignDongleIP, hash = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const-string v2, "0.0.0.0"

    .line 2279
    .local v2, dongleIP:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v7

    const/16 v8, 0xd

    if-ne v7, v8, :cond_0

    .line 2281
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, Hotspot is ON, Use hotspot DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 2285
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2333
    :goto_0
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dongleIP = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 2360
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v2           #dongleIP:Ljava/lang/String;
    .local v3, dongleIP:Ljava/lang/String;
    :goto_1
    return-object v3

    .line 2289
    .end local v3           #dongleIP:Ljava/lang/String;
    .restart local v2       #dongleIP:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v7

    if-eq v7, v10, :cond_3

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    sget-object v8, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_3

    .line 2291
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xb

    if-lt v7, v8, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v7, v7, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    const/4 v8, 0x0

    const/16 v9, 0xa

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "192.168.6.10"

    const/4 v9, 0x0

    const/16 v10, 0xa

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2294
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2295
    .local v6, startingIP:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 2296
    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    .line 2298
    :cond_1
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected and STA IP conflict with WiFi display IP, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2299
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2300
    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 2301
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2303
    goto/16 :goto_0

    .line 2306
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :cond_2
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is connected, use WIFIDISPLAY DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    const-string v7, "192.168.6.10"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2308
    .restart local v1       #IPStart:[Ljava/lang/String;
    const-string v7, "192.168.6.254"

    const-string v8, "\\."

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2309
    .local v0, IPEnd:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v0, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x3

    aget-object v9, v1, v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sub-int/2addr v8, v9

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 2310
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2311
    goto/16 :goto_0

    .line 2316
    .end local v0           #IPEnd:[Ljava/lang/String;
    .end local v1           #IPStart:[Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_dhcp_start_ip"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2317
    .restart local v6       #startingIP:Ljava/lang/String;
    if-nez v6, :cond_4

    .line 2318
    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    .line 2321
    :cond_4
    const-string v7, "WifiStateMachine"

    const-string v8, "assignDongleIP, WiFi is disconnected, use original DHCP range for dongle..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2323
    .restart local v1       #IPStart:[Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x3

    aget-object v8, v1, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    rsub-int v8, v8, 0xfe

    rem-int v8, v5, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    add-int v5, v7, v8

    .line 2325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget-object v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_0

    .line 2328
    .end local v1           #IPStart:[Ljava/lang/String;
    .end local v6           #startingIP:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 2329
    .local v4, e:Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error assign dongleIP: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    move-object v3, v2

    .line 2330
    .end local v2           #dongleIP:Ljava/lang/String;
    .restart local v3       #dongleIP:Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public byteArrayToHexString([B)Ljava/lang/String;
    .locals 8
    .parameter "raw"

    .prologue
    .line 8685
    if-nez p1, :cond_0

    .line 8686
    const/4 v5, 0x0

    .line 8692
    :goto_0
    return-object v5

    .line 8688
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    array-length v5, p1

    mul-int/lit8 v5, v5, 0x2

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 8689
    .local v2, hex:Ljava/lang/StringBuilder;
    move-object v0, p1

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-byte v1, v0, v3

    .line 8690
    .local v1, b:B
    const-string v5, "0123456789ABCDEF"

    and-int/lit16 v6, v1, 0xf0

    shr-int/lit8 v6, v6, 0x4

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0123456789ABCDEF"

    and-int/lit8 v7, v1, 0xf

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 8689
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 8692
    .end local v1           #b:B
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public cWsetDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 5027
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 5029
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.CW_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5030
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5042
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]Before WifiStateMachine send networkInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5043
    const-string/jumbo v1, "networkInfo"

    new-instance v2, Landroid/net/NetworkInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v2, v3}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5044
    const-string v1, "linkProperties"

    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5045
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_0

    .line 5046
    const-string/jumbo v1, "wifiInfo"

    new-instance v2, Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {v2, v3}, Landroid/net/wifi/WifiInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 5047
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 5048
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W][cW-fake wifi]after WifiStateMachine send intent action  = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 5049
    return-void
.end method

.method public checkWifiApPassword()V
    .locals 4

    .prologue
    .line 2987
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2988
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedPassword()Ljava/lang/String;

    move-result-object v0

    .line 2989
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 2990
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 2994
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_password"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2996
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    return-void

    .line 2992
    .restart local v0       #key:Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    const-string v2, "1234567890"

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    goto :goto_0
.end method

.method public checkWifiApSsid()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 2999
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 3000
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_IMEI:Z

    .line 3001
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .line 3002
    .local v0, ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3003
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 3004
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3014
    .end local v0           #ssidimei:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 3006
    :cond_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    if-ne v1, v2, :cond_0

    .line 3007
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mFirstCustomizeSSID_NAME:Z

    .line 3008
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCustomizedSsid()Ljava/lang/String;

    move-result-object v0

    .line 3009
    .restart local v0       #ssidimei:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3010
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 3011
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hotspot_ssid"

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 2843
    const v0, 0x2003a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2844
    return-void
.end method

.method clearWepErrorNotification()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1790
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1791
    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateMachine;->setWepErrorNotificationVisible(Z)V

    .line 1792
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIndicateWepError:Z

    .line 1793
    const-string v0, "clear WEP_ERROR icon"

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1795
    :cond_0
    return-void
.end method

.method public connectNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 2847
    const v0, 0x20056

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2848
    return-void
.end method

.method public connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "wifiConfig"

    .prologue
    .line 2855
    const v0, 0x20056

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2857
    return-void
.end method

.method public cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;
    .locals 3
    .parameter "detailedState"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 5003
    monitor-enter p0

    .line 5004
    :try_start_0
    new-instance v0, Landroid/net/NetworkInfo;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-direct {v0, v1}, Landroid/net/NetworkInfo;-><init>(Landroid/net/NetworkInfo;)V

    .line 5005
    .local v0, netInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_0

    .line 5006
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] can not get networkInfo*********,the networkIfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5007
    const/4 v0, 0x0

    monitor-exit p0

    .line 5010
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return-object v0

    .line 5009
    .restart local v0       #netInfo:Landroid/net/NetworkInfo;
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5010
    monitor-exit p0

    goto :goto_0

    .line 5011
    .end local v0           #netInfo:Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disableNetwork(Landroid/os/Messenger;II)V
    .locals 2
    .parameter "replyTo"
    .parameter "netId"
    .parameter "reason"

    .prologue
    .line 2906
    const v1, 0x20038

    invoke-virtual {p0, v1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2907
    .local v0, message:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2908
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2909
    return-void
.end method

.method public disconnectCommand()V
    .locals 1

    .prologue
    .line 2754
    const v0, 0x2004a

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2755
    return-void
.end method

.method public enableAllNetworks()V
    .locals 1

    .prologue
    .line 3028
    const v0, 0x20037

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3029
    return-void
.end method

.method public enableBackgroundScanCommand(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 3024
    const v2, 0x2005b

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3025
    return-void

    :cond_0
    move v0, v1

    .line 3024
    goto :goto_0
.end method

.method public enableFakeScanResult(Z)Z
    .locals 1
    .parameter "enableFake"

    .prologue
    .line 2932
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mEnableFakeScanresult:Z

    .line 2933
    const/4 v0, 0x1

    return v0
.end method

.method public enableRssiPolling(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 3020
    const v2, 0x20052

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3021
    return-void

    :cond_0
    move v0, v1

    .line 3020
    goto :goto_0
.end method

.method public forceUpdateRSSI()V
    .locals 1

    .prologue
    .line 3198
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    .line 3199
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->fetchRssiAndLinkSpeedNative()V

    .line 3200
    return-void
.end method

.method public forgetNetwork(I)V
    .locals 2
    .parameter "netId"

    .prologue
    .line 2864
    const v0, 0x20058

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2865
    return-void
.end method

.method public getAssocListStr()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1387
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 1395
    :goto_0
    return-object v0

    .line 1390
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getAssocList()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, assoclist:Ljava/lang/String;
    goto :goto_0

    .line 1391
    .end local v0           #assoclist:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1392
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getAssocListStr(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getClientInfo()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1368
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_0

    .line 1379
    :goto_0
    return-object v0

    .line 1372
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->getLeasesList()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1378
    .local v0, clientinfo:Ljava/lang/String;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clientInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1373
    .end local v0           #clientinfo:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1374
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to getClientInfo() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3262
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizedPassword()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2945
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-eqz v3, :cond_4

    .line 2947
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 2949
    .local v1, mTelephonyManager:Landroid/telephony/TelephonyManager;
    const/4 v2, 0x0

    .line 2950
    .local v2, mdn:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    .line 2951
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    .line 2952
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedPassword mdn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 2955
    .restart local v1       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v2       #mdn:Ljava/lang/String;
    :cond_1
    if-nez v2, :cond_3

    const-string v3, "WifiStateMachine"

    const-string v4, "getCustomizedPassword mdn is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :cond_2
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2956
    .restart local v1       #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .restart local v2       #mdn:Ljava/lang/String;
    :cond_3
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedPassword mdn length is not 10: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2958
    .end local v1           #mTelephonyManager:Landroid/telephony/TelephonyManager;
    .end local v2           #mdn:Ljava/lang/String;
    :cond_4
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-eqz v3, :cond_2

    .line 2959
    const-string/jumbo v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2960
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_2

    move-object v2, v0

    .line 2961
    goto :goto_0
.end method

.method public getCustomizedSsid()Ljava/lang/String;
    .locals 6

    .prologue
    .line 2968
    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiSsid:Z

    if-eqz v3, :cond_1

    .line 2969
    const-string/jumbo v3, "ro.gsm.imei"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2970
    .local v0, imei:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xf

    if-ne v3, v4, :cond_1

    .line 2971
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x9b

    if-ne v3, v4, :cond_0

    .line 2972
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2973
    .local v1, imei2:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    .end local v0           #imei:Ljava/lang/String;
    .end local v1           #imei2:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 2975
    .restart local v0       #imei:Ljava/lang/String;
    :cond_0
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v4, 0x40

    if-ne v3, v4, :cond_1

    .line 2976
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x4

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2977
    .local v2, imei4:Ljava/lang/String;
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizedSsid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 2978
    goto :goto_0

    .line 2982
    .end local v0           #imei:Ljava/lang/String;
    .end local v2           #imei4:Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCwRegisterCapability()Z
    .locals 1

    .prologue
    .line 4984
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    return v0
.end method

.method public getCwRegisterState()Z
    .locals 1

    .prologue
    .line 3396
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    return v0
.end method

.method public getDongleScanList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2261
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDongleScanList:Ljava/util/List;

    return-object v0
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFrequencyBand:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1345
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMacAddress()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 1833
    monitor-enter p0

    const/4 v1, 0x0

    .line 1838
    .local v1, bufferReader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/calibration"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1839
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .local v2, bufferReader:Ljava/io/BufferedReader;
    if-nez v2, :cond_1

    .line 1896
    if-eqz v2, :cond_0

    .line 1897
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 1901
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 1903
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    monitor-exit p0

    return-object v9

    .line 1841
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .line 1842
    .local v8, line:Ljava/lang/String;
    :goto_1
    if-eqz v8, :cond_2

    const-string/jumbo v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1843
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 1850
    :cond_2
    if-eqz v8, :cond_4

    const-string/jumbo v10, "macaddr"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1851
    const-string v10, "="

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_8

    move-result v6

    .line 1853
    .local v6, index:I
    if-gez v6, :cond_3

    .line 1855
    const/4 v9, 0x0

    .line 1896
    .end local v6           #index:I
    .local v9, tmpMac:Ljava/lang/String;
    :goto_2
    if-eqz v2, :cond_0

    .line 1897
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1898
    :catch_0
    move-exception v10

    goto :goto_0

    .line 1857
    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v6       #index:I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 1858
    :try_start_4
    invoke-virtual {v8, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto :goto_2

    .line 1863
    .end local v6           #index:I
    .end local v9           #tmpMac:Ljava/lang/String;
    :cond_4
    const/16 v10, 0x20

    new-array v0, v10, [B

    .line 1865
    .local v0, buffer:[B
    new-instance v4, Ljava/io/File;

    const-string v10, "/proc/calibration"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1866
    .local v4, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 1868
    .local v5, in:Ljava/io/FileInputStream;
    if-nez v4, :cond_5

    .line 1869
    const-string v10, "WifiStateMachine"

    const-string v11, "TI Open /proc/calibration fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 1896
    if-eqz v2, :cond_0

    .line 1897
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 1898
    :catch_1
    move-exception v10

    goto :goto_0

    .line 1873
    :cond_5
    :try_start_6
    new-instance v5, Ljava/io/FileInputStream;

    .end local v5           #in:Ljava/io/FileInputStream;
    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1874
    .restart local v5       #in:Ljava/io/FileInputStream;
    if-nez v5, :cond_6

    .line 1875
    const-string v10, "WifiStateMachine"

    const-string v11, "TI new FileInputStream fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 1896
    if-eqz v2, :cond_0

    .line 1897
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    .line 1898
    :catch_2
    move-exception v10

    goto :goto_0

    .line 1879
    :cond_6
    const/4 v10, 0x0

    const/16 v11, 0xf

    :try_start_8
    invoke-virtual {v5, v0, v10, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v7

    .line 1880
    .local v7, length:I
    const/4 v10, -0x1

    if-ne v7, v10, :cond_7

    .line 1881
    const-string v10, "WifiStateMachine"

    const-string v11, "TI read file fail, return MAC = NULL"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8

    .line 1896
    if-eqz v2, :cond_0

    .line 1897
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_0

    .line 1898
    :catch_3
    move-exception v10

    goto/16 :goto_0

    .line 1885
    :cond_7
    :try_start_a
    const-string v10, "%02X:%02X:%02X:%02X:%02X:%02X"

    const/4 v11, 0x6

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/16 v13, 0xb

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const/16 v13, 0xa

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const/4 v13, 0x6

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const/4 v13, 0x5

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const/4 v13, 0x4

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x5

    const/4 v13, 0x3

    aget-byte v13, v0, v13

    invoke-static {v13}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    move-result-object v9

    .restart local v9       #tmpMac:Ljava/lang/String;
    goto/16 :goto_2

    .line 1892
    .end local v0           #buffer:[B
    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .end local v4           #file:Ljava/io/File;
    .end local v5           #in:Ljava/io/FileInputStream;
    .end local v7           #length:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #tmpMac:Ljava/lang/String;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v3

    .line 1893
    .local v3, e:Ljava/io/IOException;
    :goto_3
    const/4 v9, 0x0

    .line 1896
    .restart local v9       #tmpMac:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 1897
    :try_start_b
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_0

    .line 1898
    :catch_5
    move-exception v10

    goto/16 :goto_0

    .line 1895
    .end local v3           #e:Ljava/io/IOException;
    .end local v9           #tmpMac:Ljava/lang/String;
    :catchall_0
    move-exception v10

    .line 1896
    :goto_4
    if-eqz v1, :cond_8

    .line 1897
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1901
    :cond_8
    :goto_5
    const/4 v1, 0x0

    .line 1895
    :try_start_d
    throw v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 1833
    :catchall_1
    move-exception v10

    :goto_6
    monitor-exit p0

    throw v10

    .line 1898
    :catch_6
    move-exception v11

    goto :goto_5

    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_7
    move-exception v10

    goto/16 :goto_0

    .line 1895
    :catchall_2
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_4

    .line 1892
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catch_8
    move-exception v3

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_3

    .line 1833
    .end local v1           #bufferReader:Ljava/io/BufferedReader;
    .restart local v2       #bufferReader:Ljava/io/BufferedReader;
    :catchall_3
    move-exception v10

    move-object v1, v2

    .end local v2           #bufferReader:Ljava/io/BufferedReader;
    .restart local v1       #bufferReader:Ljava/io/BufferedReader;
    goto :goto_6
.end method

.method public getMobileDataSettingEnabled()Z
    .locals 2

    .prologue
    .line 3300
    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3303
    :goto_0
    return v1

    .line 3302
    :catch_0
    move-exception v0

    .line 3303
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMostPreferredNetwork()I
    .locals 10

    .prologue
    const/4 v5, -0x1

    const/4 v9, 0x0

    .line 5545
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v4

    .line 5547
    .local v4, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    const-string/jumbo v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5548
    .local v1, mostPreferredSsid:Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.cw.security"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5549
    .local v2, mostPreferredSsidSecurity:Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5550
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v0, v6, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_7

    .line 5557
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiConfiguration;

    .line 5558
    .local v3, tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5559
    const-string v6, "WifiStateMachine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mostPreferredSsid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " security = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5560
    const-string/jumbo v6, "open"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5561
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-nez v6, :cond_6

    .line 5563
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[open] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5593
    .end local v0           #i:I
    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :goto_1
    return v0

    :cond_0
    move v0, v5

    .line 5553
    goto :goto_1

    .line 5567
    .restart local v0       #i:I
    .restart local v3       #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_1
    const-string/jumbo v6, "wep"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 5568
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v6, v6, v9

    if-eqz v6, :cond_6

    .line 5570
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wep] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5574
    :cond_2
    const-string/jumbo v6, "wpapsk"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 5575
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5576
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[wpapsk] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5580
    :cond_3
    const-string v6, "eap"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 5581
    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 5583
    :cond_4
    const-string v5, "WifiStateMachine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[[eap] mostPreferredNetworkID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5588
    :cond_5
    const-string v6, "WifiStateMachine"

    const-string/jumbo v7, "no matched mostPreferredNetworkSecurity this time"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5556
    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_0

    .line 5592
    .end local v3           #tmpWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const-string v6, "WifiStateMachine"

    const-string/jumbo v7, "no matched mostPreferredNetworkSsid"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 5593
    goto/16 :goto_1
.end method

.method public getPendingRequestedList()Ljava/lang/String;
    .locals 13

    .prologue
    const/16 v12, 0x10

    .line 1456
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v9, ""

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1457
    .local v8, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1459
    .local v6, recentTime:J
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 1460
    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const/4 v9, 0x0

    .line 1500
    :goto_0
    return-object v9

    .line 1464
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 1465
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v4

    .line 1466
    .local v4, mac:Ljava/lang/String;
    if-nez v4, :cond_2

    .line 1467
    const-string v9, "WifiStateMachine"

    const-string v10, "getPendingRequestedList should not go here"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    .end local v4           #mac:Ljava/lang/String;
    :cond_1
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList return: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1470
    .restart local v4       #mac:Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1472
    const/4 v5, 0x1

    .line 1474
    .local v5, pendingRequest:Z
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v9}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v9

    sub-long v0, v6, v9

    .line 1475
    .local v0, diffTime:J
    const-string v9, "WifiStateMachine"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getPendingRequestedList mac: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " diffTime: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    const-wide/32 v9, 0x1d4c0

    cmp-long v9, v0, v9

    if-lez v9, :cond_3

    .line 1477
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1478
    add-int/lit8 v2, v2, -0x1

    .line 1479
    const/4 v5, 0x0

    .line 1482
    :cond_3
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v12, :cond_5

    if-eqz v5, :cond_5

    .line 1483
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_4

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->whitelist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1485
    const/4 v5, 0x0

    .line 1482
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1488
    :cond_5
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_7

    if-eqz v5, :cond_7

    .line 1489
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v9}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v9

    iget-object v9, v9, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->blocklist:[Ljava/lang/String;

    aget-object v9, v9, v3

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1491
    const/4 v5, 0x0

    .line 1488
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1494
    :cond_7
    if-eqz v5, :cond_8

    .line 1495
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1464
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1
.end method

.method public getRequestedList()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1399
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1400
    .local v6, requestedlist:Ljava/lang/StringBuffer;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1402
    .local v4, recentTime:J
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v7, :cond_0

    .line 1403
    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v7, 0x0

    .line 1424
    :goto_0
    return-object v7

    .line 1407
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_3

    .line 1408
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v3

    .line 1409
    .local v3, mac:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1410
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v7

    sub-long v0, v4, v7

    .line 1411
    .local v0, diffTime:J
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList mac: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " diffTime: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    const-wide/32 v7, 0x1d4c0

    cmp-long v7, v0, v7

    if-lez v7, :cond_1

    .line 1413
    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1414
    add-int/lit8 v2, v2, -0x1

    .line 1416
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1407
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1418
    .end local v0           #diffTime:J
    :cond_2
    const-string v7, "WifiStateMachine"

    const-string v8, "getRequestedList should not go here"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    .end local v3           #mac:Ljava/lang/String;
    :cond_3
    const-string v7, "WifiStateMachine"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getRequestedList return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1424
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    .line 2201
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTetheringDhcpRange()[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 2134
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v3, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2135
    .local v3, startingIP:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 2136
    .local v1, dhcpSubnetMask:Ljava/lang/String;
    if-eqz v3, :cond_0

    if-eqz v1, :cond_0

    .line 2138
    const/4 v4, 0x2

    :try_start_0
    new-array v0, v4, [Ljava/lang/String;

    .line 2139
    .local v0, dhcpRange:[Ljava/lang/String;
    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 2140
    const/4 v4, 0x1

    invoke-static {v3, v1}, Landroid/net/wifi/WifiStateMachine;->findEndIP(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 2141
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTetheringDhcpRange dhcpRange[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dhcpRange[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2147
    .end local v0           #dhcpRange:[Ljava/lang/String;
    :goto_0
    return-object v0

    .line 2143
    :catch_0
    move-exception v2

    .line 2144
    .local v2, e:Ljava/lang/Exception;
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_0

    .line 2147
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    new-array v0, v7, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getWifiApClients()I
    .locals 1

    .prologue
    .line 1383
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mUser:I

    return v0
.end method

.method public declared-synchronized getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1266
    monitor-enter p0

    :try_start_0
    const-string v0, "WifiStateMachine"

    const-string v1, "getWifiApConfiguration enter"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1267
    const-string/jumbo v0, "wifi hotspot"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 1268
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1266
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiDisplayApConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 1436
    monitor-enter p0

    :try_start_0
    const-string/jumbo v0, "wifiDisplay hotspot"

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 1437
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 1436
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifidisplayApEnabled()Z
    .locals 3

    .prologue
    .line 2465
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: getWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2466
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    return v0
.end method

.method public getpersistWifiOffloadEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 3288
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 3290
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string/jumbo v3, "wifi_offload_enabled"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-ne v3, v2, :cond_0

    .line 3294
    :goto_0
    return v2

    .line 3290
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 3291
    :catch_0
    move-exception v1

    .line 3292
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v3, "wifi_offload_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3293
    const-string v3, "WifiStateMachine"

    const-string v4, "WifiOffload: init WIFI_OFFLOAD_ENABLED to 1 in getpersistWifiOffloadEnabled"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method handlePostDhcpSetup()V
    .locals 3

    .prologue
    .line 4599
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4600
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePostDhcpSetup release wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4601
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 4603
    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4604
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePostDhcpSetup PoerMode is active"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4605
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4607
    :cond_1
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePostDhcpSetup setPowerModeCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4609
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 4612
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 4614
    return-void
.end method

.method handlePreDhcpSetup()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4555
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4556
    const-string v0, "WifiStateMachine"

    const-string v1, "handlePreDhcpSetup Held wake lock during DHCP"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4557
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v1, 0xea60

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 4561
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mBluetoothConnectionActive:Z

    if-nez v0, :cond_1

    .line 4579
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z

    .line 4583
    :cond_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4584
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handlePreDhcpSetup getPowerModeCommand:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4585
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-gez v0, :cond_2

    .line 4588
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    .line 4590
    :cond_2
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mPowerMode:I

    if-eq v0, v3, :cond_3

    .line 4591
    invoke-static {v3}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z

    .line 4593
    :cond_3
    return-void
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    .line 3464
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mHaveIpAddress:Z

    return v0
.end method

.method public htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .parameter "info"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5097
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    .line 5099
    .local v1, state:Landroid/net/NetworkInfo$DetailedState;
    sget-boolean v4, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    if-eqz v4, :cond_0

    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDetailed state, old ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and new state="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5100
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v4

    if-eq p2, v4, :cond_4

    .line 5101
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_2

    move v2, v3

    .line 5102
    .local v2, wasConnecting:Z
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    .line 5108
    .local v0, lastReason:Ljava/lang/String;
    if-eqz v2, :cond_3

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v1, v4, :cond_3

    if-nez p2, :cond_3

    if-eqz v0, :cond_3

    .line 5110
    move-object p2, v0

    .line 5111
    :cond_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4, v1, p2, p3}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    .line 5121
    .end local v0           #lastReason:Ljava/lang/String;
    .end local v2           #wasConnecting:Z
    :cond_4
    return v2
.end method

.method public increseCwRetryCounter()I
    .locals 2

    .prologue
    .line 3422
    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3423
    .local v0, currentValue:I
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3424
    return v0
.end method

.method public isConnectionCompleted()Z
    .locals 2

    .prologue
    .line 3456
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSsdpFilterRuleEnabled()Z
    .locals 1

    .prologue
    .line 3115
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    return v0
.end method

.method public notifyAssocListChange()V
    .locals 1

    .prologue
    .line 1337
    const v0, 0x2007c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 1338
    return-void
.end method

.method public notifyConnectionRequest(Ljava/lang/String;)V
    .locals 1
    .parameter "mac"

    .prologue
    .line 1333
    const v0, 0x2007b

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1334
    return-void
.end method

.method public notifyEapNotification(Ljava/lang/String;)V
    .locals 1
    .parameter "MsgDetail"

    .prologue
    .line 4939
    const v0, 0x20021

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 4940
    return-void
.end method

.method public notifyGetAirPlaneMode()V
    .locals 1

    .prologue
    .line 4935
    const v0, 0x20020

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 4936
    return-void
.end method

.method public notifyL2peFail()V
    .locals 1

    .prologue
    .line 2901
    const v0, 0x20067

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2902
    return-void
.end method

.method public notifyL2peSuccessful()V
    .locals 1

    .prologue
    .line 2897
    const v0, 0x20066

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2898
    return-void
.end method

.method public declared-synchronized notifyPhoneCallStatus(I)Z
    .locals 4
    .parameter "phoneStatus"

    .prologue
    .line 3171
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 3172
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyPhoneCallStatus: wifistate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3173
    const/4 v0, 0x0

    .line 3176
    :goto_0
    monitor-exit p0

    return v0

    .line 3175
    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->notifyPhoneCallStatus(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 3176
    .local v0, bRtn:Z
    goto :goto_0

    .line 3171
    .end local v0           #bRtn:Z
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public notifyWpsRegistrarFail()V
    .locals 1

    .prologue
    .line 2892
    const v0, 0x20065

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2893
    return-void
.end method

.method public notifyWpsRegistrarStart()V
    .locals 1

    .prologue
    .line 2884
    const v0, 0x20063

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2885
    return-void
.end method

.method public notifyWpsRegistrarSuccessful()V
    .locals 1

    .prologue
    .line 2888
    const v0, 0x20064

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2889
    return-void
.end method

.method public printProfile(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "tag"
    .parameter "profile"

    .prologue
    .line 2083
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "hiddenSSID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", secureType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enableMacFilter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxConns="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2090
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "dhcpEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxDhcpClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ipAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhcpSubnetMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startingIP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dhsIPAddr1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr1:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", dnsIPAddr2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dnsIPAddr2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sleepPolicy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    return-void
.end method

.method public reassociateCommand()V
    .locals 1

    .prologue
    .line 2768
    const v0, 0x2004c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2769
    return-void
.end method

.method public reconnectCommand()V
    .locals 1

    .prologue
    .line 2761
    const v0, 0x2004b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2762
    return-void
.end method

.method public resetCwRetryCounter()V
    .locals 1

    .prologue
    .line 3427
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mCwRetryCounter:I

    .line 3428
    return-void
.end method

.method public resetDhcpConfig()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1350
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput v2, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 1351
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_dhcp_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1354
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    sget-object v1, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 1355
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_dhcp_start_ip"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1358
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.1.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1359
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_id_address"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1362
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1363
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hotspot_subnet_mask"

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1364
    return-void
.end method

.method public resetWifiDisplayDhcpConfig()V
    .locals 5

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x0

    .line 2217
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    .line 2219
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetWifiDisplayDhcpConfig, STA IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v2, v2, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "WIFIDISPLAY_IP="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "192.168.6.10"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    iget-object v0, v0, Landroid/net/DhcpInfoInternal;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "192.168.6.10"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2221
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFi STA IP equals with WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP, use original DHCP for hotspot!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    :goto_0
    return-void

    .line 2224
    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "Use WIFIDISPLAY_HOTSPOT_DEFAULT_DHCP_STARTING_IP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.10"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2228
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "192.168.6.1"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 2230
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    const-string v1, "255.255.255.0"

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    goto :goto_0
.end method

.method public saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "wifiConfig"

    .prologue
    .line 2860
    const v0, 0x20057

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2861
    return-void
.end method

.method public sendBluetoothAdapterStateChange(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 3269
    const v0, 0x2001f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3270
    return-void
.end method

.method public declared-synchronized setAssociationManual(Z)Z
    .locals 1
    .parameter "isManual"

    .prologue
    .line 1505
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z

    .line 1506
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mAssociateManual:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 1505
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setConnectionReqNotificationVisible(Z)V
    .locals 9
    .parameter "visible"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 1798
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setConnectionReqNotificationVisible visible="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1799
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRes:Landroid/content/res/Resources;

    const-string/jumbo v4, "zzzz_stat_notify_wifi_router_in_range"

    const-string v5, "drawable"

    const-string v6, "android"

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1800
    .local v0, ICON_WIFI_AP_CLIENT_CONNECTED:I
    if-nez p1, :cond_0

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    if-nez v3, :cond_0

    .line 1825
    :goto_0
    return-void

    .line 1804
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 1807
    .local v2, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 1808
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    if-nez v3, :cond_1

    .line 1809
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.hotspot.management_wifi_client"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iput-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    .line 1814
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    .line 1816
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20401bc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1817
    .local v1, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iput-object v8, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1818
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3, v4, v8, v1, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1820
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1824
    .end local v1           #details:Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotificationShown:Z

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApNotification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->icon:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 2
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 3229
    if-eqz p2, :cond_0

    .line 3230
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_country_code"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3234
    :cond_0
    const v0, 0x20050

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3235
    return-void
.end method

.method public setCwRegisterCapability(Z)V
    .locals 0
    .parameter "capability"

    .prologue
    .line 4981
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mCwRegisterCapability:Z

    .line 4982
    return-void
.end method

.method public setCwRegisterState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3392
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    .line 3393
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mCwRegistered:Z

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setCwStateProperty(Z)V

    .line 3394
    return-void
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 5052
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v1, 0xd8

    if-ne v0, v1, :cond_1

    .line 5053
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5054
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 5056
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    .line 5057
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] DetailedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ExtranIffo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5067
    :goto_0
    return-void

    .line 5060
    :cond_0
    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mCtNetworkInfo:Landroid/net/NetworkInfo;

    .line 5061
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5065
    :cond_1
    invoke-virtual {p0, p1, v2, v2}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "state"
    .parameter "reason"
    .parameter "extraInfo"

    .prologue
    .line 5080
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->cwhtcStateUpdate(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 5081
    .local v0, mUpdatedNetworkInfo:Landroid/net/NetworkInfo;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-static {v1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5082
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->DBG_DETAIL:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDetailed state, old="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and new="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extraInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5084
    :cond_0
    const/16 v1, 0x131

    invoke-virtual {p0, v1, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 5085
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] for message error>>>>>>>>>>>>"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5092
    :cond_1
    :goto_0
    return-void

    .line 5088
    :cond_2
    invoke-virtual {p0, v0, p2, p3}, Landroid/net/wifi/WifiStateMachine;->htcSetDetailedState(Landroid/net/NetworkInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5089
    const/4 v1, 0x1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setDriverStart(ZZ)V
    .locals 3
    .parameter "enable"
    .parameter "ecm"

    .prologue
    const/4 v1, 0x0

    .line 2714
    if-eqz p1, :cond_0

    .line 2715
    const v0, 0x2000d

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2719
    :goto_0
    return-void

    .line 2717
    :cond_0
    const v2, 0x2000e

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public setFakeScanResult(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .parameter "fackScanResult"

    .prologue
    .line 2920
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setFakeScanResult"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2921
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 2923
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2924
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2925
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->level:I

    .line 2926
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mfakeresult:Landroid/net/wifi/ScanResult;

    iget v1, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v1, v0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2927
    const/4 v0, 0x1

    return v0
.end method

.method public setFrequencyBand(IZ)V
    .locals 2
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 3243
    if-eqz p2, :cond_0

    .line 3244
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_frequency_band"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 3248
    :cond_0
    const v0, 0x2005a

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3249
    return-void
.end method

.method public setHighPerfModeEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v1, 0x0

    .line 3220
    const v2, 0x2004d

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3221
    return-void

    :cond_0
    move v0, v1

    .line 3220
    goto :goto_0
.end method

.method public declared-synchronized setHotspotAutoChannel(I)V
    .locals 2
    .parameter "autoChannel"

    .prologue
    .line 3182
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    if-eq v0, p1, :cond_1

    .line 3183
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    iput p1, v0, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    .line 3184
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 3186
    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "enable hotspot again for autoChannel"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3187
    const/4 v0, 0x1

    sput-boolean v0, Landroid/net/wifi/WifiStateMachine;->mSetAutoChannel:Z

    .line 3188
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3191
    :cond_1
    monitor-exit p0

    return-void

    .line 3182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setInitialVzwStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3672
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatusFeature:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    if-nez v0, :cond_0

    .line 3673
    const-string v0, "WifiStateMachine"

    const-string v1, "VzwStatus[Initial Wifi_off]"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3674
    iput v2, p0, Landroid/net/wifi/WifiStateMachine;->mVzwWifiStatus:I

    .line 3675
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiConnected:Z

    .line 3676
    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->sendVzwStatusNotification(I)I

    .line 3678
    :cond_0
    return-void
.end method

.method public declared-synchronized setMobileNetworkType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mobileNetworkType"

    .prologue
    .line 1280
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1281
    const/4 v0, 0x0

    .line 1283
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setMobileNetworkType(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1280
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMostPreferredNetwork(I)Z
    .locals 7
    .parameter "networkId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5495
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    .line 5497
    .local v1, wifiConfigs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p1, v4, :cond_0

    .line 5498
    const-string v3, "WifiStateMachine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "networkId out of range, networkId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5535
    :goto_0
    return v2

    .line 5501
    :cond_0
    if-gez p1, :cond_1

    .line 5502
    const-string v2, "WifiStateMachine"

    const-string v4, "clear most preferred network"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    const-string/jumbo v2, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5504
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string v4, ""

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5505
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    .line 5506
    goto :goto_0

    .line 5508
    :cond_1
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] networkId is :>>>>>>>>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 5510
    .local v0, updatedwifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] setMostPreferredNetwork networkId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ssid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5512
    const-string/jumbo v4, "persist.sys.cw.ssid"

    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5513
    const-string v4, "WifiStateMachine"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[C+W] persist.sys.cw.ssid is : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.cw.ssid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5514
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5515
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v4, v2

    if-nez v2, :cond_2

    .line 5516
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "open"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 5534
    :goto_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->setPreConfigAPHigherPriority()V

    move v2, v3

    .line 5535
    goto/16 :goto_0

    .line 5519
    :cond_2
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "wep"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5522
    :cond_3
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5523
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string/jumbo v4, "wpapsk"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5525
    :cond_4
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5527
    :cond_5
    const-string/jumbo v2, "persist.sys.cw.security"

    const-string v4, "eap"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 5530
    :cond_6
    const-string v3, "WifiStateMachine"

    const-string/jumbo v4, "no matched security in setMostPreferredNetwork"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5531
    const-string/jumbo v3, "persist.sys.cw.ssid"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setMulticastEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 3063
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mMulticastEnabled:Z

    .line 3064
    return-void
.end method

.method public declared-synchronized setPowerMode(I)Z
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v0, 0x0

    .line 3148
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    .line 3163
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 3164
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPowerMode: wifistate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3167
    :cond_0
    :goto_1
    monitor-exit p0

    return v0

    .line 3150
    :pswitch_0
    :try_start_1
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 3153
    :pswitch_1
    :try_start_2
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    .line 3154
    iget v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    if-gtz v1, :cond_0

    .line 3158
    const/4 v1, 0x0

    iput v1, p0, Landroid/net/wifi/WifiStateMachine;->mPowerModeRefCount:I

    goto :goto_0

    .line 3167
    :cond_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    goto :goto_1

    .line 3148
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized setRSSItoWifiInfo()Z
    .locals 14

    .prologue
    const/16 v13, -0xc8

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2152
    monitor-enter p0

    const/4 v6, -0x1

    .line 2153
    .local v6, newRssi:I
    const/4 v5, -0x1

    .line 2156
    .local v5, newLinkSpeed:I
    :try_start_0
    iget-object v11, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v11}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_0

    iget-boolean v11, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-nez v11, :cond_1

    .line 2157
    :cond_0
    const-string v10, "WifiStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setRSSItoWifiInfo: wifistate="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "mIsRunning="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2197
    :goto_0
    monitor-exit p0

    return v9

    .line 2161
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v11

    sget-object v12, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v11, v12, :cond_2

    .line 2162
    iget-object v10, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/16 v11, -0xc8

    invoke-virtual {v10, v11}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    .line 2163
    const-string v10, "WifiStateMachine"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setRSSItoWifiInfo: NetworkDetailedState="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->getNetworkDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2152
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 2167
    :cond_2
    :try_start_2
    invoke-static {}, Landroid/net/wifi/WifiNative;->signalPoll()Ljava/lang/String;

    move-result-object v8

    .line 2169
    .local v8, signalPoll:Ljava/lang/String;
    if-eqz v8, :cond_6

    .line 2170
    const-string v9, "\n"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2171
    .local v4, lines:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    .line 2172
    .local v3, line:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2173
    .local v7, prop:[Ljava/lang/String;
    array-length v9, v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v11, 0x2

    if-ge v9, v11, :cond_4

    .line 2171
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2175
    :cond_4
    const/4 v9, 0x0

    :try_start_3
    aget-object v9, v7, v9

    const-string v11, "RSSI"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 2176
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_2

    .line 2177
    :cond_5
    const/4 v9, 0x0

    aget-object v9, v7, v9

    const-string v11, "LINKSPEED"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2178
    const/4 v9, 0x1

    aget-object v9, v7, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v5

    goto :goto_2

    .line 2186
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #line:Ljava/lang/String;
    .end local v4           #lines:[Ljava/lang/String;
    .end local v7           #prop:[Ljava/lang/String;
    :cond_6
    const/4 v9, -0x1

    if-eq v6, v9, :cond_8

    if-ge v13, v6, :cond_8

    const/16 v9, 0x100

    if-ge v6, v9, :cond_8

    .line 2190
    if-lez v6, :cond_7

    add-int/lit16 v6, v6, -0x100

    .line 2191
    :cond_7
    :try_start_4
    iget-object v9, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v9, v6}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    :goto_3
    move v9, v10

    .line 2197
    goto/16 :goto_0

    .line 2194
    :cond_8
    const-string v9, "WifiStateMachine"

    const-string/jumbo v11, "setRSSItoWifiInfo: Don\'t get new RSSI"

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 2180
    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v3       #line:Ljava/lang/String;
    .restart local v4       #lines:[Ljava/lang/String;
    .restart local v7       #prop:[Ljava/lang/String;
    :catch_0
    move-exception v9

    goto :goto_2
.end method

.method public setRSSItoWifiInfoMessage()V
    .locals 1

    .prologue
    .line 3208
    const v0, 0x20081

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 3209
    return-void
.end method

.method public setScanOnlyMode(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const v2, 0x20048

    const/4 v1, 0x0

    .line 2725
    if-eqz p1, :cond_0

    .line 2726
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2730
    :goto_0
    return-void

    .line 2728
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScanType(Z)V
    .locals 3
    .parameter "active"

    .prologue
    const v2, 0x20049

    const/4 v1, 0x0

    .line 2736
    if-eqz p1, :cond_0

    .line 2737
    const/4 v0, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2741
    :goto_0
    return-void

    .line 2739
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setScreenOn(Z)V
    .locals 3
    .parameter "isScreenOn"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3203
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsScreenOn:I

    .line 3204
    const v0, 0x2007e

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3205
    return-void

    :cond_0
    move v0, v2

    .line 3203
    goto :goto_0

    :cond_1
    move v1, v2

    .line 3204
    goto :goto_1
.end method

.method public declared-synchronized setSignalStrength(I)Z
    .locals 2
    .parameter "SignalStrength"

    .prologue
    .line 1294
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1295
    const/4 v0, 0x0

    .line 1297
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setSignalStrength(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1294
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setVHScanCommand(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1274
    const/4 v0, 0x0

    .line 1276
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setVHScanCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWepErrorNotificationVisible(Z)V
    .locals 8
    .parameter "visible"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1761
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWepErrorReqNotificationVisible visible="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V

    .line 1762
    if-nez p1, :cond_0

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    if-nez v2, :cond_0

    .line 1787
    :goto_0
    return-void

    .line 1766
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1770
    .local v1, notificationManager:Landroid/app/NotificationManager;
    if-eqz p1, :cond_2

    .line 1771
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    if-nez v2, :cond_1

    .line 1772
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    .line 1773
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const-wide/16 v3, 0x0

    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 1774
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const v3, 0x4020036

    iput v3, v2, Landroid/app/Notification;->icon:I

    .line 1775
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    const/16 v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    .line 1776
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.settings.WIFI_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v6, v4, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1779
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x2040247

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1780
    .local v0, details:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1781
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v7, v0, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1782
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    invoke-virtual {v1, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1786
    .end local v0           #details:Ljava/lang/String;
    :goto_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotificationShown:Z

    goto :goto_0

    .line 1784
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiWepErrorNotification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1
.end method

.method public declared-synchronized setWiFiSIMAuthenticationEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 985
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_EAP_AKA_flag:Z

    if-eqz v0, :cond_0

    .line 987
    if-eqz p1, :cond_1

    const-string/jumbo v0, "wlan.sim.enabled"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    :goto_0
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 991
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectSIMAuthenticationAP()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 993
    :cond_0
    monitor-exit p0

    return-void

    .line 988
    :cond_1
    :try_start_1
    const-string/jumbo v0, "wlan.sim.enabled"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifiApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, 0x1

    .line 1318
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v0, -0x1

    .line 1329
    :cond_1
    :goto_0
    return v0

    .line 1320
    :cond_2
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateMachine;->persistApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1321
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    .line 1322
    sget-boolean v1, Landroid/net/wifi/WifiStateMachine;->mNeedConfig:Z

    if-ne v1, v0, :cond_3

    .line 1323
    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiStateMachine;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1326
    :cond_3
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->checkSleepPolicy()V

    goto :goto_0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 2621
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v1, 0x20019

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 2622
    return-void
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2603
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2604
    if-eqz p2, :cond_0

    .line 2605
    const v0, 0x20001

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2606
    const v0, 0x20015

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2618
    :goto_0
    return-void

    .line 2609
    :cond_0
    sget-boolean v0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    if-eqz v0, :cond_1

    .line 2610
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setWifiApEnabled, WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 2614
    :cond_1
    const v0, 0x20018

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2616
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setWifiApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1428
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1431
    :goto_0
    return v0

    .line 1429
    :cond_1
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setWifiApMacList..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1430
    const v0, 0x2007d

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1431
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiDisplayApConfig(Landroid/net/wifi/WifiConfiguration;)I
    .locals 1
    .parameter "config"

    .prologue
    .line 1441
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1443
    :goto_0
    return v0

    .line 1442
    :cond_1
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1443
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiDisplayApMacList(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "config"

    .prologue
    .line 1447
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    .line 1451
    :goto_0
    return v0

    .line 1448
    :cond_1
    const-string v0, "WifiStateMachine"

    const-string/jumbo v1, "setWifiDisplayApMacList..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1450
    const v0, 0x20080

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 1451
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setWifiDisplayConfigure(ILjava/lang/String;)Z
    .locals 5
    .parameter "channel"
    .parameter "BSSID"

    .prologue
    .line 2374
    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateMachine;->assignDongleIP(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2375
    .local v0, dongleIP:Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2379
    .local v1, language:Ljava/lang/String;
    rem-int/lit16 v2, p1, 0x100

    if-nez v2, :cond_0

    .line 2381
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "setWifiDisplayConfigure, Auto channel in QCT projects, changed to 2.4GHz channel 6"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2382
    add-int/lit8 p1, p1, 0x6

    .line 2385
    :cond_0
    const-string v2, "WifiStateMachine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setWifiDisplayConfigure, device AP\'s channel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dongle\'s BSSID = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,IP = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", language = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2388
    invoke-static {p1, p2, v0, v1}, Landroid/net/wifi/WifiNative;->setWifiDisplayConfigure(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public setWifiDisplayUnscan(Z)Z
    .locals 4
    .parameter "disabled"

    .prologue
    const/4 v0, 0x0

    .line 2445
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 2446
    const-string v1, "WifiStateMachine"

    const-string v2, "[WFD] setWifiDisplayUnscan when WiFi is not enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2458
    :goto_0
    return v0

    .line 2450
    :cond_0
    const-string v1, "WifiStateMachine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWifiDisplayUnscan( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2451
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWifiDisplayUnscan(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2452
    const-string v1, "WifiStateMachine"

    const-string v2, "Failed to restrict scan for WFD"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2456
    :cond_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiDisplayUnscan:Z

    .line 2458
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setWifiEnabled(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v2, 0x0

    .line 2568
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2569
    if-eqz p1, :cond_0

    .line 2570
    const v0, 0x20001

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2571
    const v0, 0x2000b

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2597
    :goto_0
    return-void

    .line 2575
    :cond_0
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x31

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x32

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x23f

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x240

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x241

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x242

    if-eq v0, v1, :cond_2

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x66

    if-eq v0, v1, :cond_2

    .line 2582
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-nez v0, :cond_1

    .line 2583
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wireless_display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/service/WirelessDisplayManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    .line 2585
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0}, Lcom/htc/service/WirelessDisplayManager;->getMirrorDisplayStatus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2586
    const-string v0, "WifiStateMachine"

    const-string v1, "[WFD] Mirror Mode is ON, force to stop Mirror mode when turn off wifi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2587
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWDManager:Lcom/htc/service/WirelessDisplayManager;

    invoke-virtual {v0, v2}, Lcom/htc/service/WirelessDisplayManager;->mirrorModeStartStop(Z)Z

    .line 2593
    :cond_2
    const v0, 0x2000c

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2595
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public declared-synchronized setWifiOffloadEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    const/4 v0, 0x0

    .line 1301
    monitor-enter p0

    :try_start_0
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_WIFI_OFFLOAD_flag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1309
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 1304
    :cond_1
    :try_start_1
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiOffloadEnabled:Z

    .line 1306
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 1309
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWifiOffloadEnabledCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1301
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWifidisplayApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 9
    .parameter "wifiConfig"
    .parameter "enable"

    .prologue
    const/16 v8, 0xc

    const v7, 0x20018

    const v6, 0x20015

    const/4 v5, 0x0

    const-wide/16 v3, 0xbb8

    .line 2520
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayApEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastApEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2523
    if-eqz p2, :cond_5

    .line 2524
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2526
    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay:hotspot already ON, do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    sput-boolean p2, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2561
    :goto_0
    return-void

    .line 2532
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2533
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2534
    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 2535
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2536
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_4

    .line 2537
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2538
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2540
    :cond_4
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2541
    invoke-virtual {p0, v6, p1}, Landroid/net/wifi/WifiStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 2545
    :cond_5
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: reset AP setting to original"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->updateProfile()V

    .line 2548
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    .line 2549
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2551
    :cond_6
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 2552
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2553
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-nez v0, :cond_8

    .line 2554
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2555
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2557
    :cond_8
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2558
    const v0, 0x20002

    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public setWifidisplayEnabled(Z)V
    .locals 9
    .parameter "enable"

    .prologue
    const/4 v8, 0x2

    const v7, 0x2000c

    const v6, 0x2000b

    const/4 v5, 0x0

    const-wide/16 v3, 0xbb8

    .line 2471
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WiFiDisplay: setWifidisplayEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastEnableUid:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2474
    if-eqz p1, :cond_7

    .line 2475
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 2477
    :cond_0
    const-string v0, "WifiStateMachine"

    const-string v1, "WiFiDisplay: setWifidisplayEnabled, STA is already ON, do nothing!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2516
    :goto_0
    return-void

    .line 2481
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_3

    .line 2483
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2484
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2485
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2486
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2488
    :cond_2
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2489
    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_5

    .line 2491
    sput-boolean p1, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApEnable:Z

    .line 2492
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2493
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.hotspot.ASSOCLIST"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2495
    :cond_4
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2496
    :cond_5
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_6

    .line 2497
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2498
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_0

    .line 2500
    :cond_6
    const v0, 0x20001

    invoke-virtual {p0, v0, v8, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2501
    invoke-virtual {p0, v6}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2504
    :cond_7
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_8

    .line 2505
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 2506
    :cond_8
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_9

    .line 2507
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 2508
    :cond_9
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    .line 2509
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2510
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto/16 :goto_0

    .line 2512
    :cond_a
    invoke-virtual {p0, v7}, Landroid/net/wifi/WifiStateMachine;->sendMessage(I)V

    .line 2513
    const v0, 0x20002

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v5}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public declared-synchronized setWimaxStatus(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1287
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 1288
    const/4 v0, 0x0

    .line 1290
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWimaxStatus(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 1287
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setWirelessDisplayStarted(Z)V
    .locals 0
    .parameter "isStarted"

    .prologue
    .line 3194
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setWirelessDisplayStarted(Z)Z

    .line 3195
    return-void
.end method

.method public startDongleScan()V
    .locals 2

    .prologue
    .line 2245
    invoke-static {}, Landroid/net/wifi/WifiNative;->dongleScanCommand()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2246
    const-string v0, "WifiStateMachine"

    const-string v1, "do dongle scan failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    :goto_0
    return-void

    .line 2248
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_0
.end method

.method public startDongleSingleCscan(I)V
    .locals 3
    .parameter "channel"

    .prologue
    .line 2253
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->dongleSingleCscanCommand(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2254
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "do dongle scan at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    :goto_0
    return-void

    .line 2256
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsDongleScan:Z

    goto :goto_0
.end method

.method public startDongleWakeUp(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 2265
    const v0, 0x2006a

    invoke-virtual {p0, v0, p1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2269
    return-void
.end method

.method public startFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    .line 3035
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3036
    const v0, 0x20054

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3037
    return-void
.end method

.method public startFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 3051
    const v0, 0x20054

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3052
    return-void
.end method

.method public startPacketFiltering_arp()V
    .locals 3

    .prologue
    .line 3071
    const v0, 0x20054

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3072
    return-void
.end method

.method public startPacketFiltering_dhcpoffer()V
    .locals 3

    .prologue
    .line 3085
    const v0, 0x20054

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3086
    return-void
.end method

.method public startPacketFiltering_self()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3089
    const v0, 0x20054

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3090
    return-void
.end method

.method public startPacketFiltering_ssdp(Z)V
    .locals 3
    .parameter "force"

    .prologue
    .line 3075
    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 3076
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 3082
    :cond_1
    :goto_0
    return-void

    .line 3079
    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3080
    :cond_3
    const v0, 0x20054

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public startPacketFiltering_wivu()V
    .locals 3

    .prologue
    .line 3120
    const v0, 0x20054

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3121
    return-void
.end method

.method public startScan(Z)V
    .locals 3
    .parameter "forceActive"

    .prologue
    .line 2239
    const v1, 0x20047

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2241
    return-void

    .line 2239
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startSoftapEventLoop()V
    .locals 1

    .prologue
    .line 1314
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mSoftapMonitor:Landroid/net/hotspot/SoftapMonitor;

    invoke-virtual {v0}, Landroid/net/hotspot/SoftapMonitor;->startMonitoring()V

    .line 1315
    return-void
.end method

.method public startWps(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V
    .locals 2
    .parameter "replyTo"
    .parameter "config"

    .prologue
    .line 2912
    const v1, 0x20059

    invoke-virtual {p0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2913
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2914
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2915
    return-void
.end method

.method public startWpsRegistrar(Landroid/os/Messenger;Landroid/net/wifi/WpsInfo;)V
    .locals 2
    .parameter "replyTo"
    .parameter "config"

    .prologue
    .line 2872
    const v1, 0x20061

    invoke-virtual {p0, v1, p2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2873
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2874
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2875
    return-void
.end method

.method public stopFilteringMulticastV4Packets()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3043
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mFilteringMulticastV4Packets:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3044
    const v0, 0x20055

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3045
    return-void
.end method

.method public stopFilteringMulticastV6Packets()V
    .locals 3

    .prologue
    .line 3058
    const v0, 0x20055

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3059
    return-void
.end method

.method public stopPacketFiltering_arp()V
    .locals 3

    .prologue
    .line 3093
    const v0, 0x20055

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3094
    return-void
.end method

.method public stopPacketFiltering_dhcpoffer()V
    .locals 3

    .prologue
    .line 3107
    const v0, 0x20055

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3108
    return-void
.end method

.method public stopPacketFiltering_self()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3111
    const v0, 0x20055

    invoke-virtual {p0, v0, v1, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3112
    return-void
.end method

.method public stopPacketFiltering_ssdp(Z)V
    .locals 3
    .parameter "force"

    .prologue
    const/4 v2, 0x0

    .line 3097
    if-nez p1, :cond_0

    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->mIsSsdpFilterRuleEnabled:Z

    .line 3098
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 3104
    :cond_1
    :goto_0
    return-void

    .line 3101
    :cond_2
    if-nez p1, :cond_3

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isMulticastEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3102
    :cond_3
    const v0, 0x20055

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public stopPacketFiltering_wivu()V
    .locals 3

    .prologue
    .line 3124
    const v0, 0x20055

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 3125
    return-void
.end method

.method public stopWps(Landroid/os/Messenger;)V
    .locals 2
    .parameter "replyTo"

    .prologue
    .line 2937
    const v1, 0x2005d

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2938
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2939
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2940
    return-void
.end method

.method public stopWpsRegistrar(Landroid/os/Messenger;)V
    .locals 2
    .parameter "replyTo"

    .prologue
    .line 2878
    const v1, 0x20062

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2879
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 2880
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->sendMessage(Landroid/os/Message;)V

    .line 2881
    return-void
.end method

.method public syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "channel"
    .parameter "config"

    .prologue
    .line 2777
    const v2, 0x20034

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2778
    .local v1, resultMsg:Landroid/os/Message;
    iget v0, v1, Landroid/os/Message;->arg1:I

    .line 2779
    .local v0, result:I
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2780
    return v0
.end method

.method public syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "netId"

    .prologue
    const/4 v0, 0x0

    .line 2821
    const v2, 0x20038

    invoke-virtual {p1, v2, p2, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2823
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2824
    .local v0, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2825
    return v0
.end method

.method public syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z
    .locals 6
    .parameter "channel"
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2807
    const v5, 0x20036

    if-eqz p3, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, p2, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(III)Landroid/os/Message;

    move-result-object v1

    .line 2809
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    move v0, v3

    .line 2810
    .local v0, result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2811
    return v0

    .end local v0           #result:Z
    .end local v1           #resultMsg:Landroid/os/Message;
    :cond_0
    move v2, v4

    .line 2807
    goto :goto_0

    .restart local v1       #resultMsg:Landroid/os/Message;
    :cond_1
    move v0, v4

    .line 2809
    goto :goto_1
.end method

.method public syncGetConfiguredNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2784
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public syncGetDhcpInfo()Landroid/net/DhcpInfo;
    .locals 2

    .prologue
    .line 2705
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    monitor-enter v1

    .line 2706
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v0}, Landroid/net/DhcpInfoInternal;->makeDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 2707
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public syncGetScanResultsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2747
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mScanResults:Ljava/util/List;

    return-object v0
.end method

.method public syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 2625
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v0

    .line 2626
    .local v0, resultMsg:Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiConfiguration;

    .line 2627
    .local v1, ret:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/os/Message;->recycle()V

    .line 2628
    return-object v1
.end method

.method public syncGetWifiApState()I
    .locals 1

    .prologue
    .line 2662
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiApStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2675
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2687
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 2677
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2679
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2681
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2683
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2685
    :pswitch_4
    const-string v0, "failed"

    goto :goto_0

    .line 2675
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifiState()I
    .locals 1

    .prologue
    .line 2635
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncGetWifiStateByName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2642
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2654
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 2644
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 2646
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 2648
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 2650
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 2652
    :pswitch_4
    const-string/jumbo v0, "unknown state"

    goto :goto_0

    .line 2642
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public syncGetWifidisplayApState()I
    .locals 1

    .prologue
    .line 2667
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifidisplayApState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 2208
    const v2, 0x20033

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 2209
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2210
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2211
    return v0

    .line 2209
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z
    .locals 4
    .parameter "channel"
    .parameter "networkId"

    .prologue
    .line 2793
    const v2, 0x20035

    invoke-virtual {p1, v2, p2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(II)Landroid/os/Message;

    move-result-object v1

    .line 2794
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 2795
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 2796
    return v0

    .line 2794
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 3

    .prologue
    .line 2698
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->setRSSItoWifiInfoMessage()V

    .line 2700
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncRequestConnectionInfo mWifiInfo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2701
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z
    .locals 4
    .parameter "channel"

    .prologue
    .line 3280
    const v2, 0x2003b

    invoke-virtual {p1, v2}, Lcom/android/internal/util/AsyncChannel;->sendMessageSynchronously(I)Landroid/os/Message;

    move-result-object v1

    .line 3281
    .local v1, resultMsg:Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->arg1:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    .line 3282
    .local v0, result:Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 3283
    return v0

    .line 3281
    .end local v0           #result:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 3350
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3351
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3352
    .local v0, LS:Ljava/lang/String;
    const-string v2, "current HSM state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3353
    const-string/jumbo v2, "mLinkProperties "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3354
    const-string/jumbo v2, "mWifiInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3355
    const-string/jumbo v2, "mDhcpInfoInternal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mDhcpInfoInternal:Landroid/net/DhcpInfoInternal;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3356
    const-string/jumbo v2, "mNetworkInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3357
    const-string/jumbo v2, "mLastSignalLevel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastSignalLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3358
    const-string/jumbo v2, "mLastBssid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3359
    const-string/jumbo v2, "mLastNetworkId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3360
    const-string/jumbo v2, "mReconnectCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/WifiStateMachine;->mReconnectCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3361
    const-string/jumbo v2, "mIsScanMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateMachine;->mIsScanMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3362
    const-string v2, "Supplicant status"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3365
    invoke-static {}, Landroid/net/wifi/WifiConfigStore;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3366
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public tryToStartCWRegister()V
    .locals 3

    .prologue
    .line 5127
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] call in the tryToStartCWRegister++"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5128
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5129
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 5130
    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    .line 5136
    :goto_0
    return-void

    .line 5132
    :cond_0
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] call in the tryToStartCWRegister++but not run isCT_CDMA_WIFI_SSID is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isConnectionCompleted is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "getCwRegisterState is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public tryToTriggerCWReregister()V
    .locals 2

    .prologue
    .line 3432
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3433
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegister(J)V

    .line 3436
    :cond_0
    return-void
.end method

.method public tryToTriggerCWReregisterExpire()V
    .locals 3

    .prologue
    .line 3439
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->isCT_CDMA_WIFI_SSID()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->isConnectionCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->hasIpAddress()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3440
    const-string v0, "WifiStateMachine"

    const-string v1, "[C+W] trigger re-register"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateMachine;->triggerCWRegisterExpire(J)V

    .line 3444
    :cond_0
    const-string v0, "WifiStateMachine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[C+W] set IsCwRegisterByUser: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to false"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3445
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->IsCwRegisterByUser:Z

    .line 3447
    return-void
.end method

.method public tryTostartCWDeRegister()V
    .locals 3

    .prologue
    .line 3402
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] call in tryTostartCWDeRegister"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_1

    .line 3418
    :cond_0
    :goto_0
    return-void

    .line 3406
    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateMachine;->triggerCWDeRegister()V

    .line 3408
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 3410
    const-wide/16 v1, 0x1f4

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3413
    :goto_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getCwRegisterState()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3414
    const-string v1, "WifiStateMachine"

    const-string v2, "[C+W] got de-register"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3408
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3411
    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method public updateBatteryWorkSource(Landroid/os/WorkSource;)V
    .locals 4
    .parameter "newSource"

    .prologue
    .line 3309
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    monitor-enter v1

    .line 3311
    if-eqz p1, :cond_0

    .line 3312
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 3314
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mIsRunning:Z

    if-eqz v0, :cond_3

    .line 3315
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_2

    .line 3318
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3319
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 3321
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 3337
    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3339
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_DHCP:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3340
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mWakeLock_IPv6:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3341
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mPerfWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3345
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3346
    return-void

    .line 3325
    :cond_2
    :try_start_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 3326
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v2}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    .line 3327
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    goto :goto_0

    .line 3343
    :catch_0
    move-exception v0

    goto :goto_1

    .line 3330
    :cond_3
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z

    if-eqz v0, :cond_1

    .line 3332
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 3333
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    .line 3334
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine;->mReportedRunning:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3345
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public updateConnectionList(Ljava/lang/String;J)V
    .locals 3
    .parameter "mac"
    .parameter "time"

    .prologue
    .line 2101
    const-string v1, "WifiStateMachine"

    const-string/jumbo v2, "updateConnection List "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    const/4 v0, 0x0

    .line 2103
    .local v0, client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_0

    if-eqz p1, :cond_0

    .line 2104
    new-instance v0, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    .end local v0           #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;-><init>(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;J)V

    .line 2106
    .restart local v0       #client:Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;
    :cond_0
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateMachine;->updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V

    .line 2107
    return-void
.end method

.method public updateConnectionReq(Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;)V
    .locals 5
    .parameter "client"

    .prologue
    .line 2111
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "update connection Req"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2112
    if-nez p1, :cond_1

    .line 2130
    :cond_0
    :goto_0
    return-void

    .line 2114
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    if-nez v2, :cond_2

    .line 2115
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    .line 2118
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 2119
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 2120
    .local v1, mac:Ljava/lang/String;
    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2122
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;

    invoke-virtual {p1}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/WifiStateMachine$ReqConnectionClient;->setLastestReqTime(J)V

    goto :goto_0

    .line 2118
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2126
    .end local v1           #mac:Ljava/lang/String;
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    .line 2127
    const-string v2, "WifiStateMachine"

    const-string/jumbo v3, "update connection Req add client"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine;->mReqConnList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public updateProfile()V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1908
    const-string v4, "WifiStateMachine"

    const-string v7, "WIFIAP:updateProfile"

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1910
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->SSID:Ljava/lang/String;

    .line 1914
    :try_start_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "hotspot_hidden"

    invoke-static {v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v5

    :goto_0
    iput-boolean v4, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1920
    :goto_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_security_type"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1922
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 1923
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v7, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_SECURITY_TYPE:Ljava/lang/String;

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    .line 1924
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hotspot_security_type"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->secureType:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1928
    :cond_0
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_password"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1930
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    if-nez v4, :cond_3

    .line 1932
    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableImeiPassword:Z

    if-nez v4, :cond_3

    iget-boolean v4, p0, Landroid/net/wifi/WifiStateMachine;->mEnableMdnPassword:Z

    if-nez v4, :cond_3

    .line 1933
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v7, "1234567890"

    iput-object v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1935
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine;->getMacAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateMachine;->getRandomKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1936
    .local v2, randomKey:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v7, 0xd

    if-ne v4, v7, :cond_2

    .line 1937
    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/4 v7, 0x2

    if-ne v4, v7, :cond_1

    .line 1938
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1940
    :cond_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-object v2, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    .line 1942
    :cond_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "hotspot_password"

    iget-object v8, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v8

    iget-object v8, v8, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->key:Ljava/lang/String;

    invoke-static {v4, v7, v8}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1949
    .end local v2           #randomKey:Ljava/lang/String;
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_macfilter_on"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1956
    :goto_2
    :try_start_2
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_max_connection"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1963
    :goto_3
    :try_start_3
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_connection_array"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I
    :try_end_3
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1970
    :goto_4
    :try_start_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hotspot_channel"

    invoke-static {v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I
    :try_end_4
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    .line 1977
    :goto_5
    :try_start_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_on"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I
    :try_end_5
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    .line 1984
    :goto_6
    :try_start_6
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_max_connection"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I
    :try_end_6
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 1990
    :goto_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_id_address"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1991
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    if-nez v4, :cond_4

    .line 1992
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "192.168.1.1"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    .line 1993
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_id_address"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->ipAddress:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1996
    :cond_4
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_subnet_mask"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1997
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 1998
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const-string v6, "255.255.255.0"

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    .line 1999
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_subnet_mask"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpSubnetMask:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2002
    :cond_5
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_dhcp_start_ip"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2003
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 2004
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    sget-object v6, Landroid/net/hotspot/HotspotManager;->HOTSPOT_DEFAULT_DHCP_STARTING_IP:Ljava/lang/String;

    iput-object v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    .line 2005
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "hotspot_dhcp_start_ip"

    iget-object v7, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v7

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->startingIP:Ljava/lang/String;

    invoke-static {v4, v6, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2018
    :cond_6
    :try_start_7
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "hotspot_sleep_policy"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I
    :try_end_7
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 2022
    :goto_8
    iput-boolean v5, p0, Landroid/net/wifi/WifiStateMachine;->mResetWifiApSleepPolicy:Z

    .line 2024
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_white_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2025
    .local v3, whiteListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v3, v4}, Landroid/net/wifi/WifiStateMachine;->updateWhiteList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 2026
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "hotspot_black_list"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2027
    .local v0, blockListStr:Ljava/lang/String;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p0, v0, v4}, Landroid/net/wifi/WifiStateMachine;->updateBlackList(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;)V

    .line 2028
    return-void

    .end local v0           #blockListStr:Ljava/lang/String;
    .end local v3           #whiteListStr:Ljava/lang/String;
    :cond_7
    move v4, v6

    .line 1914
    goto/16 :goto_0

    .line 1915
    :catch_0
    move-exception v1

    .line 1916
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput-boolean v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->hiddenSSID:Z

    goto/16 :goto_1

    .line 1950
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v1

    .line 1951
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->enableMacFilter:I

    goto/16 :goto_2

    .line 1957
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_2
    move-exception v1

    .line 1958
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    const/4 v7, 0x5

    iput v7, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    goto/16 :goto_3

    .line 1964
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_3
    move-exception v1

    .line 1965
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v9, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->connectionArray:I

    goto/16 :goto_4

    .line 1971
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_4
    move-exception v1

    .line 1972
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->channel:I

    goto/16 :goto_5

    .line 1978
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_5
    move-exception v1

    .line 1979
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->dhcpEnable:I

    goto/16 :goto_6

    .line 1985
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_6
    move-exception v1

    .line 1986
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v6

    iget v6, v6, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxConns:I

    iput v6, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->maxDhcpClients:I

    goto/16 :goto_7

    .line 2019
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_7
    move-exception v1

    .line 2020
    .restart local v1       #e:Landroid/provider/Settings$SettingNotFoundException;
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getWifiApProfile()Landroid/net/wifi/WifiConfiguration$HotspotProfile;

    move-result-object v4

    iput v5, v4, Landroid/net/wifi/WifiConfiguration$HotspotProfile;->sleepPolicy:I

    goto/16 :goto_8
.end method
