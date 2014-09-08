.class public Landroid/net/ConnectivityManager;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"

# interfaces
.implements Landroid/net/HtcIfConnectivityManager;


# static fields
.field public static final ACTION_BACKGROUND_DATA_SETTING_CHANGED:Ljava/lang/String; = "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

.field public static final ACTION_TETHER_STATE_CHANGED:Ljava/lang/String; = "android.net.conn.TETHER_STATE_CHANGED"

.field public static final ADMIN_DNS1_Priority:I = 0x64

.field public static final ADMIN_DNS2_Priority:I = 0x96

.field public static final ADMIN_Priority:I = 0xc8

.field public static final ADMIN_RTB:Ljava/lang/String; = "admin"

.field public static final CMMail_Priority:I = 0x2bc

.field public static final CMMail_RTB:Ljava/lang/String; = "cmmail"

.field public static final CMail_RTB:Ljava/lang/String; = "cmail"

.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"

.field public static final CONNECTIVITY_ACTION_IMMEDIATE:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

.field public static final CW_Priority:I = 0x50

.field public static final CW_RTB:Ljava/lang/String; = "cw"

#the value of this static final field might be set in the static constructor
.field public static final DEFAULT_NETWORK_PREFERENCE:I = 0x0

.field public static final EXTRA_ACTIVE_TETHER:Ljava/lang/String; = "activeArray"

.field public static final EXTRA_AVAILABLE_TETHER:Ljava/lang/String; = "availableArray"

.field public static final EXTRA_ERRORED_TETHER:Ljava/lang/String; = "erroredArray"

.field public static final EXTRA_EXTRA_INFO:Ljava/lang/String; = "extraInfo"

.field public static final EXTRA_HTC_CURRENT_ACTIVE_NETWORK:Ljava/lang/String; = "htcCurrentActiveNetwork"

.field public static final EXTRA_INET_CONDITION:Ljava/lang/String; = "inetCondition"

.field public static final EXTRA_IS_FAILOVER:Ljava/lang/String; = "isFailover"

.field public static final EXTRA_NETWORK_INFO:Ljava/lang/String; = "networkInfo"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final EXTRA_NO_CONNECTIVITY:Ljava/lang/String; = "noConnectivity"

.field public static final EXTRA_OTHER_NETWORK_INFO:Ljava/lang/String; = "otherNetwork"

.field public static final EXTRA_PREFER_PHONE:Ljava/lang/String; = "preferPhoneType"

.field public static final EXTRA_REASON:Ljava/lang/String; = "reason"

.field public static final FOTA_DNS1_Priority:I = 0x6a4

.field public static final FOTA_DNS2_Priority:I = 0x73a

.field public static final FOTA_Priority:I = 0x76c

.field public static final FOTA_RTB:Ljava/lang/String; = "fota"

.field public static final GAME_Priority:I = 0xd48

.field public static final GAME_RTB:Ljava/lang/String; = "game"

.field public static final GPRS_Priority:I = 0xce4

.field public static final GPRS_RTB:Ljava/lang/String; = "gprs"

.field public static final HIPRI_DNS1_Priority:I = 0x640

.field public static final HIPRI_DNS2_Priority:I = 0x672

.field public static final HIPRI_Priority:I = 0x6a4

.field public static final HIPRI_RTB:Ljava/lang/String; = "hipri"

.field public static final HTC_CHECK_TETHER_BT:I = -0x24

.field public static final HTC_CHECK_TETHER_HOTSPOT:I = -0x23

.field public static final HTC_CHECK_TETHER_USB:I = -0x22

.field public static final HTC_NETWORK_AVALIBILITY_CHANGE_ACTION:Ljava/lang/String; = "android.net.conn.htcNetworkAvalibilityChange"

.field public static final HTC_PERMITTED_TETHER_ACTION:Ljava/lang/String; = "android.net.conn.HTC_PERMITTED_TETHER_CHANGE"

.field public static final HTC_PERMITTED_TETHER_ALLOW:I = 0x0

.field public static final HTC_PERMITTED_TETHER_DENY:I = 0x1

.field public static final HTC_PERMITTED_TETHER_NOT_REQUESTED:I = 0x3

.field public static final HTC_PERMITTED_TETHER_PROGRASSING:I = 0x2

.field public static final HTC_REQUEST_TETHER_BT:I = -0x14

