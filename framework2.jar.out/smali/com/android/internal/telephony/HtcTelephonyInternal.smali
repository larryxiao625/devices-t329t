.class public Lcom/android/internal/telephony/HtcTelephonyInternal;
.super Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;
.source "HtcTelephonyInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/HtcTelephonyInternal$1;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;,
        Lcom/android/internal/telephony/HtcTelephonyInternal$ECaveResult;
    }
.end annotation


# static fields
.field private static final CMD_CLOSE_CHANNEL:I = 0x81

.field private static final CMD_EXCHANGE_APDU:I = 0x7d

.field private static final CMD_GET_CDMAMIN:I = 0xcd

.field private static final CMD_GET_ICCSN:I = 0xce

.field private static final CMD_GET_IMEI:I = 0xc8

.field private static final CMD_GET_IMEISV:I = 0xc9

.field private static final CMD_GET_MEID:I = 0xca

.field private static final CMD_GET_PRI:I = 0xcb

.field private static final CMD_GET_PRL:I = 0xcc

.field private static final CMD_HTC_CW_QUERY_CAVE:I = 0x66

.field private static final CMD_HTC_CW_QUERY_CAVE_RESULT:I = 0x67

.field private static final CMD_HTC_CW_QUERY_MD5:I = 0x6a

.field private static final CMD_HTC_CW_QUERY_MD5_RESULT:I = 0x6b

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE:I = 0x72

.field private static final CMD_HTC_CW_QUERY_SSD_UPDATE_RESULT:I = 0x73

.field private static final CMD_HTC_CW_QUERY_UIMAUTH:I = 0x76

.field private static final CMD_HTC_CW_QUERY_UIMAUTH_RESULT:I = 0x77

.field private static final CMD_HTC_CW_QUERY_VPM:I = 0x6e

.field private static final CMD_HTC_CW_QUERY_VPM_RESULT:I = 0x6f

.field private static final CMD_HTC_CW_REQUEST_CAVE:I = 0x64

.field private static final CMD_HTC_CW_REQUEST_CAVE_RESULT:I = 0x65

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES:I = 0x7b

.field private static final CMD_HTC_CW_REQUEST_GET_PCSCF_ADDRESSES_RESULT:I = 0x7c

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE:I = 0x78

.field private static final CMD_HTC_CW_REQUEST_GET_VOLTE_SIP_REG_FAILURE_RESULT:I = 0x79

.field private static final CMD_HTC_CW_REQUEST_MD5:I = 0x68

.field private static final CMD_HTC_CW_REQUEST_MD5_RESULT:I = 0x69

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE:I = 0x70

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM:I = 0x74

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_CONFIRM_RESULT:I = 0x75

.field private static final CMD_HTC_CW_REQUEST_SSD_UPDATE_RESULT:I = 0x71

.field private static final CMD_HTC_CW_REQUEST_VPM:I = 0x6c

.field private static final CMD_HTC_CW_REQUEST_VPM_RESULT:I = 0x6d

.field private static final CMD_HTC_GET_CDMA_ERI_CALL_GUARD:I = 0x6b8

.field private static final CMD_HTC_GET_SECTOR_ID:I = 0x83

.field private static final CMD_HTC_GET_SECTOR_ID_DONE:I = 0x84

.field private static final CMD_HTC_PERMANENT_DETACH_LTE:I = 0x88

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_DONE:I = 0x8b

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP2:I = 0x89

.field private static final CMD_HTC_PERMANENT_DETACH_LTE_STEP3:I = 0x8a

.field private static final CMD_HTC_REQUEST_AKA:I = 0x8c

.field private static final CMD_HTC_REQUEST_AKA_DONE:I = 0x8d

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT:I = 0x6b6

.field private static final CMD_HTC_REQUEST_CLEAR_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b7

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB:I = 0x9e

.field private static final CMD_HTC_REQUEST_CONFIG_LOC_PROCESS_DB_DONE:I = 0x9f

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP:I = 0x8e

.field private static final CMD_HTC_REQUEST_GBA_BOOTSTRAP_DONE:I = 0x8f

.field private static final CMD_HTC_REQUEST_GBA_NAF:I = 0x90

.field private static final CMD_HTC_REQUEST_GBA_NAF_DONE:I = 0x91

.field private static final CMD_HTC_REQUEST_GET_ACCT_INFOS:I = 0x6bd

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO:I = 0x6b9

.field private static final CMD_HTC_REQUEST_GET_ATR_INFO_DONE:I = 0x6ba

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS:I = 0x6b0

.field private static final CMD_HTC_REQUEST_GET_CDMA_SMART_NETWORK_STATUS_RESULT:I = 0x6b1

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT:I = 0x6b4

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_CONTENT_RESULT:I = 0x6b5

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE:I = 0x6b2

.field private static final CMD_HTC_REQUEST_GET_CDMA_SYS_RECORD_SIZE_RESULT:I = 0x6b3

.field private static final CMD_HTC_REQUEST_GET_CDMA_VOICE_CAMPED_OPERATOR:I = 0x6c2

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC:I = 0x9c

.field private static final CMD_HTC_REQUEST_GET_CURRENT_LOC_DONE:I = 0x9d

.field private static final CMD_HTC_REQUEST_GET_DESIRED_POWER_STATE:I = 0x6bc

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO:I = 0xad

.field private static final CMD_HTC_REQUEST_GET_DRX_INFO_DONE:I = 0xae

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE:I = 0x6be

.field private static final CMD_HTC_REQUEST_GET_GPS_ONE_MODE_DONE:I = 0x6bf

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE:I = 0xab

.field private static final CMD_HTC_REQUEST_GET_LTE_LAST_ERROR_CODE_RESULT:I = 0xac

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO:I = 0xb1

.field private static final CMD_HTC_REQUEST_GET_POWER_INFO_DONE:I = 0xb2

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI:I = 0xa0

.field private static final CMD_HTC_REQUEST_GET_WIMAX_NAI_DONE:I = 0xa1

.field private static final CMD_HTC_REQUEST_SEND_USER_TRIAL_FEEDBACK:I = 0x6bb

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK:I = 0x6ae

.field private static final CMD_HTC_REQUEST_SET_CDMA_SMART_NETWORK_RESULT:I = 0x6af

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB:I = 0x98

.field private static final CMD_HTC_REQUEST_SET_CLEAR_LOC_PROCESS_DB_DONE:I = 0x99

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE:I = 0x6c0

.field private static final CMD_HTC_REQUEST_SET_GPS_ONE_MODE_DONE:I = 0x6c1

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB:I = 0x9a

.field private static final CMD_HTC_REQUEST_SET_LOC_PROCESS_DB_DONE:I = 0x9b

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION:I = 0x85

.field private static final CMD_HTC_REQUEST_UICC_AUTHENTICATION_DONE:I = 0x86

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM:I = 0x92

.field private static final CMD_HTC_REQUEST_WRITE_GBA_PARAM_DONE:I = 0x93

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL:I = 0x94

.field private static final CMD_HTC_SET_PREFERRED_NETWORK_WIFI_CALL_RESULT:I = 0x95

.field private static final CMD_HTC_SIM_GSM_AUTH:I = 0xb3

.field private static final CMD_HTC_SIM_GSM_AUTH_DONE:I = 0xb4

.field private static final CMD_HTC_USIM_AKA_AUTH:I = 0xaf

.field private static final CMD_HTC_USIM_AKA_AUTH_DONE:I = 0xb0

.field private static final CMD_OPEN_CHANNEL:I = 0x7f

.field private static final CMD_SIM_IO:I = 0x96

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_CLOSE_CHANNEL_DONE:I = 0x82

.field private static final EVENT_EXCHANGE_APDU_DONE:I = 0x7e

.field private static final EVENT_OPEN_CHANNEL_DONE:I = 0x80

.field private static final EVENT_SIM_IO_DONE:I = 0x97

.field private static final HTC_CW_AUTHEN_AKACAVE_SUPPORTED:I = 0x4

.field private static final HTC_CW_AUTHEN_CAVE_SUPPORTED:I = 0x1

.field private static final HTC_CW_AUTHEN_MD5_SUPPORTED:I = 0x2

.field private static final INTER_DBG:Z = false

.field public static final METHOD_NAME_CLEAR_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "clearCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_ACCT_INFOS:Ljava/lang/String; = "AccountInfos"

.field public static final METHOD_NAME_GET_ATR_INFO:Ljava/lang/String; = "getAtrInfo"

.field public static final METHOD_NAME_GET_CDMAMIN:Ljava/lang/String; = "getCDMAMIN"

.field public static final METHOD_NAME_GET_CDMA_SMART_NETWORK_STATUS:Ljava/lang/String; = "getCdmaSmartNetworkStatus"

.field public static final METHOD_NAME_GET_CDMA_SYS_RECORD_CONTENT:Ljava/lang/String; = "getCdmaSysRecordContent"

.field public static final METHOD_NAME_GET_CDMA_SYS_RECORD_SIZE:Ljava/lang/String; = "getCdmaSysRecordSize"

.field public static final METHOD_NAME_GET_CDMA_VOICE_CAMPED_OPERATOR:Ljava/lang/String; = "CdmaVoiceCampedOperator"

.field public static final METHOD_NAME_GET_DESIRED_POWER_STATE:Ljava/lang/String; = "DesiredPowerState"

.field public static final METHOD_NAME_GET_GPS_ONE_MODE:Ljava/lang/String; = "GetGpsOneMode"

.field public static final METHOD_NAME_GET_ICCSN:Ljava/lang/String; = "getICCSN"

.field public static final METHOD_NAME_GET_IMEI:Ljava/lang/String; = "getIMEI"

.field public static final METHOD_NAME_GET_IMEISV:Ljava/lang/String; = "getIMEISV"

.field public static final METHOD_NAME_GET_LTE_LAST_ERROR_CODE:Ljava/lang/String; = "getLTELastErrorCode"

.field public static final METHOD_NAME_GET_MEID:Ljava/lang/String; = "getMEID"

.field public static final METHOD_NAME_GET_PRI:Ljava/lang/String; = "getPRI"