.field public static final HTC_REQUEST_TETHER_HOTSPOT:I = -0x13

.field public static final HTC_REQUEST_TETHER_USB:I = -0x12

.field public static final HTC_RESET_TETHER_BT:I = -0x44

.field public static final HTC_RESET_TETHER_HOTSPOT:I = -0x43

.field public static final HTC_RESET_TETHER_USB:I = -0x42

.field public static final HTC_TETHER:I = -0x2

.field public static final HTC_TETHER_BT:I = 0x2

.field public static final HTC_TETHER_CHECK:I = 0x20

.field public static final HTC_TETHER_HOTSPOT:I = 0x1

.field public static final HTC_TETHER_REQUEST:I = 0x10

.field public static final HTC_TETHER_RESET:I = 0x40

.field public static final HTC_TETHER_TYPE_ALL:I = 0x3

.field public static final HTC_TETHER_USB:I = 0x0

.field public static final HTTP_Priority:I = 0x3e8

.field public static final IMS_Priority:I = 0xa8c

.field public static final IMS_RTB:Ljava/lang/String; = "ims"

.field public static final INET_CONDITION_ACTION:Ljava/lang/String; = "android.net.conn.INET_CONDITION_ACTION"

.field public static final INTERNET_Priority:I = 0xc80

.field public static final INTERNET_RTB:Ljava/lang/String; = "internet"

.field public static final J2ME_Priority:I = 0x1f4

.field public static final J2ME_RTB:Ljava/lang/String; = "j2me"

.field public static final MAX_NETWORK_TYPE:I = 0x24

#the value of this static final field might be set in the static constructor
.field public static final MAX_RADIO_TYPE:I = 0x0

.field public static final MMS_DNS1_Priority:I = 0x12c

.field public static final MMS_DNS2_Priority:I = 0x15e

.field public static final MMS_Priority:I = 0x190

.field public static final MMS_RTB:Ljava/lang/String; = "mms"

.field public static final MobileMarket_Priority:I = 0x7d0

.field public static final MobileMarket_RTB:Ljava/lang/String; = "MM"

.field public static final NETSHARE_Priority:I = 0x834

.field public static final NETSHARE_RTB:Ljava/lang/String; = "netshare"

.field public static final OTHER_Priority:I = 0xe10

.field public static final PREFER_MOBILE_CHANGE:Ljava/lang/String; = "android.net.conn.preferPhoneTypeChange"

.field public static final ROAMING_PROVIDER_DOMESTIC:Ljava/lang/String; = "domestic"

.field public static final ROAMING_PROVIDER_GSM:Ljava/lang/String; = "gsm"

.field public static final ROAMING_PROVIDER_INTERNATIONAL:Ljava/lang/String; = "international"

.field public static final STREAM_Priority:I = 0xdac

.field public static final SUPL_DNS1_Priority:I = 0x578

.field public static final SUPL_DNS2_Priority:I = 0x5aa

.field public static final SUPL_Priority:I = 0x5dc

.field public static final SUPL_RTB:Ljava/lang/String; = "supl"

.field private static final TAG:Ljava/lang/String; = "ConnectivityManager"

.field public static final TETHER_ERROR_DISABLE_NAT_ERROR:I = 0x9

.field public static final TETHER_ERROR_ENABLE_NAT_ERROR:I = 0x8

.field public static final TETHER_ERROR_IFACE_CFG_ERROR:I = 0xa

.field public static final TETHER_ERROR_MASTER_ERROR:I = 0x5

.field public static final TETHER_ERROR_NO_ERROR:I = 0x0

.field public static final TETHER_ERROR_SERVICE_UNAVAIL:I = 0x2

.field public static final TETHER_ERROR_TETHER_IFACE_ERROR:I = 0x6

.field public static final TETHER_ERROR_UNAVAIL_IFACE:I = 0x4

.field public static final TETHER_ERROR_UNKNOWN_IFACE:I = 0x1

.field public static final TETHER_ERROR_UNSUPPORTED:I = 0x3

.field public static final TETHER_ERROR_UNTETHER_IFACE_ERROR:I = 0x7

.field public static final TYPE_BLUETOOTH:I = 0x7

.field public static final TYPE_DUMMY:I = 0x8

.field public static final TYPE_ETHERNET:I = 0x9