.field public static final METHOD_NAME_GET_PRL:Ljava/lang/String; = "getPRL"

.field public static final METHOD_NAME_HTC_GET_CDMA_ERI_CALL_GUARD:Ljava/lang/String; = "htcGetCdmaEriCallGuard"

.field private static final METHOD_NAME_SEND_USER_TRIAL_FEEDBACK:Ljava/lang/String; = "sendUserTrialFeedback"

.field public static final METHOD_NAME_SET_CDMA_SMART_NETWORK:Ljava/lang/String; = "setCdmaSmartNetwork"

.field public static final METHOD_NAME_SET_GPS_ONE_MODE:Ljava/lang/String; = "SetGpsOneMode"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"

.field private static final RESULT_HTC_CW_AUTHEN_FAIL:I = 0x2

.field private static final RESULT_HTC_CW_AUTHEN_SUCCESS:I = 0x0

.field private static final SDBG:Z = false

.field static final TAG:Ljava/lang/String; = "HtcTelephonyInternal"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_BSID:Ljava/lang/String; = "getCdmaSysRecordContent_bsid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_NID:Ljava/lang/String; = "getCdmaSysRecordContent_nid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SID:Ljava/lang/String; = "getCdmaSysRecordContent_sid"

.field public static final _NAME_GET_CDMA_SYS_RECORD_CONTENT_SIZE:Ljava/lang/String; = "getCdmaSysRecordContent_size"

.field private static checkMth_getCdmaVoiceCampedOperator:Z

.field private static mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;


# instance fields
.field private lastError:I

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

.field private mOldNV_10:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneProxy:Lcom/android/internal/telephony/Phone;

.field private mProxyPhone:Lcom/android/internal/telephony/Phone;

.field mTeleMgr:Landroid/telephony/TelephonyManager;

.field methodMap:Ljava/util/HashMap;

.field private rejectAll:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .parameter "phone"
    .parameter "ci"

    .prologue
    .line 1720
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V

    .line 1721
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 2
    .parameter "phone"
    .parameter "ci"
    .parameter "phoneProxy"

    .prologue
    .line 1723
    invoke-direct {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;-><init>()V

    .line 299
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 1743
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    .line 1724
    iput-object p3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mProxyPhone:Lcom/android/internal/telephony/Phone;

    .line 1725
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1726
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    .line 1727
    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/HtcTelephonyInternal$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    .line 1728
    iput-object p2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 1735
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/HtcOrangeSimApiUtils;->init(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 1737
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->InitMethodMap()V

    .line 1739
    return-void
.end method

.method private InitMethodMap()V
    .locals 3

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getLTELastErrorCode"

    const/16 v2, 0xab

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "setCdmaSmartNetwork"

    const/16 v2, 0x6ae

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSmartNetworkStatus"

    const/16 v2, 0x6b0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1751
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordSize"

    const/16 v2, 0x6b2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1752
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCdmaSysRecordContent"

    const/16 v2, 0x6b4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1753
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "clearCdmaSysRecordContent"

    const/16 v2, 0x6b6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1754
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEI"

    const/16 v2, 0xc8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1755
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getIMEISV"

    const/16 v2, 0xc9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1756
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getMEID"

    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1757
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRI"

    const/16 v2, 0xcb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getPRL"

    const/16 v2, 0xcc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1759
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getCDMAMIN"

    const/16 v2, 0xcd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1760
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getICCSN"

    const/16 v2, 0xce

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "htcGetCdmaEriCallGuard"

    const/16 v2, 0x6b8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "getAtrInfo"

    const/16 v2, 0x6b9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1768
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "sendUserTrialFeedback"

    const/16 v2, 0x6bb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1772
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "DesiredPowerState"

    const/16 v2, 0x6bc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1773
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "AccountInfos"

    const/16 v2, 0x6bd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1776
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "GetGpsOneMode"

    const/16 v2, 0x6be

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "SetGpsOneMode"

    const/16 v2, 0x6c0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1780
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    const-string v1, "CdmaVoiceCampedOperator"

    const/16 v2, 0x6c2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1783
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/HtcTelephonyInternal;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/HtcTelephonyInternal;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/telephony/HtcTelephonyInternal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mOldNV_10:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/HtcTelephonyInternal;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/HtcTelephonyInternal;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$500()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/HtcTelephonyInternal;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->getCdmaVoiceCampedOperator()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V
    .locals 3
    .parameter "os"
    .parameter "data"

    .prologue
    .line 2339
    array-length v0, p2

    .line 2342
    .local v0, len:I
    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    .line 2343
    const/16 v0, 0xff

    .line 2344
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Too long value in GBA Bootstrapping parameters"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 2348
    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2349
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 2006
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 2007
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2010
    :cond_0
    const/16 v10, 0x7d

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/IccIoResult;

    .line 2013
    .local v8, response:Lcom/android/internal/telephony/IccIoResult;
    iget v0, v8, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, v8, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v0, v1

    const/high16 v1, 0x1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 2015
    .local v9, s:Ljava/lang/String;
    iget-object v0, v8, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 2016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v8, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2018
    :cond_1
    return-object v9
.end method

.method private getCdmaVoiceCampedOperator()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 3180
    const/4 v3, 0x0

    .line 3181
    .local v3, result:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-nez v4, :cond_0

    .line 3182
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    .line 3184
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    .line 3185
    sget-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    if-nez v4, :cond_1

    .line 3187
    :try_start_0
    const-string v4, "com.android.internal.telephony.PhoneProxy"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3188
    .local v1, cls:Ljava/lang/Class;
    const-string v4, "getCdmaVoiceCampedOperator"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3190
    .end local v1           #cls:Ljava/lang/Class;
    :goto_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->checkMth_getCdmaVoiceCampedOperator:Z

    .line 3192
    :cond_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    if-eqz v4, :cond_2

    .line 3194
    :try_start_1
    sget-object v4, Lcom/android/internal/telephony/HtcTelephonyInternal;->mth_getCdmaVoiceCampedOperator:Ljava/lang/reflect/Method;

    iget-object v5, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhoneProxy:Lcom/android/internal/telephony/Phone;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v0, v4

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 3201
    :cond_2
    :goto_1
    return-object v3

    .line 3195
    :catch_0
    move-exception v2

    .line 3196
    .local v2, ex:Ljava/lang/Exception;
    const-string v4, "HtcTelephonyInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CdmaVoiceCampedOperator get ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3197
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 3189
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 1687
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 1688
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1691
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 1692
    .local v1, request:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1693
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1696
    monitor-enter v1

    .line 1697
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 1699
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1700
    :catch_0
    move-exception v2

    goto :goto_0

    .line 1704
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1705
    iget-object v2, v1, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 1704
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 1715
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mMainThreadHandler:Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 1716
    return-void
.end method


# virtual methods
.method public akaAuthentication([B[B)Landroid/os/Bundle;
    .locals 5
    .parameter "rand"
    .parameter "autn"

    .prologue
    .line 2399
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 2400
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", autn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2401
    const/4 v1, 0x0

    .line 2409
    :goto_0
    return-object v1

    .line 2403
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2404
    .local v0, argument:Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2405
    const-string v2, "autn"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2407
    const/16 v2, 0xaf

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2409
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_2

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #result:Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public calculateAkaResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2269
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2270
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateAkaResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :goto_0
    return-object v1

    .line 2274
    :cond_0
    const/16 v2, 0x8c

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2276
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateGbaBootstrappingResponse([B[B)Landroid/os/Bundle;
    .locals 4
    .parameter "rand"
    .parameter "autn"

    .prologue
    const/4 v1, 0x0

    .line 2286
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2287
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "calculateGbaBootstrappingResponse(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2293
    :goto_0
    return-object v1

    .line 2291
    :cond_0
    const/16 v2, 0x8e

    new-instance v3, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal$AuthRequest;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;[B[B)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2293
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public calculateNafExternalKey([B)[B
    .locals 4
    .parameter "nafId"

    .prologue
    const/4 v1, 0x0

    .line 2303
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2304
    const-string v2, "HtcTelephonyInternal"

    const-string v3, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    :goto_0
    return-object v1

    .line 2308
    :cond_0
    const/16 v2, 0x90

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2310
    .local v0, result:Ljava/lang/Object;
    if-eqz v0, :cond_1

    check-cast v0, [B

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [B

    :goto_1
    move-object v1, v0

    goto :goto_0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 3
    .parameter "channel"

    .prologue
    .line 2061
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 2062
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2064
    :cond_0
    const/16 v1, 0x81

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2067
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 2068
    const/4 v1, 0x1

    .line 2070
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1787
    return-void
.end method

.method public enablePS_W2G_Handover(I)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 3143
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 3146
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->enablePS_W2G_Handover(ILandroid/os/Message;)V

    .line 3148
    :cond_0
    return-void
.end method

.method public enableRegistrationState_wifi_call(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2896
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2897
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableRegistrationState_wifi_call: on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2898
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->enableRegistrationState_wifi_call(ILandroid/os/Message;)V

    .line 2900
    if-eqz p1, :cond_0

    .line 2901
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->wifi2GRetry()V

    .line 2905
    :cond_0
    return-void

    .line 2898
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3

    .prologue
    .line 1792
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/IHtcTelephonyInternal$Stub;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1796
    :goto_0
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "PhoneSubInfo finalized"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    return-void

    .line 1793
    :catch_0
    move-exception v0

    .line 1794
    .local v0, throwable:Ljava/lang/Throwable;
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "Error while finalizing:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public generalGetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 2998
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2999
    .local v1, mapResult:Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3000
    .local v0, bundleResult:Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 3002
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3044
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3050
    :goto_0
    return-object v3

    .line 3029
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleResult:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #bundleResult:Landroid/os/Bundle;
    move-object v3, v0

    .line 3047
    goto :goto_0

    .line 3033
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3034
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_0

    .line 3036
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->htcGetCdmaEriCallGuard()I

    move-result v2

    .line 3037
    .local v2, roamingType:I
    const-string v3, "roamingType"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3038
    sget-boolean v3, Lcom/android/internal/telephony/HtcTelephonyInternal;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "HtcTelephonyInternal"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CMD_HTC_GET_CDMA_ERI_CALL_GUARD:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #roamingType:I
    :cond_0
    move-object v3, v0

    .line 3040
    goto :goto_0

    .line 3050
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 3002
    :sswitch_data_0
    .sparse-switch
        0xab -> :sswitch_0
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_0
        0xca -> :sswitch_0
        0xcb -> :sswitch_0
        0xcc -> :sswitch_0
        0xcd -> :sswitch_0
        0xce -> :sswitch_0
        0x6b0 -> :sswitch_0
        0x6b2 -> :sswitch_0
        0x6b4 -> :sswitch_0
        0x6b8 -> :sswitch_1
        0x6b9 -> :sswitch_0
        0x6bc -> :sswitch_0
        0x6bd -> :sswitch_0
        0x6be -> :sswitch_0
        0x6c2 -> :sswitch_0
    .end sparse-switch
.end method

.method public generalSetter(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6
    .parameter "methodName"
    .parameter "bundle"

    .prologue
    const/4 v5, 0x0

    .line 3055
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 3056
    .local v1, mapResult:Ljava/lang/Integer;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3057
    .local v0, bundleResult:Landroid/os/Bundle;
    if-eqz v1, :cond_4

    .line 3059
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3093
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 3099
    :goto_0
    return-object v3

    .line 3066
    :sswitch_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3095
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bundleResult:Landroid/os/Bundle;
    check-cast v0, Landroid/os/Bundle;

    .restart local v0       #bundleResult:Landroid/os/Bundle;
    move-object v3, v0

    .line 3096
    goto :goto_0

    .line 3072
    :sswitch_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3075
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mProxyPhone:Lcom/android/internal/telephony/Phone;

    if-nez v3, :cond_1

    .line 3077
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 3080
    :cond_1
    const/4 v2, 0x0

    .line 3082
    .local v2, phoneType:I
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mProxyPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3, v2}, Lcom/android/internal/telephony/Phone;->getPhoneInstance(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendUserTrialFeedback(Landroid/os/Message;)V

    .line 3088
    .end local v2           #phoneType:I
    :cond_2
    :goto_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 3084
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v3, :cond_2

    .line 3085
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendUserTrialFeedback(Landroid/os/Message;)V

    goto :goto_1

    .line 3099
    :cond_4
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    .line 3059
    nop

    :sswitch_data_0
    .sparse-switch
        0x6ae -> :sswitch_0
        0x6b6 -> :sswitch_0
        0x6bb -> :sswitch_1
        0x6c0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCallStateExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2926
    const/4 v0, 0x0

    return v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2632
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2633
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDetailIccStatusExt(I)[I
    .locals 3
    .parameter "phoneType"

    .prologue
    .line 3120
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3123
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDetailIccStatusExt(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDrxInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3152
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    const/16 v2, 0xad

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3155
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3158
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2619
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalDataRoamingOption()I
    .locals 3

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2448
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2449
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGlobalDataRoamingOption()I

    move-result v0

    .line 2450
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getHtcDeviceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2496
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2497
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcDeviceSvn(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2512
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcIccSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2572
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2573
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcLine1Number(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2557
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2558
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1Number(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcServiceStateExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2936
    const/4 v0, 0x0

    return v0
.end method

.method public getHtcSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2527
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2528
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailAlphaTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "account"

    .prologue
    .line 2603
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2604
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHtcVoiceMailNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    .line 2587
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const-string v3, "Requires READ_PHONE_STATE"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2588
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2589
    .local v0, number:Ljava/lang/String;
    return-object v0
.end method

.method public getLastError()I
    .locals 1

    .prologue
    .line 2080
    iget v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->lastError:I

    return v0
.end method

.method public getNetworkTypeExtInternal(I)I
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 2916
    const/4 v0, 0x0

    return v0
.end method

.method public getPowerInfo()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3166
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_PHONE_STATE"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3168
    const/16 v2, 0xb1

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3169
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3172
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [I

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [I

    goto :goto_0
.end method

.method public getRejectAllCalls()Z
    .locals 3

    .prologue
    .line 2693
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] getRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    return v0
.end method

.method public getScreenBusyState()Z
    .locals 2

    .prologue
    .line 2802
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2803
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2804
    invoke-interface {v0}, Lcom/android/internal/telephony/cat/AppInterface;->getScreenBusyState()Z

    move-result v1

    .line 2806
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSectorId(I)Ljava/lang/String;
    .locals 5
    .parameter "requestedNetworkType"

    .prologue
    const/4 v1, 0x0

    .line 2249
    if-ltz p1, :cond_0

    const/4 v2, 0x1

    if-le p1, v2, :cond_1

    .line 2250
    :cond_0
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSectorId(): Invalid requestedNetworkType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 2256
    :goto_0
    return-object v0

    .line 2254
    :cond_1
    const/16 v2, 0x83

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2256
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public gsmAuthentication([B)Landroid/os/Bundle;
    .locals 5
    .parameter "rand"

    .prologue
    .line 2416
    if-nez p1, :cond_0

    .line 2417
    const-string v2, "HtcTelephonyInternal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Inavlid data: rand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    const/4 v1, 0x0

    .line 2425
    :goto_0
    return-object v1

    .line 2420
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2421
    .local v0, argument:Landroid/os/Bundle;
    const-string v2, "rand"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 2423
    const/16 v2, 0xb3

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2425
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Landroid/os/Bundle;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    .end local v1           #result:Ljava/lang/Object;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public hello_getDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1802
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCatServiceReady()Z
    .locals 2

    .prologue
    .line 2861
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2862
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2863
    const/4 v1, 0x1

    .line 2865
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launchCallForwardingSettings()V
    .locals 3

    .prologue
    .line 2703
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "[NFC] launchCallForwardingSettings"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2706
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 2707
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2708
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2709
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.CallFeaturesSetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2710
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2712
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public notifyKeyEvent(I)V
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 2790
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2791
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2793
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->notifyUserActivity(I)V

    .line 2795
    :cond_0
    return-void
.end method

.method public notifyScreenBusy(Z)V
    .locals 1
    .parameter "busy"

    .prologue
    .line 2770
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2771
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2773
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/cat/AppInterface;->updateIdleScreenState(Z)V

    .line 2775
    :cond_0
    return-void
.end method

.method public onCmdResponse(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 2814
    new-instance v1, Lcom/android/internal/telephony/cat/CatResponseMessage;

    const-string v2, "CMD_DETATIL"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 2815
    .local v1, resMsg:Lcom/android/internal/telephony/cat/CatResponseMessage;
    const-string v2, "RES_CODE"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/telephony/cat/ResultCode;->fromInt(I)Lcom/android/internal/telephony/cat/ResultCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    .line 2816
    const-string v2, "MENU_SELECT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    .line 2817
    const-string v2, "INPUT"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    .line 2818
    const-string v2, "YES_NO"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    .line 2819
    const-string v2, "CONFIRM"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    .line 2822
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2823
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2824
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    .line 2826
    :cond_0
    return-void
.end method

.method public onHandleEventList(IZ)V
    .locals 1
    .parameter "event"
    .parameter "enable"

    .prologue
    .line 2834
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2835
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2836
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/cat/AppInterface;->onHandleEventList(IZ)V

    .line 2838
    :cond_0
    return-void
.end method

.method public onLanguageEvent(Ljava/lang/String;)V
    .locals 3
    .parameter "language"

    .prologue
    .line 2845
    new-instance v1, Lcom/android/internal/telephony/cat/EventResponseMessage;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/cat/EventResponseMessage;-><init>(I)V

    .line 2846
    .local v1, resMsg:Lcom/android/internal/telephony/cat/EventResponseMessage;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/cat/EventResponseMessage;->setLanguage(Ljava/lang/String;)V

    .line 2849
    invoke-static {}, Lcom/android/internal/telephony/cat/CatService;->getInstance()Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v0

    .line 2850
    .local v0, catInstance:Lcom/android/internal/telephony/cat/AppInterface;
    if-eqz v0, :cond_0

    .line 2851
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/cat/AppInterface;->sendEventDownload(Lcom/android/internal/telephony/cat/EventResponseMessage;)V

    .line 2853
    :cond_0
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 3
    .parameter "AID"

    .prologue
    .line 2047
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x2703

    if-eq v1, v2, :cond_0

    .line 2048
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2050
    :cond_0
    const/16 v1, 0x7f

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2052
    .local v0, channel:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public queryCAVE()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1826
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1827
    const/16 v0, 0x66

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryMD5()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1904
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    const/16 v0, 0x6a

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public querySSDUpdate()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1848
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    const/16 v0, 0x72

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryUIMAUTH()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1915
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1916
    const/16 v0, 0x76

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public queryVPM()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1881
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1882
    const/16 v0, 0x6e

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestCAVE(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randu"

    .prologue
    .line 1815
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1816
    const/16 v0, 0x64

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestConfigLocProcessDB(IIII)Z
    .locals 6
    .parameter "enable"
    .parameter "num_neighbor_pilot"
    .parameter "num_record"
    .parameter "time"

    .prologue
    const/4 v2, 0x0

    .line 2980
    iget-object v3, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v5, "HtcTelephonyInternal"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2984
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/Integer;

    .line 2985
    .local v0, para:[Ljava/lang/Integer;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 2986
    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2987
    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2988
    const/4 v3, 0x3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    .line 2989
    const/16 v3, 0x9e

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2990
    .local v1, result:Ljava/lang/Object;
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public requestGetBtid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2213
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetBtid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetCurrentLoc()[I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2971
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2974
    const/16 v2, 0x9c

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2975
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, [I

    if-eqz v2, :cond_0

    check-cast v0, [I

    .end local v0           #result:Ljava/lang/Object;
    check-cast v0, [I

    :goto_0
    return-object v0

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public requestGetDOMAIN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2127
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetDOMAIN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetGID1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2438
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetGID1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetHasISIM()Z
    .locals 1

    .prologue
    .line 2183
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v0

    return v0
.end method

.method public requestGetIMPI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2117
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMPU()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2137
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetIMPU()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIMSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phonetype"

    .prologue
    .line 2158
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetIMSI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetIsGBASupported()Z
    .locals 1

    .prologue
    .line 2193
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->isGBASupported()Z

    move-result v0

    return v0
.end method

.method public requestGetKeyLifetime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2223
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetKeyLifetime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetMobileNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "phonetype"

    .prologue
    .line 2169
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2170
    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->GetMobileNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCF()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2147
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetPCSCF()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public requestGetPCSCFAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "ifc_name"

    .prologue
    .line 1971
    const/16 v1, 0x7b

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1972
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Exception;

    if-eqz v1, :cond_0

    .line 1973
    const/4 v0, 0x0

    .line 1975
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestGetRand()[B
    .locals 1

    .prologue
    .line 2203
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->GetRand()[B

    move-result-object v0

    return-object v0
.end method

.method public requestGetSIMType()I
    .locals 1

    .prologue
    .line 2724
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->requestGetSIMType()I

    move-result v0

    return v0
.end method

.method public requestGetVolteSipRegFailure()I
    .locals 2

    .prologue
    .line 1961
    const/16 v0, 0x78

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public requestGetWimaxNai()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 3105
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3109
    const/16 v2, 0xa0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3110
    .local v0, returnResult:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Exception;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 3113
    .end local v0           #returnResult:Ljava/lang/Object;
    :goto_0
    return-object v0

    .restart local v0       #returnResult:Ljava/lang/Object;
    :cond_0
    check-cast v0, [Ljava/lang/String;

    .end local v0           #returnResult:Ljava/lang/Object;
    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method public requestImsAkaAuthentication(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "data"

    .prologue
    const/4 v0, 0x0

    .line 2231
    if-nez p1, :cond_0

    .line 2232
    const-string v1, "HtcTelephonyInternal"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestImsAkaAuthentication(): Invalid data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    :goto_0
    return-object v0

    .line 2236
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/HtcIsimData;->mAid:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 2237
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "requestImsAkaAuthentication(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2241
    :cond_1
    const/16 v1, 0x85

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2243
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/os/Bundle;

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    .end local v0           #result:Ljava/lang/Object;
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_0
.end method

.method public requestLtePermanentlyDetached()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 2647
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MODIFY_PHONE_STATE"

    const-string v4, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2649
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_VOLTE_FLAG:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2650
    const/16 v2, 0x88

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2651
    .local v0, result:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 2653
    :cond_0
    return v1
.end method

.method public requestMD5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "chapid"
    .parameter "chapchallengelength"
    .parameter "chpachallenge"

    .prologue
    .line 1892
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1894
    .local v0, paraMD5:[Ljava/lang/String;
    const/16 v1, 0x68

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    return-object v1
.end method

.method public requestSSDUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "randssd"

    .prologue
    .line 1837
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1838
    const/16 v0, 0x70

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSSDUpdateConfirm(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "authbs"

    .prologue
    .line 1859
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    const/16 v0, 0x74

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestSetFastDormancy(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2667
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2668
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetFastDormancy: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2669
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetFastDormancy(IILandroid/os/Message;)V

    .line 2671
    :cond_0
    return-void
.end method

.method public requestSetLocProcessDB(IIIIII[I)Z
    .locals 5
    .parameter "index"
    .parameter "rat"
    .parameter "sid"
    .parameter "nid"
    .parameter "base_id"
    .parameter "pilot_pn"
    .parameter "neighbor_pilot_list"

    .prologue
    .line 2953
    iget-object v2, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v4, "HtcTelephonyInternal"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2958
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "index"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2959
    const-string v2, "rat"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2960
    const-string v2, "sid"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2961
    const-string v2, "nid"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2962
    const-string v2, "base_id"

    invoke-virtual {v0, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2963
    const-string v2, "pilot_pn"

    invoke-virtual {v0, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2964
    const-string v2, "neighbor_pilot_list"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 2965
    const/16 v2, 0x9a

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 2966
    .local v1, result:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .end local v1           #result:Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    return v2

    .restart local v1       #result:Ljava/lang/Object;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public requestSetMultiRABTrafficThrottling(II)V
    .locals 3
    .parameter "module"
    .parameter "mode"

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 2471
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSetMultiRABTrafficThrottling: module="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2475
    :cond_0
    return-void
.end method

.method public requestVPM()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1870
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    const/16 v0, 0x6c

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requesttClearLocProcessDB()Z
    .locals 4

    .prologue
    .line 2943
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v3, "HtcTelephonyInternal"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2946
    const/16 v1, 0x98

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2947
    .local v0, result:Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/Boolean;

    .end local v0           #result:Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_0
    return v1

    .restart local v0       #result:Ljava/lang/Object;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendAT_PushMail(II)V
    .locals 2
    .parameter "type"
    .parameter "value"

    .prologue
    .line 3130
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3131
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 3132
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestSetPushMailDormantTime(IILandroid/os/Message;)V

    .line 3137
    :cond_0
    return-void
.end method

.method public setDataEnabled(Z)Z
    .locals 1
    .parameter "enable"

    .prologue
    .line 2732
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "rand"
    .parameter "btid"
    .parameter "keyLifetime"

    .prologue
    .line 2321
    invoke-static {}, Lcom/android/internal/telephony/HtcIsimData;->hasISIM()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2322
    const-string v1, "HtcTelephonyInternal"

    const-string v2, "setGbaBootstrappingParams(): No valid ISIM!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    :goto_0
    return-void

    .line 2325
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/internal/telephony/HtcIsimData;->SetRand([B)V

    .line 2326
    :cond_1
    if-eqz p2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/HtcIsimData;->SetBtid(Ljava/lang/String;)V

    .line 2327
    :cond_2
    if-eqz p3, :cond_3

    invoke-static {p3}, Lcom/android/internal/telephony/HtcIsimData;->SetKeyLifetime(Ljava/lang/String;)V

    .line 2329
    :cond_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2331
    .local v0, os:Ljava/io/ByteArrayOutputStream;
    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 2332
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 2333
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/HtcTelephonyInternal;->appendGbaParameter(Ljava/io/ByteArrayOutputStream;[B)V

    .line 2335
    const/16 v1, 0x92

    new-instance v2, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;

    const/16 v3, 0x6fd5

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lcom/android/internal/telephony/HtcTelephonyInternal$GbaBootStrapParam;-><init>(Lcom/android/internal/telephony/HtcTelephonyInternal;I[B)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setGlobalDataRoamingOption(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 2455
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const-string v2, "Requires MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2456
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 2457
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setGlobalDataRoamingOption(I)V

    .line 2458
    :cond_0
    return-void
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "activePhone"

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1982
    return-void
.end method

.method public setPolicyDataEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 2749
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_NETWORK_POLICY"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2752
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setPolicyDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setPreferredNetworkType_wifi_call(I)Z
    .locals 3
    .parameter "networkType"

    .prologue
    .line 2877
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v1, :cond_0

    .line 2878
    const/16 v1, 0x94

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2879
    .local v0, err:Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    .line 2880
    const/4 v1, 0x1

    .line 2883
    .end local v0           #err:Ljava/lang/Integer;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRejectAllCalls(Z)V
    .locals 3
    .parameter "reject"

    .prologue
    .line 2682
    const-string v0, "HtcTelephonyInternal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[NFC] setRejectAllCalls: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2683
    iput-boolean p1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->rejectAll:Z

    .line 2684
    return-void
.end method

.method public setUserDataEnabled(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 2740
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    const-string v2, "HtcTelephonyInternal"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2743
    iget-object v0, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUserDataEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public transmitIccBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 2028
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 2038
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/HtcTelephonyInternal;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccSimIO(IIIIILjava/lang/String;)[B
    .locals 12
    .parameter "fileID"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "filePath"

    .prologue
    .line 2086
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x2703

    if-eq v0, v1, :cond_0

    .line 2087
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only Smartcard API may access UICC"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2089
    :cond_0
    const/16 v11, 0x96

    new-instance v0, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;

    const/4 v3, -0x1

    move v1, p1

    move v2, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/telephony/HtcTelephonyInternal$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v11, v0}, Lcom/android/internal/telephony/HtcTelephonyInternal;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/IccIoResult;

    .line 2092
    .local v9, response:Lcom/android/internal/telephony/IccIoResult;
    const/4 v10, 0x0

    .line 2093
    .local v10, result:[B
    const/4 v8, 0x2

    .line 2094
    .local v8, length:I
    iget-object v0, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v0, :cond_1

    .line 2095
    iget-object v0, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v0, v0

    add-int/lit8 v8, v0, 0x2

    .line 2096
    new-array v10, v8, [B

    .line 2097
    iget-object v0, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v9, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    array-length v3, v3

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2102
    :goto_0
    add-int/lit8 v0, v8, -0x1

    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 2103
    add-int/lit8 v0, v8, -0x2

    iget v1, v9, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    int-to-byte v1, v1

    aput-byte v1, v10, v0

    .line 2104
    return-object v10

    .line 2099
    :cond_1
    new-array v10, v8, [B

    goto :goto_0
.end method

.method public updateRegDregState(II)V
    .locals 4
    .parameter "state"
    .parameter "expire"

    .prologue
    .line 1926
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_REGISTRATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1929
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_reg_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1930
    const-string v1, "cw_reg_expire"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1931
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1932
    return-void
.end method

.method public updateSipInviteState(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "result"
    .parameter "ip"
    .parameter "port"
    .parameter "streamId"

    .prologue
    .line 1941
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1943
    const-string v1, "cdma.cw.dataip"

    invoke-static {v1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1944
    const-string v1, "cdma.cw.dataport"

    invoke-static {v1, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1945
    const-string v1, "cdma.cw.streamid"

    invoke-static {v1, p4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1946
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_CW_SIP_INVITE_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1947
    .local v0, it:Landroid/content/Intent;
    const-string v1, "cw_sip_invite_result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1948
    iget-object v1, p0, Lcom/android/internal/telephony/HtcTelephonyInternal;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1949
    return-void
.end method