.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_MOBILE_ADMIN:I = 0x10

.field public static final TYPE_MOBILE_BIP:I = 0x21

.field public static final TYPE_MOBILE_CBS:I = 0xc

.field public static final TYPE_MOBILE_CDMA:I = 0x1a

.field public static final TYPE_MOBILE_CDMA_ADMIN:I = 0x22

.field public static final TYPE_MOBILE_CDMA_MMS:I = 0x1b

.field public static final TYPE_MOBILE_CMMail:I = 0x15

.field public static final TYPE_MOBILE_CMail:I = 0x17

.field public static final TYPE_MOBILE_DUN:I = 0x4

.field public static final TYPE_MOBILE_ENTITLE:I = 0x18

.field public static final TYPE_MOBILE_FOTA:I = 0xa

.field public static final TYPE_MOBILE_GSM:I = 0x1c

.field public static final TYPE_MOBILE_GSM_ADMIN:I = 0x23

.field public static final TYPE_MOBILE_GSM_MMS:I = 0x1d

.field public static final TYPE_MOBILE_HIPRI:I = 0x5

.field public static final TYPE_MOBILE_HTTPPROXY:I = 0xf

.field public static final TYPE_MOBILE_IMS:I = 0xb

.field public static final TYPE_MOBILE_INTERNET:I = 0x13

.field public static final TYPE_MOBILE_MMS:I = 0x2

.field public static final TYPE_MOBILE_MobileMarket:I = 0x14

.field public static final TYPE_MOBILE_OTASP:I = 0x19

.field public static final TYPE_MOBILE_SUB_GSM:I = 0x1e

.field public static final TYPE_MOBILE_SUB_GSM_ADMIN:I = 0x24

.field public static final TYPE_MOBILE_SUB_GSM_MMS:I = 0x1f

.field public static final TYPE_MOBILE_SUPL:I = 0x3

.field public static final TYPE_MOBILE_Verizon800:I = 0x20

.field public static final TYPE_MOBILE_VerizonApp:I = 0x16

.field public static final TYPE_MOBILE_WAPGATEWAY:I = 0xe

.field public static final TYPE_MOBILE_WIMAX:I = 0x6

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_USBNET:I = 0x12

.field public static final TYPE_WIFI:I = 0x1

.field public static final TYPE_WIFI_HOTSPOT:I = 0x11

.field public static final TYPE_WIFI_P2P:I = 0xd

.field public static final TYPE_WIMAX:I = 0x6

.field public static final VPN_DNS1_Priority:I = 0x960

.field public static final VPN_DNS2_Priority:I = 0x992

.field public static final VPN_Priority:I = 0x9c4

.field public static final VPN_RTB:Ljava/lang/String; = "vpn"

.field public static final VZWAPP_DNS1_Priority:I = 0x898

.field public static final VZWAPP_DNS2_Priority:I = 0x8ca

.field public static final VZWAPP_Priority:I = 0x8fc

.field public static final VZWAPP_RTB:Ljava/lang/String; = "vzwapp"

.field public static final WAP_CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_CHANGE"

.field public static final WAP_DISCONNECT_ACTION:Ljava/lang/String; = "android.net.conn.WAP_CONN_DISCONNECT"

.field public static final WAP_Priority:I = 0x258

.field public static final WAP_RTB:Ljava/lang/String; = "wap"

.field public static final WIFI_Priority:I = 0xbb9

.field public static final WIFI_RTB:Ljava/lang/String; = "wifi"

.field public static final WIMAX_Priority:I = 0xc1c

.field public static final WIMAX_RTB:Ljava/lang/String; = "wimax"

.field public static final other_RTB:Ljava/lang/String; = "other"

.field public static final stream_RTB:Ljava/lang/String; = "stream"


# instance fields
.field private final mService:Landroid/net/IConnectivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v1, 0x12

    .line 485
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Landroid/net/ConnectivityManager;->MAX_RADIO_TYPE:I

    .line 510
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_USBNET_flag:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string/jumbo v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v2, "1.6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    sput v1, Landroid/net/ConnectivityManager;->DEFAULT_NETWORK_PREFERENCE:I

    return-void

    .line 485
    :cond_0
    const/16 v0, 0x9

    goto :goto_0

    .line 510
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Landroid/net/IConnectivityManager;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 1212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1213
    const-string/jumbo v0, "missing IConnectivityManager"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/IConnectivityManager;

    iput-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    .line 1214
    return-void
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 676
    packed-switch p0, :pswitch_data_0

    .line 761
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 678
    :pswitch_0
    const-string v0, "MOBILE"

    goto :goto_0

    .line 680
    :pswitch_1
    const-string v0, "WIFI"

    goto :goto_0

    .line 682
    :pswitch_2
    const-string v0, "MOBILE_MMS"

    goto :goto_0

    .line 684
    :pswitch_3
    const-string v0, "MOBILE_SUPL"

    goto :goto_0

    .line 686
    :pswitch_4
    const-string v0, "MOBILE_DUN"

    goto :goto_0

    .line 688
    :pswitch_5
    const-string v0, "MOBILE_HIPRI"

    goto :goto_0

    .line 690
    :pswitch_6
    const-string v0, "WIMAX"

    goto :goto_0

    .line 692
    :pswitch_7
    const-string v0, "BLUETOOTH"

    goto :goto_0

    .line 694
    :pswitch_8
    const-string v0, "DUMMY"

    goto :goto_0

    .line 696
    :pswitch_9
    const-string v0, "ETHERNET"

    goto :goto_0

    .line 698
    :pswitch_a
    const-string v0, "MOBILE_FOTA"

    goto :goto_0

    .line 700
    :pswitch_b
    const-string v0, "MOBILE_IMS"

    goto :goto_0

    .line 702
    :pswitch_c
    const-string v0, "MOBILE_CBS"

    goto :goto_0

    .line 704
    :pswitch_d
    const-string v0, "WIFI_P2P"

    goto :goto_0

    .line 708
    :pswitch_e
    const-string v0, "MOBILE_WAPGATEWAY"

    goto :goto_0

    .line 710
    :pswitch_f
    const-string v0, "MOBILE_HTTPPROXY"

    goto :goto_0

    .line 712
    :pswitch_10
    const-string v0, "MOBILE_ADMIN"

    goto :goto_0

    .line 714
    :pswitch_11
    const-string v0, "WIFI_HOTSPOT"

    goto :goto_0

    .line 716
    :pswitch_12
    const-string v0, "USBNET"

    goto :goto_0

    .line 718
    :pswitch_13
    const-string v0, "MOBILE_INTERNET"

    goto :goto_0

    .line 720
    :pswitch_14
    const-string v0, "MOBILE_MobileMarket"

    goto :goto_0

    .line 722
    :pswitch_15
    const-string v0, "MOBILE_CMMail"

    goto :goto_0

    .line 724
    :pswitch_16
    const-string v0, "MOBILE_VerizonApp"

    goto :goto_0

    .line 726
    :pswitch_17
    const-string v0, "MOBILE_CMail"

    goto :goto_0

    .line 728
    :pswitch_18
    const-string v0, "MOBILE_ENTITLE"

    goto :goto_0

    .line 730
    :pswitch_19
    const-string v0, "MOBILE_OTASP"

    goto :goto_0

    .line 735
    :pswitch_1a
    const-string v0, "MOBILE_CDMA"

    goto :goto_0

    .line 737
    :pswitch_1b
    const-string v0, "MOBILE_CDMA_MMS"

    goto :goto_0

    .line 739
    :pswitch_1c
    const-string v0, "MOBILE_CDMA_ADMIN"

    goto :goto_0

    .line 741
    :pswitch_1d
    const-string v0, "MOBILE_GSM"

    goto :goto_0

    .line 743
    :pswitch_1e
    const-string v0, "MOBILE_GSM_MMS"

    goto :goto_0

    .line 745
    :pswitch_1f
    const-string v0, "MOBILE_GSM_ADMIN"

    goto :goto_0

    .line 747
    :pswitch_20
    const-string v0, "MOBILE_SUB_GSM"

    goto :goto_0

    .line 749
    :pswitch_21
    const-string v0, "MOBILE_SUB_GSM_MMS"

    goto :goto_0

    .line 751
    :pswitch_22
    const-string v0, "MOBILE_SUB_GSM_ADMIN"

    goto :goto_0

    .line 756
    :pswitch_23
    const-string v0, "MOBILE_Verizon800"

    goto :goto_0

    .line 758
    :pswitch_24
    const-string v0, "MOBILE_BIP"

    goto :goto_0

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
        :pswitch_20
        :pswitch_21
        :pswitch_23
        :pswitch_24
        :pswitch_1c
        :pswitch_1f
        :pswitch_22
    .end packed-switch
.end method

.method public static isNetworkTypeMobile(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 767
    packed-switch p0, :pswitch_data_0

    .line 811
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 809
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 767
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static isNetworkTypeValid(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 671
    if-ltz p0, :cond_0

    const/16 v0, 0x24

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSubTypeCDMA(I)Z
    .locals 1
    .parameter "subType"

    .prologue
    .line 819
    const/4 v0, 0x0

    .line 820
    .local v0, isCDMAType:Z
    packed-switch p0, :pswitch_data_0

    .line 830
    :goto_0
    :pswitch_0
    return v0

    .line 827
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 820
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActiveApnState()[Lcom/htc/net/ApnState;
    .locals 2

    .prologue
    .line 1185
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveApnState()[Lcom/htc/net/ApnState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1187
    :goto_0
    return-object v1

    .line 1186
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveLinkProperties()Landroid/net/LinkProperties;
    .locals 2

    .prologue
    .line 885
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveLinkProperties()Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 887
    :goto_0
    return-object v1

    .line 886
    :catch_0
    move-exception v0

    .line 887
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 851
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 853
    :goto_0
    return-object v1

    .line 852
    :catch_0
    move-exception v0

    .line 853
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "uid"

    .prologue
    .line 860
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getActiveNetworkInfoForUid(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 862
    :goto_0
    return-object v1

    .line 861
    :catch_0
    move-exception v0

    .line 862
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    .locals 2

    .prologue
    .line 1052
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getActiveNetworkQuotaInfo()Landroid/net/NetworkQuotaInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1054
    :goto_0
    return-object v1

    .line 1053
    :catch_0
    move-exception v0

    .line 1054
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAllNetworkInfo()[Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    .line 876
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 878
    :goto_0
    return-object v1

    .line 877
    :catch_0
    move-exception v0

    .line 878
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBackgroundDataSetting()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1025
    const/4 v0, 0x1

    return v0
.end method

.method public getGlobalProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getGlobalProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1522
    :goto_0
    return-object v1

    .line 1521
    :catch_0
    move-exception v0

    .line 1522
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "receivedNetworkInfo"

    .prologue
    .line 1106
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getInterestedNetworkInfo(Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1108
    :goto_0
    return-object v1

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 1359
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLastTetherError(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1361
    :goto_0
    return v1

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public getLinkProperties(I)Landroid/net/LinkProperties;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 894
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getLinkProperties(I)Landroid/net/LinkProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 896
    :goto_0
    return-object v1

    .line 895
    :catch_0
    move-exception v0

    .line 896
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataEnabled()Z
    .locals 2

    .prologue
    .line 1068
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1070
    :goto_0
    return v1

    .line 1069
    :catch_0
    move-exception v0

    .line 1070
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getMobileDataPhoneType()I
    .locals 2

    .prologue
    .line 1132
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataPhoneType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1134
    :goto_0
    return v1

    .line 1133
    :catch_0
    move-exception v0

    .line 1134
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMobileDataPhoneType(I)I
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1160
    invoke-static {p1}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1161
    packed-switch p1, :pswitch_data_0

    .line 1175
    :pswitch_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getMobileDataPhoneType()I

    move-result v0

    .line 1178
    :goto_0
    return v0

    .line 1165
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1169
    :pswitch_2
    const/4 v0, 0x1

    goto :goto_0

    .line 1173
    :pswitch_3
    const/4 v0, 0x5

    goto :goto_0

    .line 1178
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 1161
    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getNetworkInfo(I)Landroid/net/NetworkInfo;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 868
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 870
    :goto_0
    return-object v1

    .line 869
    :catch_0
    move-exception v0

    .line 870
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkNameServers(I)[Ljava/lang/String;
    .locals 2
    .parameter "networkType"

    .prologue
    .line 1097
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getNetworkNameServers(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1099
    :goto_0
    return-object v1

    .line 1098
    :catch_0
    move-exception v0

    .line 1099
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNetworkPreference()I
    .locals 2

    .prologue
    .line 843
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getNetworkPreference()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 845
    :goto_0
    return v1

    .line 844
    :catch_0
    move-exception v0

    .line 845
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getPhoneMobileDataEnabled(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1121
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->getPhoneMobileDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1123
    :goto_0
    return v1

    .line 1122
    :catch_0
    move-exception v0

    .line 1123
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPolicyEnable(II)Z
    .locals 2
    .parameter "networkType"
    .parameter "slot"

    .prologue
    .line 1202
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->getPolicyEnable(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1204
    :goto_0
    return v1

    .line 1203
    :catch_0
    move-exception v0

    .line 1204
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getProxy()Landroid/net/ProxyProperties;
    .locals 2

    .prologue
    .line 1532
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getProxy()Landroid/net/ProxyProperties;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1534
    :goto_0
    return-object v1

    .line 1533
    :catch_0
    move-exception v0

    .line 1534
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1313
    :goto_0
    return-object v1

    .line 1312
    :catch_0
    move-exception v0

    .line 1313
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1221
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1223
    :goto_0
    return-object v1

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1289
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1291
    :goto_0
    return-object v1

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1300
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1302
    :goto_0
    return-object v1

    .line 1301
    :catch_0
    move-exception v0

    .line 1302
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1232
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1234
    :goto_0
    return-object v1

    .line 1233
    :catch_0
    move-exception v0

    .line 1234
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public getTetheringErroredIfaces()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 1243
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1245
    :goto_0
    return-object v1

    .line 1244
    :catch_0
    move-exception v0

    .line 1245
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    goto :goto_0
.end method

.method public htcRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 8
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    const/4 v7, 0x1

    .line 1441
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x1

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1443
    :goto_0
    return v0

    .line 1442
    :catch_0
    move-exception v6

    .local v6, e:Landroid/os/RemoteException;
    move v0, v7

    .line 1443
    goto :goto_0
.end method

.method public htcRequestPermittedTether(IILjava/lang/String;)I
    .locals 2
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "iface"

    .prologue
    .line 1425
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/IConnectivityManager;->htcRequestPermittedTether(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1427
    :goto_0
    return v1

    .line 1426
    :catch_0
    move-exception v0

    .line 1427
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "iface"
    .parameter "permission"

    .prologue
    .line 1470
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->htcSetupPermittedTether(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1473
    :goto_0
    return-void

    .line 1471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public htcUnRegisterPermittedTether(IILjava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "callingUid"
    .parameter "callingPid"
    .parameter "internalIface"
    .parameter "externalIface"

    .prologue
    .line 1457
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Landroid/net/IConnectivityManager;->htcRegisterPermittedTether(ZIILjava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1459
    :goto_0
    return v0

    .line 1458
    :catch_0
    move-exception v6

    .line 1459
    .local v6, e:Landroid/os/RemoteException;
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkSupported(I)Z
    .locals 1
    .parameter "networkType"

    .prologue
    .line 1563
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1565
    :goto_0
    return v0

    .line 1564
    :catch_0
    move-exception v0

    .line 1565
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTetheringSupported()Z
    .locals 2

    .prologue
    .line 1278
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->isTetheringSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1280
    :goto_0
    return v1

    .line 1279
    :catch_0
    move-exception v0

    .line 1280
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportInetCondition(II)V
    .locals 1
    .parameter "networkType"
    .parameter "percentage"

    .prologue
    .line 1498
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->reportInetCondition(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1501
    :goto_0
    return-void

    .line 1499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public requestNetworkTransitionWakelock(Ljava/lang/String;)Z
    .locals 2
    .parameter "forWhom"

    .prologue
    .line 1484
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->requestNetworkTransitionWakelock(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1485
    const/4 v1, 0x1

    .line 1487
    :goto_0
    return v1

    .line 1486
    :catch_0
    move-exception v0

    .line 1487
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestRouteToHost(II)Z
    .locals 4
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 967
    invoke-static {p2}, Landroid/net/NetworkUtils;->intToInetAddress(I)Ljava/net/InetAddress;

    move-result-object v0

    .line 969
    .local v0, inetAddress:Ljava/net/InetAddress;
    if-nez v0, :cond_0

    .line 971
    const-string v1, "ConnectivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "address is null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    const/4 v1, 0x0

    .line 976
    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v1

    goto :goto_0
.end method

.method public requestRouteToHost(ILjava/net/InetAddress;)Z
    .locals 1
    .parameter "networkType"
    .parameter "hostIpAddress"

    .prologue
    .line 1001
    invoke-virtual {p0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method public requestRouteToHostAddress(ILjava/net/InetAddress;)Z
    .locals 3
    .parameter "networkType"
    .parameter "hostAddress"

    .prologue
    .line 990
    invoke-virtual {p2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 992
    .local v0, address:[B
    :try_start_0
    iget-object v2, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v2, p1, v0}, Landroid/net/IConnectivityManager;->requestRouteToHostAddress(I[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 994
    :goto_0
    return v2

    .line 993
    :catch_0
    move-exception v1

    .line 994
    .local v1, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setBackgroundDataSetting(Z)V
    .locals 0
    .parameter "allowBackgroundData"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1041
    return-void
.end method

.method public setDataDependency(IZ)V
    .locals 1
    .parameter "networkType"
    .parameter "met"

    .prologue
    .line 1545
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2}, Landroid/net/IConnectivityManager;->setDataDependency(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1548
    :goto_0
    return-void

    .line 1546
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setGlobalProxy(Landroid/net/ProxyProperties;)V
    .locals 1
    .parameter "p"

    .prologue
    .line 1509
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setGlobalProxy(Landroid/net/ProxyProperties;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1512
    :goto_0
    return-void

    .line 1510
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1085
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1088
    :goto_0
    return-void

    .line 1086
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMobileDataPhoneType(I)Z
    .locals 2
    .parameter "phoneType"

    .prologue
    .line 1144
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setMobileDataPhoneType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1146
    :goto_0
    return v1

    .line 1145
    :catch_0
    move-exception v0

    .line 1146
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setNetworkPreference(I)V
    .locals 1
    .parameter "preference"

    .prologue
    .line 836
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1}, Landroid/net/IConnectivityManager;->setNetworkPreference(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    return-void

    .line 837
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setPhoneMobileDataPhoneType(I)Z
    .locals 1
    .parameter "phoneType"

    .prologue
    .line 1153
    const/4 v0, 0x0

    return v0
.end method

.method public setPolicyEnable(IZI)V
    .locals 1
    .parameter "networkType"
    .parameter "enabled"
    .parameter "slot"

    .prologue
    .line 1195
    :try_start_0
    iget-object v0, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v0, p1, p2, p3}, Landroid/net/IConnectivityManager;->setPolicyEnable(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1198
    :goto_0
    return-void

    .line 1196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setRadio(IZ)Z
    .locals 2
    .parameter "networkType"
    .parameter "turnOn"

    .prologue
    .line 912
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->setRadio(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 914
    :goto_0
    return v1

    .line 913
    :catch_0
    move-exception v0

    .line 914
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRadios(Z)Z
    .locals 2
    .parameter "turnOn"

    .prologue
    .line 903
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setRadios(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 905
    :goto_0
    return v1

    .line 904
    :catch_0
    move-exception v0

    .line 905
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUsbTethering(Z)I
    .locals 2
    .parameter "enable"

    .prologue
    .line 1322
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->setUsbTethering(Z)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1324
    :goto_0
    return v1

    .line 1323
    :catch_0
    move-exception v0

    .line 1324
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 8
    .parameter "networkType"
    .parameter "feature"

    .prologue
    const/4 v1, 0x2

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v2, v3, v4}, Lcom/baidu/server/dp/DynamicPermissionManager;->checkPermission(IZ[Ljava/lang/Object;)I

    move-result v2

    if-ne v2, v7, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v1, p1, p2, v2}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 2
    .parameter "networkType"
    .parameter "feature"

    .prologue
    .line 931
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1, p2}, Landroid/net/IConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 934
    :goto_0
    return v1

    .line 933
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public tether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 951
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->tether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 953
    :goto_0
    return v1

    .line 952
    :catch_0
    move-exception v0

    .line 953
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public untether(Ljava/lang/String;)I
    .locals 2
    .parameter "iface"

    .prologue
    .line 1255
    :try_start_0
    iget-object v1, p0, Landroid/net/ConnectivityManager;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {v1, p1}, Landroid/net/IConnectivityManager;->untether(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1257
    :goto_0
    return v1

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x2

    goto :goto_0
.end method
