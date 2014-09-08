.class public Lcom/android/server/LocationManagerService;
.super Landroid/location/ILocationManager$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LocationManagerService$LocationWorkerHandler;,
        Lcom/android/server/LocationManagerService$HTCLocationHandler;,
        Lcom/android/server/LocationManagerService$ProximityListener;,
        Lcom/android/server/LocationManagerService$ProximityAlert;,
        Lcom/android/server/LocationManagerService$UpdateRecord;,
        Lcom/android/server/LocationManagerService$LpCapabilityComparator;,
        Lcom/android/server/LocationManagerService$LpAccuracyComparator;,
        Lcom/android/server/LocationManagerService$LpPowerComparator;,
        Lcom/android/server/LocationManagerService$CustProviderObserver;,
        Lcom/android/server/LocationManagerService$SettingsObserver;,
        Lcom/android/server/LocationManagerService$Receiver;
    }
.end annotation


# static fields
.field private static final ACCESS_COARSE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_COARSE_LOCATION"

.field private static final ACCESS_FINE_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_FINE_LOCATION"

.field private static final ACCESS_LOCATION_EXTRA_COMMANDS:Ljava/lang/String; = "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

.field private static final ACCESS_MOCK_LOCATION:Ljava/lang/String; = "android.permission.ACCESS_MOCK_LOCATION"

#the value of this static final field might be set in the static constructor
.field private static final CUSTOMIZED_NLP_FEATURE:Z = false

.field private static final INSTALL_LOCATION_PROVIDER:Ljava/lang/String; = "android.permission.INSTALL_LOCATION_PROVIDER"

.field private static final LOCAL_LOGV:Z = true

.field private static final LPSDEBUG:Z = true

.field private static final MESSAGE_LOCATION_CHANGED:I = 0x1

.field private static final MESSAGE_PACKAGE_UPDATED:I = 0x2

.field private static final MESSAGE_SET_GPSPRIVACY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "LocationManagerService"

.field private static final TAG_MOCK:Ljava/lang/String; = "HTCMock"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "LocationManagerService"

.field public static final htcMock_PROVIDER:Ljava/lang/String; = "htcMock"

.field private static mHtcAllowAPTrigger:Z = false

.field private static mPrivacyLock:I = 0x0

.field public static final mocLocationProvider:Ljava/lang/String; = "htcMock"

.field private static sProvidersLoaded:Z


# instance fields
.field private final SKIP_NAVIGATION_AP1:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

.field private final mContext:Landroid/content/Context;

.field private mCustProviderSettings:Landroid/content/ContentQueryMap;

.field private mCustProviderValue:Ljava/lang/String;

.field private final mDisabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnabledProviders:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

.field private mGeocodeProviderPackageName:Ljava/lang/String;

.field mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

.field private final mGpsProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/GpsLocationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

.field private mLastKnownLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private mLastWriteTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mMockProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/MockProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

.field private mNetworkLocationProviderPackageName:Ljava/lang/String;

.field private mNetworkState:I

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPendingBroadcasts:I

.field private final mProviders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private final mProvidersByName:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/location/LocationProviderInterface;",
            ">;"
        }
    .end annotation
.end field

.field private mProximitiesEntered:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityAlerts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/PendingIntent;",
            "Lcom/android/server/LocationManagerService$ProximityAlert;",
            ">;"
        }
    .end annotation
.end field

.field private mProximityListener:Landroid/location/ILocationListener;

.field private mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecordsByProvider:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/LocationManagerService$UpdateRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettings:Landroid/content/ContentQueryMap;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mockProvider:Lcom/android/server/location/MockProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 132
    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 165
    const/4 v1, -0x1

    sput v1, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 216
    sput-boolean v0, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    .line 226
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    sput-boolean v0, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 722
    invoke-direct {p0}, Landroid/location/ILocationManager$Stub;-><init>()V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastWriteTime:Ljava/util/HashMap;

    .line 124
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    .line 127
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    .line 130
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    .line 161
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 170
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    .line 178
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    .line 184
    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    .line 189
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    .line 196
    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 199
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 200
    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 201
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    .line 203
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    .line 207
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    .line 210
    iput v3, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    .line 219
    const-string v1, "com.htc.laputa"

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->SKIP_NAVIGATION_AP1:Ljava/lang/String;

    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGpsProviders:Ljava/util/HashMap;

    .line 2512
    new-instance v1, Lcom/android/server/LocationManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$1;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 2617
    new-instance v1, Lcom/android/server/LocationManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/LocationManagerService$2;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 723
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    .line 724
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 725
    .local v0, resources:Landroid/content/res/Resources;
    sget-boolean v1, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v1, :cond_0

    const-string v1, "android.htc.china.NETWORKLOCATION_SERVICE"

    :goto_0
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 727
    sget-boolean v1, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v1, :cond_1

    const-string v1, "android.htc.china.GEOCODER_SERVICE"

    :goto_1
    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    .line 729
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1, p1, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 732
    const-string v1, "LocationManagerService"

    const-string v2, "Constructed LocationManager Service"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    return-void

    .line 725
    :cond_0
    const v1, 0x104002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 727
    :cond_1
    const v1, 0x1040030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private _getAllProvidersLocked()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 873
    const-string v3, "LocationManagerService"

    const-string v4, "getAllProviders"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 876
    .local v1, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 877
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 878
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 880
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_0
    return-object v1
.end method

.method private _getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;
    .locals 5
    .parameter "provider"

    .prologue
    const/4 v2, 0x0

    .line 2230
    invoke-direct {p0, p1, v2}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2232
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2233
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_1

    .line 2245
    :cond_0
    :goto_0
    return-object v2

    .line 2238
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 2239
    .local v1, pkgName:Ljava/lang/String;
    const-string v3, "com.htc.laputa"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2245
    :cond_2
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;

    goto :goto_0
.end method

.method private _getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 2157
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/LocationProviderInterface;

    .line 2158
    .local v1, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v1, :cond_0

    .line 2175
    :goto_0
    return-object v0

    .line 2162
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2164
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2165
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "network"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2166
    const-string v2, "satellite"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresSatellite()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2167
    const-string v2, "cell"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->requiresCell()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2168
    const-string v2, "cost"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->hasMonetaryCost()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2169
    const-string v2, "altitude"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsAltitude()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2170
    const-string v2, "speed"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsSpeed()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2171
    const-string v2, "bearing"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->supportsBearing()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2172
    const-string v2, "power"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2173
    const-string v2, "accuracy"

    invoke-interface {v1}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private _getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 898
    const-string v4, "LocationManagerService"

    const-string v5, "getProviders"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 901
    .local v2, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_3

    .line 902
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    .line 903
    .local v3, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    .line 904
    .local v1, name:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 905
    if-eqz p2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 901
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 908
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {v3, p1}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 911
    :cond_2
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 914
    .end local v1           #name:Ljava/lang/String;
    .end local v3           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-object v2
.end method

.method private _isProviderEnabledLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 2204
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 2206
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 2207
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 2208
    const/4 v1, 0x0

    .line 2210
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private _loadProvidersLocked()V
    .locals 21

    .prologue
    .line 633
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 635
    new-instance v15, Lcom/android/server/location/GpsLocationProvider;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v15, v2, v0}, Lcom/android/server/location/GpsLocationProvider;-><init>(Landroid/content/Context;Landroid/location/ILocationManager;)V

    .line 636
    .local v15, gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 637
    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getNetInitiatedListener()Landroid/location/INetInitiatedListener;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 638
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 639
    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    .line 642
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGpsProviders:Ljava/util/HashMap;

    invoke-virtual {v15}, Lcom/android/server/location/GpsLocationProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    new-instance v2, Lcom/android/server/location/CarGpsProvider;

    const-string v3, "gps"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x2

    const/4 v13, 0x1

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v13}, Lcom/android/server/location/CarGpsProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iput-object v3, v2, Lcom/android/server/location/CarGpsProvider;->mContext:Landroid/content/Context;

    .line 653
    .end local v15           #gpsProvider:Lcom/android/server/location/GpsLocationProvider;
    :cond_0
    new-instance v17, Lcom/android/server/location/PassiveProvider;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/server/location/PassiveProvider;-><init>(Landroid/location/ILocationManager;)V

    .line 654
    .local v17, passiveProvider:Lcom/android/server/location/PassiveProvider;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 655
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/location/PassiveProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 658
    sget-boolean v2, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v2, :cond_4

    .line 659
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    .line 660
    .local v19, resolver:Landroid/content/ContentResolver;
    const-string v2, "customized_location_provider"

    move-object/from16 v0, v19

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 662
    .local v14, customizedProvider:Ljava/lang/String;
    if-nez v14, :cond_8

    .line 663
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 664
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 667
    if-eqz v14, :cond_7

    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 673
    :cond_2
    :goto_0
    if-eqz v14, :cond_3

    .line 674
    const-string v2, "customized_location_provider"

    move-object/from16 v0, v19

    invoke-static {v0, v2, v14}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 694
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;

    .line 695
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CustProvider][LoadProvider] NetworkLocation="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Geocode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    .end local v14           #customizedProvider:Ljava/lang/String;
    .end local v19           #resolver:Landroid/content/ContentResolver;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 701
    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    if-eqz v2, :cond_5

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 703
    new-instance v2, Lcom/android/server/location/LocationProviderProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v4, "network"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/server/location/LocationProviderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 709
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 711
    new-instance v2, Lcom/android/server/location/GeocoderProxy;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/android/server/location/GeocoderProxy;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    .line 714
    :cond_6
    const-string v2, "LocationManagerService"

    const-string v3, "_loadProvidersLocked: updateProvidersLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 716
    return-void

    .line 670
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .restart local v14       #customizedProvider:Ljava/lang/String;
    .restart local v19       #resolver:Landroid/content/ContentResolver;
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_0

    .line 679
    :cond_8
    const-string v2, ","

    const/4 v3, -0x1

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v20

    .line 680
    .local v20, strSplits:[Ljava/lang/String;
    if-eqz v20, :cond_3

    .line 681
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 682
    .local v16, nLength:I
    const/4 v2, 0x1

    move/from16 v0, v16

    if-lt v0, v2, :cond_9

    .line 683
    const/4 v2, 0x0

    aget-object v2, v20, v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    aget-object v2, v20, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 684
    const/4 v2, 0x0

    aget-object v2, v20, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    .line 687
    :cond_9
    const/4 v2, 0x2

    move/from16 v0, v16

    if-lt v0, v2, :cond_3

    .line 688
    const/4 v2, 0x1

    aget-object v2, v20, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    aget-object v2, v20, v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 689
    const/4 v2, 0x1

    aget-object v2, v20, v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/server/LocationManagerService;)Landroid/location/ILocationListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProviderPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/LocationManagerService;Lcom/android/server/location/GeocoderProxy;)Lcom/android/server/location/GeocoderProxy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/LocationManagerService;Lcom/android/server/location/LocationProviderInterface;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/LocationManagerService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget v0, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/LocationManagerService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput p1, p0, Lcom/android/server/LocationManagerService;->mNetworkState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleLocationChangedLocked(Landroid/location/Location;Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/LocationManagerService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 104
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->handleStatusChangedLocked(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/LocationManagerService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/LocationManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/server/LocationManagerService;->mCustProviderValue:Ljava/lang/String;

    return-object p1
.end method

.method private addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 602
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    return-void
.end method

.method private addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V
    .locals 14
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 2085
    const-string v2, "gps"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "network"

    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->isAllowedProviderSafe(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2087
    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2090
    :cond_1
    const-wide/16 v2, -0x1

    cmp-long v2, p6, v2

    if-eqz v2, :cond_2

    .line 2091
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long p6, p6, v2

    .line 2093
    :cond_2
    new-instance v1, Lcom/android/server/LocationManagerService$ProximityAlert;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move-object v2, p0

    move-wide v4, p1

    move-wide/from16 v6, p3

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move-object/from16 v11, p8

    invoke-direct/range {v1 .. v11}, Lcom/android/server/LocationManagerService$ProximityAlert;-><init>(Lcom/android/server/LocationManagerService;IDDFJLandroid/app/PendingIntent;)V

    .line 2095
    .local v1, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    move-object/from16 v0, p8

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-nez v2, :cond_3

    .line 2098
    new-instance v2, Lcom/android/server/LocationManagerService$ProximityListener;

    invoke-direct {v2, p0}, Lcom/android/server/LocationManagerService$ProximityListener;-><init>(Lcom/android/server/LocationManagerService;)V

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 2099
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-direct {v2, p0, v3}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    iput-object v2, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2101
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v12, v2, -0x1

    .local v12, i:I
    :goto_0
    if-ltz v12, :cond_3

    .line 2102
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .line 2103
    .local v13, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 2101
    add-int/lit8 v12, v12, -0x1

    goto :goto_0

    .line 2107
    .end local v12           #i:I
    .end local v13           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    return-void
.end method

.method private best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/location/LocationProviderInterface;"
        }
    .end annotation

    .prologue
    .local p1, providerNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 994
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 995
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v5, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 996
    .local v5, providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 997
    .local v3, name:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 999
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :catchall_0
    move-exception v9

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v9

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #providers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    :cond_0
    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1001
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_1

    .line 1002
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    .line 1039
    :goto_1
    return-object v9

    .line 1006
    :cond_1
    new-instance v9, Lcom/android/server/LocationManagerService$LpPowerComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpPowerComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v5, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1007
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v4

    .line 1008
    .local v4, power:I
    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ge v4, v9, :cond_2

    .line 1009
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 1014
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v7, tmp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 1016
    .local v2, idx:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1017
    .local v6, size:I
    :goto_2
    if-ge v2, v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getPowerRequirement()I

    move-result v9

    if-ne v9, v4, :cond_3

    .line 1018
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1019
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1023
    :cond_3
    new-instance v9, Lcom/android/server/LocationManagerService$LpAccuracyComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpAccuracyComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v7, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1024
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v0

    .line 1025
    .local v0, acc:I
    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ge v0, v9, :cond_4

    .line 1026
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto :goto_1

    .line 1029
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1030
    .local v8, tmp2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/location/LocationProviderInterface;>;"
    const/4 v2, 0x0

    .line 1031
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 1032
    :goto_3
    if-ge v2, v6, :cond_5

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v9}, Lcom/android/server/location/LocationProviderInterface;->getAccuracy()I

    move-result v9

    if-ne v9, v0, :cond_5

    .line 1033
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1034
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1038
    :cond_5
    new-instance v9, Lcom/android/server/LocationManagerService$LpCapabilityComparator;

    invoke-direct {v9, p0, v12}, Lcom/android/server/LocationManagerService$LpCapabilityComparator;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1039
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/location/LocationProviderInterface;

    goto/16 :goto_1
.end method

.method private checkMockPermissionsSafe()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2696
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2697
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v2}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2698
    const-string v1, "HTCMock"

    const-string v2, "checkMockPermissionsSafe, isHtcMode using Mock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2713
    :cond_0
    return-void

    .line 2703
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mock_location"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 2705
    .local v0, allowMocks:Z
    :goto_0
    if-nez v0, :cond_3

    .line 2706
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION secure setting"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .end local v0           #allowMocks:Z
    :cond_2
    move v0, v1

    .line 2703
    goto :goto_0

    .line 2709
    .restart local v0       #allowMocks:Z
    :cond_3
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_MOCK_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2711
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_MOCK_LOCATION permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "provider"
    .parameter "lastPermission"

    .prologue
    .line 815
    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "passive"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 817
    :cond_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 822
    :cond_1
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    .line 833
    .end local p2
    :cond_2
    :goto_0
    return-object p2

    .line 826
    .restart local p2
    :cond_3
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    .line 828
    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string p2, "android.permission.ACCESS_COARSE_LOCATION"

    goto :goto_0

    .line 831
    :cond_4
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    .line 833
    const-string p2, "android.permission.ACCESS_FINE_LOCATION"

    goto :goto_0

    .line 836
    :cond_5
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires ACCESS_FINE_LOCATION or ACCESS_COARSE_LOCATION permission"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private decrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2643
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2644
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2647
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2648
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2649
    const-string v1, "Released wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2659
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2660
    return-void

    .line 2651
    :cond_1
    :try_start_3
    const-string v1, "Can\'t release wakelock again!"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 2653
    :catch_0
    move-exception v0

    .line 2656
    .local v0, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "LocationManagerService"

    const-string v3, "exception in releaseWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2659
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private getMinTimeLocked(Ljava/lang/String;)J
    .locals 13
    .parameter "provider"

    .prologue
    .line 1280
    const-wide v5, 0x7fffffffffffffffL

    .line 1281
    .local v5, minTime:J
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 1282
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v9}, Landroid/os/WorkSource;->clear()V

    .line 1283
    if-eqz v7, :cond_3

    .line 1284
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 1285
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1286
    .local v8, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v0, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    .line 1287
    .local v0, curTime:J
    cmp-long v9, v0, v5

    if-gez v9, :cond_0

    .line 1288
    move-wide v5, v0

    .line 1284
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1291
    .end local v0           #curTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    const-wide/16 v9, 0x3

    mul-long/2addr v9, v5

    const-wide/16 v11, 0x2

    div-long v3, v9, v11

    .line 1292
    .local v3, inclTime:J
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    .line 1293
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1294
    .restart local v8       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-wide v9, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinTime:J

    cmp-long v9, v9, v3

    if-gtz v9, :cond_2

    .line 1295
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget v10, v8, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    invoke-virtual {v9, v10}, Landroid/os/WorkSource;->add(I)Z

    .line 1292
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1299
    .end local v2           #i:I
    .end local v3           #inclTime:J
    .end local v8           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_3
    return-wide v5
.end method

.method private getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 2
    .parameter "intent"

    .prologue
    .line 1393
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$Receiver;

    .line 1394
    .local v0, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v0, :cond_0

    .line 1395
    new-instance v0, Lcom/android/server/LocationManagerService$Receiver;

    .end local v0           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v0, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    .line 1396
    .restart local v0       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    :cond_0
    return-object v0
.end method

.method private getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;
    .locals 5
    .parameter "listener"

    .prologue
    .line 1374
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 1375
    .local v0, binder:Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 1376
    .local v2, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-nez v2, :cond_0

    .line 1377
    new-instance v2, Lcom/android/server/LocationManagerService$Receiver;

    .end local v2           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-direct {v2, p0, p1}, Lcom/android/server/LocationManagerService$Receiver;-><init>(Lcom/android/server/LocationManagerService;Landroid/location/ILocationListener;)V

    .line 1378
    .restart local v2       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1382
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v3

    invoke-interface {v3}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move-object v3, v2

    .line 1389
    :goto_0
    return-object v3

    .line 1384
    :catch_0
    move-exception v1

    .line 1385
    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "LocationManagerService"

    const-string v4, "linkToDeath failed:"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1386
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleLocationChangedLocked(Landroid/location/Location;Z)V
    .locals 23
    .parameter "location"
    .parameter "passive"

    .prologue
    .line 2276
    if-eqz p2, :cond_1

    const-string v14, "passive"

    .line 2277
    .local v14, provider:Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/ArrayList;

    .line 2278
    .local v18, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v20

    if-nez v20, :cond_2

    .line 2371
    :cond_0
    return-void

    .line 2276
    .end local v14           #provider:Ljava/lang/String;
    .end local v18           #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 2282
    .restart local v14       #provider:Ljava/lang/String;
    .restart local v18       #records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationProviderInterface;

    .line 2283
    .local v11, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v11, :cond_0

    .line 2287
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "In handleLocationChangedLocked.For provider: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/location/Location;

    .line 2292
    .local v8, lastLocation:Landroid/location/Location;
    if-nez v8, :cond_b

    .line 2293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    move-object/from16 v20, v0

    new-instance v21, Landroid/location/Location;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2299
    :goto_1
    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getStatusUpdateTime()J

    move-result-wide v9

    .line 2302
    .local v9, newStatusUpdateTime:J
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 2303
    .local v5, extras:Landroid/os/Bundle;
    invoke-interface {v11, v5}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v19

    .line 2305
    .local v19, status:I
    const/4 v4, 0x0

    .line 2308
    .local v4, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    const/4 v3, 0x1

    .line 2312
    .local v3, bLogPrint:Z
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2313
    .local v2, N:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v2, :cond_d

    .line 2314
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2315
    .local v15, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v16, v0

    .line 2316
    .local v16, receiver:Lcom/android/server/LocationManagerService$Receiver;
    const/16 v17, 0x0

    .line 2319
    .local v17, receiverDead:Z
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "In handleLocationChangedLocked.Iterating through the records. Index"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " listener: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2324
    iget-object v7, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2325
    .local v7, lastLoc:Landroid/location/Location;
    if-eqz v7, :cond_3

    move-object/from16 v0, p1

    invoke-static {v0, v7, v15}, Lcom/android/server/LocationManagerService;->shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2326
    :cond_3
    if-nez v7, :cond_c

    .line 2327
    new-instance v7, Landroid/location/Location;

    .end local v7           #lastLoc:Landroid/location/Location;
    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 2328
    .restart local v7       #lastLoc:Landroid/location/Location;
    iput-object v7, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastFixBroadcast:Landroid/location/Location;

    .line 2333
    :goto_3
    sget-boolean v20, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v20, :cond_4

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ne v0, v3, :cond_4

    const-string v20, "network"

    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_4

    .line 2334
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "[CustProvider][onLocationChanged] NLP="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2335
    const/4 v3, 0x0

    .line 2338
    :cond_4
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->callLocationChangedLocked(Landroid/location/Location;)Z

    move-result v20

    if-nez v20, :cond_5

    .line 2339
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException calling onLocationChanged on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    const/16 v17, 0x1

    .line 2344
    :cond_5
    iget-wide v12, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2345
    .local v12, prevStatusUpdateTime:J
    cmp-long v20, v9, v12

    if-lez v20, :cond_7

    const-wide/16 v20, 0x0

    cmp-long v20, v12, v20

    if-nez v20, :cond_6

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_7

    .line 2348
    :cond_6
    iput-wide v9, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mLastStatusBroadcast:J

    .line 2349
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v14, v1, v5}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v20

    if-nez v20, :cond_7

    .line 2350
    const/16 v17, 0x1

    .line 2351
    const-string v20, "LocationManagerService"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "RemoteException calling onStatusChanged on "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2356
    :cond_7
    if-nez v17, :cond_8

    iget-boolean v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mSingleShot:Z

    move/from16 v20, v0

    if-eqz v20, :cond_a

    .line 2357
    :cond_8
    if-nez v4, :cond_9

    .line 2358
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2360
    .restart local v4       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_9
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 2361
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2313
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 2295
    .end local v2           #N:I
    .end local v3           #bLogPrint:Z
    .end local v4           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v5           #extras:Landroid/os/Bundle;
    .end local v6           #i:I
    .end local v7           #lastLoc:Landroid/location/Location;
    .end local v9           #newStatusUpdateTime:J
    .end local v12           #prevStatusUpdateTime:J
    .end local v15           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v16           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v17           #receiverDead:Z
    .end local v19           #status:I
    :cond_b
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_1

    .line 2330
    .restart local v2       #N:I
    .restart local v3       #bLogPrint:Z
    .restart local v4       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v5       #extras:Landroid/os/Bundle;
    .restart local v6       #i:I
    .restart local v7       #lastLoc:Landroid/location/Location;
    .restart local v9       #newStatusUpdateTime:J
    .restart local v15       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v16       #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .restart local v17       #receiverDead:Z
    .restart local v19       #status:I
    :cond_c
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/location/Location;->set(Landroid/location/Location;)V

    goto/16 :goto_3

    .line 2366
    .end local v7           #lastLoc:Landroid/location/Location;
    .end local v15           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v16           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    .end local v17           #receiverDead:Z
    :cond_d
    if-eqz v4, :cond_0

    .line 2367
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v6, v20, -0x1

    :goto_4
    if-ltz v6, :cond_0

    .line 2368
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2367
    add-int/lit8 v6, v6, -0x1

    goto :goto_4
.end method

.method private handleStatusChangedLocked(Ljava/lang/String;Z)V
    .locals 12
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2417
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    .line 2418
    .local v7, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 2461
    :cond_0
    return-void

    .line 2422
    :cond_1
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 2423
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v4, :cond_0

    .line 2428
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2429
    .local v2, extras:Landroid/os/Bundle;
    invoke-interface {v4, v2}, Lcom/android/server/location/LocationProviderInterface;->getStatus(Landroid/os/Bundle;)I

    move-result v8

    .line 2431
    .local v8, status:I
    if-eqz p2, :cond_4

    .line 2432
    const/4 v8, 0x2

    .line 2438
    :goto_0
    const/4 v1, 0x0

    .line 2440
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2441
    .local v0, N:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_5

    .line 2442
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 2443
    .local v5, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v6, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2445
    .local v6, receiver:Lcom/android/server/LocationManagerService$Receiver;
    invoke-virtual {v6, p1, v8, v2}, Lcom/android/server/LocationManagerService$Receiver;->callStatusChangedLocked(Ljava/lang/String;ILandroid/os/Bundle;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2446
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "RemoteException calling onStatusChanged on "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    if-nez v1, :cond_2

    .line 2448
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2450
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2451
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2441
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2435
    .end local v0           #N:I
    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v3           #i:I
    .end local v5           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v6           #receiver:Lcom/android/server/LocationManagerService$Receiver;
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 2456
    .restart local v0       #N:I
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v3       #i:I
    :cond_5
    if-eqz v1, :cond_0

    .line 2457
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v3, v9, -0x1

    :goto_2
    if-ltz v3, :cond_0

    .line 2458
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v9}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2457
    add-int/lit8 v3, v3, -0x1

    goto :goto_2
.end method

.method private incrementPendingBroadcasts()V
    .locals 4

    .prologue
    .line 2628
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    .line 2629
    :try_start_0
    iget v1, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/android/server/LocationManagerService;->mPendingBroadcasts:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2631
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2632
    const-string v1, "Acquired wakelock"

    invoke-direct {p0, v1}, Lcom/android/server/LocationManagerService;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2639
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 2640
    return-void

    .line 2633
    :catch_0
    move-exception v0

    .line 2636
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v3, "exception in acquireWakeLock()"

    invoke-static {v1, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2639
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    const/4 v2, 0x0

    .line 744
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "power"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 745
    .local v9, powerManager:Landroid/os/PowerManager;
    const-string v1, "LocationManagerService"

    invoke-virtual {v9, v13, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 748
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProviders()V

    .line 751
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 752
    .local v8, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 755
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 756
    const-string v1, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 759
    const-string v1, "android.location.GPS_FIX_CHANGE"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 762
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 763
    new-instance v10, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-direct {v10, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 764
    .local v10, sdFilter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 767
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 768
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "location_providers_allowed"

    aput-object v5, v4, v14

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 772
    .local v11, settingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v11, v3, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    .line 773
    new-instance v12, Lcom/android/server/LocationManagerService$SettingsObserver;

    invoke-direct {v12, p0, v2}, Lcom/android/server/LocationManagerService$SettingsObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 774
    .local v12, settingsObserver:Lcom/android/server/LocationManagerService$SettingsObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v12}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 777
    sget-boolean v1, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v1, :cond_0

    .line 778
    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "(name=?)"

    new-array v4, v13, [Ljava/lang/String;

    const-string v5, "customized_location_provider"

    aput-object v5, v4, v14

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 782
    .local v7, custProviderSettingsCursor:Landroid/database/Cursor;
    new-instance v1, Landroid/content/ContentQueryMap;

    const-string v3, "name"

    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v1, v7, v3, v13, v4}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/LocationManagerService;->mCustProviderSettings:Landroid/content/ContentQueryMap;

    .line 783
    new-instance v6, Lcom/android/server/LocationManagerService$CustProviderObserver;

    invoke-direct {v6, p0, v2}, Lcom/android/server/LocationManagerService$CustProviderObserver;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    .line 784
    .local v6, custProviderObserver:Lcom/android/server/LocationManagerService$CustProviderObserver;
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mCustProviderSettings:Landroid/content/ContentQueryMap;

    invoke-virtual {v1, v6}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 787
    .end local v6           #custProviderObserver:Lcom/android/server/LocationManagerService$CustProviderObserver;
    .end local v7           #custProviderSettingsCursor:Landroid/database/Cursor;
    :cond_0
    return-void
.end method

.method private isAllowedBySettingsLocked(Ljava/lang/String;)Z
    .locals 2
    .parameter "provider"

    .prologue
    .line 802
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    const/4 v1, 0x1

    .line 811
    :goto_0
    return v1

    .line 805
    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 806
    const/4 v1, 0x0

    goto :goto_0

    .line 809
    :cond_1
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 811
    .local v0, resolver:Landroid/content/ContentResolver;
    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    goto :goto_0
.end method

.method private isAllowedProviderSafe(Ljava/lang/String;)Z
    .locals 3
    .parameter "provider"

    .prologue
    const/4 v0, 0x0

    .line 841
    const-string v1, "gps"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "passive"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    .line 855
    :cond_1
    :goto_0
    return v0

    .line 847
    :cond_2
    const-string v1, "network"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 855
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private loadProviders()V
    .locals 2

    .prologue
    .line 612
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 613
    :try_start_0
    sget-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    if-eqz v0, :cond_0

    .line 614
    monitor-exit v1

    .line 621
    :goto_0
    return-void

    .line 618
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->loadProvidersLocked()V

    .line 619
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    .line 620
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private loadProvidersLocked()V
    .locals 3

    .prologue
    .line 625
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_loadProvidersLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "Exception loading providers:"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2
    .parameter "log"

    .prologue
    .line 2992
    const-string v0, "LocationManagerService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2993
    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2995
    :cond_0
    return-void
.end method

.method private nextAccuracy(I)I
    .locals 1
    .parameter "accuracy"

    .prologue
    .line 942
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 943
    const/4 v0, 0x2

    .line 945
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextPower(I)I
    .locals 1
    .parameter "power"

    .prologue
    const/4 v0, 0x0

    .line 923
    packed-switch p1, :pswitch_data_0

    .line 932
    :goto_0
    :pswitch_0
    return v0

    .line 925
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 927
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 923
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z
    .locals 7
    .parameter "provider"
    .parameter "uid"
    .parameter "excludedReceiver"

    .prologue
    const/4 v5, 0x1

    .line 1402
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v6, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1403
    .local v4, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v4, :cond_1

    .line 1404
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 1405
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1406
    .local v3, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    if-ne v6, p2, :cond_0

    iget-object v6, v3, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    if-eq v6, p3, :cond_0

    .line 1416
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :goto_1
    return v5

    .line 1404
    .restart local v1       #i:I
    .restart local v3       #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1411
    .end local v1           #i:I
    .end local v3           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_1
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1412
    .local v0, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    iget v6, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    if-ne v6, p2, :cond_2

    goto :goto_1

    .line 1416
    .end local v0           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private removeProvider(Lcom/android/server/location/LocationProviderInterface;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 608
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    return-void
.end method

.method private removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2125
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeProximityAlert: intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 2131
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    .line 2132
    iput-object v3, p0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    .line 2134
    :cond_0
    return-void
.end method

.method private removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    .locals 21
    .parameter "receiver"

    .prologue
    .line 1618
    const-string v18, "LocationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "_removeUpdates: listener = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1623
    .local v4, callingUid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 1626
    .local v7, identity:J
    const/4 v11, 0x0

    .line 1627
    .local v11, package_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v12

    .line 1628
    .local v12, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v12, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v11

    .line 1629
    const/16 v17, 0x0

    .line 1632
    .local v17, sendExtraCmdFlag:Z
    const-string v18, "com.htc.laputa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1635
    const-string v18, "LocationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[LPS] (XXXXX) removeUpdatesLocked: com.htc.laputa , Receiver = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mKey:Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->isListener()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1641
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/LocationManagerService$Receiver;->getListener()Landroid/location/ILocationListener;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1642
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1643
    :try_start_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    move/from16 v18, v0

    if-lez v18, :cond_1

    .line 1644
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V

    .line 1645
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/server/LocationManagerService$Receiver;->mPendingBroadcasts:I

    .line 1647
    :cond_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1651
    :cond_2
    :try_start_2
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 1652
    .local v14, providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    .line 1653
    .local v9, oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v9, :cond_6

    .line 1655
    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1656
    .local v15, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v18

    if-nez v18, :cond_3

    .line 1657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v18, v0

    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 1658
    .local v10, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_3

    .line 1659
    invoke-interface {v10, v4}, Lcom/android/server/location/LocationProviderInterface;->removeListener(I)V

    .line 1664
    .end local v10           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_3
    const-string v18, "com.htc.laputa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$Receiver;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    iget-object v0, v15, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "gps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1668
    const-string v18, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v4, v2}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 1669
    const/16 v17, 0x1

    .line 1675
    :cond_4
    invoke-virtual {v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1737
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v9           #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v14           #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v18

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v18

    .line 1647
    :catchall_1
    move-exception v18

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v18

    .line 1678
    .restart local v6       #i$:Ljava/util/Iterator;
    .restart local v9       #oldRecords:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v14       #providers:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 1684
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1686
    .local v13, provider:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    .line 1689
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "com.htc.laputa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1692
    const-string v18, "LocationManagerService"

    const-string v19, "[LPS] removeUpdatesLocked: Call by back-door AP: com.htc.laputa"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    :cond_8
    const/4 v5, 0x0

    .line 1702
    .local v5, hasOtherListener:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/ArrayList;

    .line 1703
    .local v16, recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v16, :cond_9

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 1704
    const/4 v5, 0x1

    .line 1707
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/location/LocationProviderInterface;

    .line 1708
    .restart local v10       #p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v10, :cond_7

    .line 1709
    if-eqz v5, :cond_a

    .line 1710
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v20, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, v20

    invoke-interface {v10, v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1712
    const-string v18, "LocationManagerService"

    const-string v19, "[LPS] In removeUpdatesLocked.p.setMinTime:"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1714
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    const-string v18, "com.htc.laputa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_7

    if-eqz v17, :cond_7

    .line 1717
    const-string v18, "LocationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[LPS] (XXX) removeUpdatesLocked: enableLocationTracking(false) calling by back-door AP.  sendExtraCmdFlag = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    goto/16 :goto_1

    .line 1723
    :cond_a
    const-string v18, "LocationManagerService"

    const-string v19, "removeUpdatesLocked: enableLocationTracking(false)"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v10, v0}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1726
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_b

    if-eqz v17, :cond_b

    const-string v18, "gps"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_b

    .line 1727
    const-string v18, "LocationManagerService"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "[LPS] (XXX) Disable gps driver.  sendExtraCmdFlag = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1728
    invoke-interface {v10}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1731
    :cond_b
    const-string v18, "LocationManagerService"

    const-string v19, "In removeUpdatesLocked. Stop naviagation"

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    .line 1737
    .end local v5           #hasOtherListener:Z
    .end local v10           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v13           #provider:Ljava/lang/String;
    .end local v16           #recordsForProvider:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :cond_c
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1742
    const-string v18, "com.htc.laputa"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_d

    if-eqz v17, :cond_d

    .line 1745
    const/16 v18, 0x0

    sput-boolean v18, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    .line 1746
    const-string v18, "gps"

    const-string v19, "disable_backdoor_gps_request"

    new-instance v20, Landroid/os/Bundle;

    invoke-direct/range {v20 .. v20}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1747
    const-string v18, "LocationManagerService"

    const-string v19, "[LPS] removeUpdatesLocked: sendExtraCommand(disable_backdoor_gps_request)"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1750
    :cond_d
    return-void
.end method

.method private requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V
    .locals 21
    .parameter "provider"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "receiver"

    .prologue
    .line 1496
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1499
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/location/LocationProviderInterface;

    .line 1500
    .local v18, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v18, :cond_0

    .line 1501
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provider="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1504
    :cond_0
    sget-boolean v3, Lcom/android/server/LocationManagerService;->CUSTOMIZED_NLP_FEATURE:Z

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    const-string v3, "network"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1505
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[CustProvider][requestLocationUpdates] NLP="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/LocationManagerService;->mNetworkLocationProviderPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1509
    :cond_1
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/server/LocationManagerService$Receiver;->requiredPermissions:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p6

    iput-object v3, v0, Lcom/android/server/LocationManagerService$Receiver;->requiredPermissions:Ljava/lang/String;

    .line 1513
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1514
    .local v10, callingUid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 1515
    .local v20, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v19

    .line 1517
    .local v19, package_name:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v3}, Lcom/android/server/LocationManagerService;->providerHasListener(Ljava/lang/String;ILcom/android/server/LocationManagerService$Receiver;)Z

    move-result v3

    if-nez v3, :cond_9

    const/16 v16, 0x1

    .line 1518
    .local v16, newUid:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 1520
    .local v11, identity:J
    :try_start_0
    new-instance v2, Lcom/android/server/LocationManagerService$UpdateRecord;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lcom/android/server/LocationManagerService$UpdateRecord;-><init>(Lcom/android/server/LocationManagerService;Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;I)V

    .line 1522
    .local v2, r:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, p6

    iget-object v3, v0, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1523
    .local v17, oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    if-eqz v17, :cond_2

    .line 1524
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/LocationManagerService$UpdateRecord;->disposeLocked()V

    .line 1527
    :cond_2
    if-eqz v16, :cond_3

    .line 1528
    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lcom/android/server/location/LocationProviderInterface;->addListener(I)V

    .line 1531
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v13

    .line 1534
    .local v13, isProviderEnabled:Z
    const-string v3, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1539
    const-string v3, "com.htc.laputa"

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1543
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[LPS] (OOOOO) =6= requestLocationUpdatesLocked: com.htc.laputa , Receiver = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    .line 1547
    if-eqz v16, :cond_5

    .line 1549
    if-nez v13, :cond_4

    .line 1551
    const-string v3, "LocationManagerService"

    const-string v4, "[LPS] enable gps driver for BD."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    invoke-interface/range {v18 .. v18}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1554
    :cond_4
    const-string v3, "gps"

    const-string v4, "enable_backdoor_gps_request"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1556
    :cond_5
    const-string v3, "LocationManagerService"

    const-string v4, "[LPS] requestLocationUpdatesLocked: sendExtraCommand(enable_backdoor_gps_request)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    if-nez v13, :cond_6

    .line 1560
    const-string v3, "LocationManagerService"

    const-string v4, "[LPS] change isProviderEnabled = true for AP: com.htc.laputa"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1561
    const/4 v13, 0x1

    .line 1567
    :cond_6
    if-eqz v13, :cond_a

    .line 1568
    invoke-direct/range {p0 .. p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v14

    .line 1569
    .local v14, minTimeForProvider:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    move-object/from16 v0, v18

    invoke-interface {v0, v14, v15, v3}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1572
    if-eqz p5, :cond_7

    invoke-interface/range {v18 .. v18}, Lcom/android/server/location/LocationProviderInterface;->requestSingleShotFix()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1573
    :cond_7
    const-string v3, "LocationManagerService"

    const-string v4, "_requestLocationUpdates: enableLocationTracking(true)"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    const/4 v3, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1581
    .end local v14           #minTimeForProvider:J
    :cond_8
    :goto_1
    const-string v3, "LocationManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_requestLocationUpdates: provider = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1586
    return-void

    .line 1517
    .end local v2           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v11           #identity:J
    .end local v13           #isProviderEnabled:Z
    .end local v16           #newUid:Z
    .end local v17           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 1578
    .restart local v2       #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .restart local v11       #identity:J
    .restart local v13       #isProviderEnabled:Z
    .restart local v16       #newUid:Z
    .restart local v17       #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_a
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1584
    .end local v2           #r:Lcom/android/server/LocationManagerService$UpdateRecord;
    .end local v13           #isProviderEnabled:Z
    .end local v17           #oldRecord:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v3

    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private static shouldBroadcastSafe(Landroid/location/Location;Landroid/location/Location;Lcom/android/server/LocationManagerService$UpdateRecord;)Z
    .locals 8
    .parameter "loc"
    .parameter "lastLoc"
    .parameter "record"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2250
    if-nez p1, :cond_1

    .line 2252
    const-string v3, "LocationManagerService"

    const-string v4, "In shouldBroadcastSafe. We will return true as last loc =null orUlp position obtained got Hybrid provider clients"

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2272
    :cond_0
    :goto_0
    return v2

    .line 2260
    :cond_1
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_2

    move v2, v3

    .line 2261
    goto :goto_0

    .line 2265
    :cond_2
    iget v4, p2, Lcom/android/server/LocationManagerService$UpdateRecord;->mMinDistance:F

    float-to-double v0, v4

    .line 2266
    .local v0, minDistance:D
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-lez v4, :cond_0

    .line 2267
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v0

    if-gtz v4, :cond_0

    move v2, v3

    .line 2268
    goto :goto_0
.end method

.method private updateProviderListenersLocked(Ljava/lang/String;Z)V
    .locals 11
    .parameter "provider"
    .parameter "enabled"

    .prologue
    const/4 v10, 0x1

    .line 1219
    const/4 v3, 0x0

    .line 1221
    .local v3, listeners:I
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 1222
    .local v4, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v4, :cond_1

    .line 1277
    :cond_0
    :goto_0
    return-void

    .line 1226
    :cond_1
    const/4 v1, 0x0

    .line 1228
    .local v1, deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    iget-object v7, p0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v7, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1229
    .local v6, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    if-eqz v6, :cond_4

    .line 1230
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1231
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 1232
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 1234
    .local v5, record:Lcom/android/server/LocationManagerService$UpdateRecord;
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v7, p1, p2}, Lcom/android/server/LocationManagerService$Receiver;->callProviderEnabledLocked(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1235
    if-nez v1, :cond_2

    .line 1236
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .restart local v1       #deadReceivers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_2
    iget-object v7, v5, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1240
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 1231
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1244
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v5           #record:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_4
    if-eqz v1, :cond_5

    .line 1245
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .restart local v2       #i:I
    :goto_2
    if-ltz v2, :cond_5

    .line 1246
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/LocationManagerService$Receiver;

    invoke-direct {p0, v7}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1245
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1250
    .end local v2           #i:I
    :cond_5
    if-eqz p2, :cond_6

    .line 1251
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->enable()V

    .line 1252
    if-lez v3, :cond_0

    .line 1253
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getMinTimeLocked(Ljava/lang/String;)J

    move-result-wide v7

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-interface {v4, v7, v8, v9}, Lcom/android/server/location/LocationProviderInterface;->setMinTime(JLandroid/os/WorkSource;)V

    .line 1254
    const-string v7, "LocationManagerService"

    const-string v8, "updateProviderListenersLocked: enableLocationTracking(true)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    invoke-interface {v4, v10}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1257
    const-string v7, "LocationManagerService"

    const-string v8, "In updateProviderListenersLocked:after setMinTime & gps_start"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1262
    :cond_6
    sget-boolean v7, Lcom/android/server/LocationManagerService;->mHtcAllowAPTrigger:Z

    if-ne v7, v10, :cond_7

    .line 1264
    const-string v7, "LocationManagerService"

    const-string v8, "[LPS] updateProviderListenersLocked: SKIP ... enableLocationTracking(false), due to allow AP has been trigger"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1268
    :cond_7
    const-string v7, "LocationManagerService"

    const-string v8, "updateProviderListenersLocked: enableLocationTracking(false)"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/4 v7, 0x0

    invoke-interface {v4, v7}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 1270
    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 1272
    const-string v7, "LocationManagerService"

    const-string v8, "In updateProviderListenersLocked:After gps stop"

    invoke-static {v7, v8}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateProvidersLocked()V
    .locals 15

    .prologue
    const/16 v11, 0xd8

    const/4 v14, 0x3

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 1129
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1130
    .local v7, resolver:Landroid/content/ContentResolver;
    const-string v9, "location_providers_allowed"

    invoke-static {v7, v9}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1132
    .local v0, allowedProviders:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1133
    const-string v9, "gps"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1134
    sget v9, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    if-eqz v9, :cond_0

    .line 1136
    sput v13, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 1138
    const-string v9, "LocationManagerService"

    const-string v10, "##### updateProvidersLocked #####: enable_lock: 0 (Enable)"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v11, :cond_0

    .line 1143
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "##### updateProvidersLocked #####: sendMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

    invoke-static {v9, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1145
    .local v4, m:Landroid/os/Message;
    sget v9, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 1146
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

    invoke-virtual {v9, v4}, Lcom/android/server/LocationManagerService$HTCLocationHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1172
    .end local v4           #m:Landroid/os/Message;
    :cond_0
    :goto_0
    const-string v9, "LocationManagerService"

    const-string v10, "HTC_CAR_GPS_Support: updateProvidersLocked begin"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v9}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1175
    if-eqz v0, :cond_1

    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v9}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1176
    const-string v9, "gps"

    invoke-virtual {v0, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1177
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v9}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_1

    .line 1178
    const-string v9, "LocationManagerService"

    const-string v10, "updateProvidersLocked setTestProviderEnabled = true"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1180
    :try_start_0
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    const-string v11, "gps"

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1181
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    const-string v11, "gps"

    invoke-interface {v9, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1182
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1196
    :cond_1
    :goto_1
    const/4 v1, 0x0

    .line 1197
    .local v1, changesMade:Z
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_6

    .line 1198
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/location/LocationProviderInterface;

    .line 1199
    .local v6, p:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->isEnabled()Z

    move-result v3

    .line 1200
    .local v3, isEnabled:Z
    invoke-interface {v6}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, name:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/server/LocationManagerService;->isAllowedBySettingsLocked(Ljava/lang/String;)Z

    move-result v8

    .line 1202
    .local v8, shouldBeEnabled:Z
    if-eqz v3, :cond_5

    if-nez v8, :cond_5

    .line 1203
    invoke-direct {p0, v5, v13}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1204
    const/4 v1, 0x1

    .line 1197
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1152
    .end local v1           #changesMade:Z
    .end local v2           #i:I
    .end local v3           #isEnabled:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v8           #shouldBeEnabled:Z
    :cond_3
    sget v9, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    if-eq v9, v12, :cond_0

    .line 1154
    sput v12, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    .line 1156
    const-string v9, "LocationManagerService"

    const-string v10, "##### updateProvidersLocked #####: enable_lock: 1 (Disable)"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    sget-short v9, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    if-ne v9, v11, :cond_0

    .line 1161
    const-string v9, "LocationManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "##### updateProvidersLocked #####: sendMessage "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

    invoke-static {v9, v14}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 1163
    .restart local v4       #m:Landroid/os/Message;
    sget v9, Lcom/android/server/LocationManagerService;->mPrivacyLock:I

    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 1164
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

    invoke-virtual {v9, v4}, Lcom/android/server/LocationManagerService$HTCLocationHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 1182
    .end local v4           #m:Landroid/os/Message;
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1185
    :cond_4
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v9}, Lcom/android/server/location/CarGpsProvider;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1186
    const-string v9, "LocationManagerService"

    const-string v10, "updateProvidersLocked setTestProviderEnabled = false"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    iget-object v10, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1188
    :try_start_2
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    const-string v11, "gps"

    invoke-interface {v9, v11}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1189
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    const-string v11, "gps"

    invoke-interface {v9, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1190
    monitor-exit v10

    goto/16 :goto_1

    :catchall_1
    move-exception v9

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v9

    .line 1205
    .restart local v1       #changesMade:Z
    .restart local v2       #i:I
    .restart local v3       #isEnabled:Z
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #p:Lcom/android/server/location/LocationProviderInterface;
    .restart local v8       #shouldBeEnabled:Z
    :cond_5
    if-nez v3, :cond_2

    if-eqz v8, :cond_2

    .line 1206
    invoke-direct {p0, v5, v12}, Lcom/android/server/LocationManagerService;->updateProviderListenersLocked(Ljava/lang/String;Z)V

    .line 1207
    const/4 v1, 0x1

    goto :goto_3

    .line 1210
    .end local v3           #isEnabled:Z
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #p:Lcom/android/server/location/LocationProviderInterface;
    .end local v8           #shouldBeEnabled:Z
    :cond_6
    if-eqz v1, :cond_7

    .line 1211
    iget-object v9, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1214
    :cond_7
    const-string v9, "LocationManagerService"

    const-string v10, "HTC_CAR_GPS_Support: updateProvidersLocked end"

    invoke-static {v9, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    return-void
.end method


# virtual methods
.method public addCarGpsProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "name"

    .prologue
    const/4 v5, 0x0

    .line 2727
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider++"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2728
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-nez v3, :cond_1

    .line 2729
    const-string v3, "HTCMock"

    const-string v4, "mGpsLocationProvider is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2776
    :cond_0
    :goto_0
    return-void

    .line 2732
    :cond_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v3, :cond_0

    .line 2734
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    const-string v4, "gps"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2735
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider, someone register the gps mock first, we don\'t do anything"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->enableHtcMode()V

    .line 2737
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->disable()V

    .line 2738
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2739
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Illegal CarGpsProvider, someone register the gps mock first, we don\'t do anything"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2741
    :cond_2
    const-string v3, "HTCMock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCarGpsProvider, name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2743
    const-string v3, "htcMock"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2745
    const-string p1, "gps"

    .line 2746
    const-string v3, "HTCMock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addCarGpsProvider, LocationManager.GPS_PROVIDER: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2752
    .local v0, identity:J
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2753
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->enableHtcMode()V

    .line 2754
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2755
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/LocationProviderInterface;

    .line 2756
    .local v2, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v2, :cond_3

    .line 2757
    const-string v3, "HTCMock"

    const-string v5, "addCarGpsProvider: p.disable() and removeProvider(p)"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2758
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2759
    invoke-interface {v2}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 2760
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2762
    :cond_3
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 2763
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" already exists"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2773
    .end local v2           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2748
    .end local v0           #identity:J
    :cond_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal CarGpsProvider Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2765
    .restart local v0       #identity:J
    .restart local v2       #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2767
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2768
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    const-string v3, "HTCMock"

    const-string v5, "addCarGpsProvider++, add to mMockProviders"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2770
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "addCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2772
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2773
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2774
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    const-string v3, "HTCMock"

    const-string v4, "addCarGpsProvider--"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)Z
    .locals 8
    .parameter "listener"

    .prologue
    const/4 v4, 0x0

    .line 1753
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    if-nez v5, :cond_0

    .line 1788
    :goto_0
    return v4

    .line 1756
    :cond_0
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 1758
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires ACCESS_FINE_LOCATION permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1762
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1763
    .local v0, callingUid:I
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1764
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1767
    .local v2, package_name:Ljava/lang/String;
    const-string v5, "com.htc.laputa"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1768
    const-string v5, "gps"

    const-string v6, "enable_backdoor_gps_listener"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 1770
    :cond_2
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1772
    :try_start_0
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v6, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1775
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v6, :cond_3

    .line 1776
    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v6}, Lcom/android/server/location/CarGpsProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v6

    invoke-interface {v6, p1}, Landroid/location/IGpsStatusProvider;->addGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1777
    const-string v6, "LocationManagerService"

    const-string v7, "add listener to CarGpsProvider to provide NMEA"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1784
    :cond_3
    :try_start_1
    monitor-exit v5

    .line 1788
    const/4 v4, 0x1

    goto :goto_0

    .line 1780
    :catch_0
    move-exception v1

    .line 1781
    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "LocationManagerService"

    const-string v7, "mGpsStatusProvider.addGpsStatusListener failed"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1782
    monitor-exit v5

    goto :goto_0

    .line 1784
    .end local v1           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public addProximityAlert(DDFJLandroid/app/PendingIntent;)V
    .locals 5
    .parameter "latitude"
    .parameter "longitude"
    .parameter "radius"
    .parameter "expiration"
    .parameter "intent"

    .prologue
    .line 2061
    invoke-virtual {p0, p8}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 2063
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2064
    :try_start_1
    invoke-direct/range {p0 .. p8}, Lcom/android/server/LocationManagerService;->addProximityAlertLocked(DDFJLandroid/app/PendingIntent;)V

    .line 2065
    monitor-exit v4

    .line 2073
    :goto_0
    return-void

    .line 2065
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2066
    :catch_0
    move-exception v2

    .line 2067
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 2068
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2069
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 2070
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2071
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "addProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public addTestProvider(Ljava/lang/String;ZZZZZZZII)V
    .locals 17
    .parameter "name"
    .parameter "requiresNetwork"
    .parameter "requiresSatellite"
    .parameter "requiresCell"
    .parameter "hasMonetaryCost"
    .parameter "supportsAltitude"
    .parameter "supportsSpeed"
    .parameter "supportsBearing"
    .parameter "powerRequirement"
    .parameter "accuracy"

    .prologue
    .line 2831
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2833
    const-string v2, "passive"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2834
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot mock the passive location provider"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2837
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    .line 2838
    .local v13, identity:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    move-object/from16 v16, v0

    monitor-enter v16

    .line 2839
    :try_start_0
    new-instance v1, Lcom/android/server/location/MockProvider;

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    invoke-direct/range {v1 .. v12}, Lcom/android/server/location/MockProvider;-><init>(Ljava/lang/String;Landroid/location/ILocationManager;ZZZZZZZII)V

    .line 2844
    .local v1, provider:Lcom/android/server/location/MockProvider;
    const-string v2, "gps"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "network"

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2846
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/location/LocationProviderInterface;

    .line 2847
    .local v15, p:Lcom/android/server/location/LocationProviderInterface;
    if-eqz v15, :cond_2

    .line 2848
    const-string v2, "LocationManagerService"

    const-string v3, "addTestProvider: enableLocationTracking(false)"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2849
    const/4 v2, 0x0

    invoke-interface {v15, v2}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2850
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2853
    .end local v15           #p:Lcom/android/server/location/LocationProviderInterface;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2854
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" already exists"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2860
    .end local v1           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v2

    monitor-exit v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2856
    .restart local v1       #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2857
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2858
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2859
    invoke-direct/range {p0 .. p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2860
    monitor-exit v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2861
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2863
    const-string v2, "HTCMock"

    const-string v3, "addTestProvider--"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2865
    return-void
.end method

.method public clearTestProviderEnabled(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2955
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2956
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2957
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2958
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2959
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2966
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2961
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2962
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2963
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2964
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2965
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2966
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2967
    return-void
.end method

.method public clearTestProviderLocation(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2922
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2923
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2924
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2925
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2926
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2929
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2928
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearLocation()V

    .line 2929
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2930
    return-void
.end method

.method public clearTestProviderStatus(Ljava/lang/String;)V
    .locals 5
    .parameter "provider"

    .prologue
    .line 2981
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2982
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2983
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2984
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2985
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2988
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2987
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Lcom/android/server/location/MockProvider;->clearStatus()V

    .line 2988
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2989
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v14, "android.permission.DUMP"

    invoke-virtual {v13, v14}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v13

    if-eqz v13, :cond_0

    .line 3000
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Permission Denial: can\'t dump LocationManagerService from from pid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", uid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3082
    :goto_0
    return-void

    .line 3006
    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 3007
    :try_start_0
    const-string v13, "Current Location Manager state:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3008
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  sProvidersLoaded="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v15, Lcom/android/server/LocationManagerService;->sProvidersLoaded:Z

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3009
    const-string v13, "  Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3010
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 3011
    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 3012
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3011
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3014
    :cond_1
    const-string v13, "  Location Listeners:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3015
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v2           #i:I
    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$Receiver;

    .line 3016
    .local v2, i:Lcom/android/server/LocationManagerService$Receiver;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3017
    iget-object v13, v2, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 3018
    .local v10, j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3019
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$UpdateRecord;

    const-string v15, "        "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 3081
    .end local v1           #N:I
    .end local v2           #i:Lcom/android/server/LocationManagerService$Receiver;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #j:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 3022
    .restart local v1       #N:I
    :cond_3
    :try_start_1
    const-string v13, "  Records by Provider:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3024
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 3025
    .local v6, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3026
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/LocationManagerService$UpdateRecord;

    .line 3027
    .local v9, j:Lcom/android/server/LocationManagerService$UpdateRecord;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "      "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3028
    const-string v13, "        "

    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v13}, Lcom/android/server/LocationManagerService$UpdateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_3

    .line 3031
    .end local v6           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;>;"
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #j:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_5
    const-string v13, "  Last Known Locations:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3033
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 3034
    .local v4, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3035
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/location/Location;

    new-instance v15, Landroid/util/PrintWriterPrinter;

    move-object/from16 v0, p2

    invoke-direct {v15, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v16, "      "

    move-object/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_4

    .line 3037
    .end local v4           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/location/Location;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_7

    .line 3038
    const-string v13, "  Proximity Alerts:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3040
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3041
    .local v3, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3042
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/LocationManagerService$ProximityAlert;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_5

    .line 3045
    .end local v3           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/app/PendingIntent;Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->size()I

    move-result v13

    if-lez v13, :cond_8

    .line 3046
    const-string v13, "  Proximities Entered:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3047
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 3048
    .local v2, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3049
    const-string v13, "      "

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Lcom/android/server/LocationManagerService$ProximityAlert;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_6

    .line 3052
    .end local v2           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_8
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityReceiver="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityReceiver:Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3053
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "  mProximityListener="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/LocationManagerService;->mProximityListener:Landroid/location/ILocationListener;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3054
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_9

    .line 3055
    const-string v13, "  Enabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3056
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3057
    .local v2, i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 3061
    .end local v2           #i:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v13

    if-lez v13, :cond_a

    .line 3062
    const-string v13, "  Disabled Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3063
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3064
    .restart local v2       #i:Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "    "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 3068
    .end local v2           #i:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v13

    if-lez v13, :cond_b

    .line 3069
    const-string v13, "  Mock Providers:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3071
    .local v5, i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/MockProvider;

    const-string v15, "      "

    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v15}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_9

    .line 3074
    .end local v5           #i:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/location/MockProvider;>;"
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/location/LocationProviderInterface;

    .line 3075
    .local v11, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getInternalState()Ljava/lang/String;

    move-result-object v12

    .line 3076
    .local v12, state:Ljava/lang/String;
    if-eqz v12, :cond_c

    .line 3077
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v11}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " Internal State:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3078
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_a

    .line 3081
    .end local v11           #provider:Lcom/android/server/location/LocationProviderInterface;
    .end local v12           #state:Ljava/lang/String;
    :cond_d
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public geocoderIsPresent()Z
    .locals 1

    .prologue
    .line 2665
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 860
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 861
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->_getAllProvidersLocked()Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 867
    :goto_0
    return-object v2

    .line 862
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 863
    :catch_0
    move-exception v1

    .line 864
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 865
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 866
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getAllProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 867
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;
    .locals 6
    .parameter "criteria"
    .parameter "enabledOnly"

    .prologue
    const/4 v5, 0x0

    .line 1065
    invoke-virtual {p0, p1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1066
    .local v2, goodProviders:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1067
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1116
    :goto_0
    return-object v4

    .line 1071
    :cond_0
    new-instance v1, Landroid/location/Criteria;

    invoke-direct {v1, p1}, Landroid/location/Criteria;-><init>(Landroid/location/Criteria;)V

    .line 1074
    .end local p1
    .local v1, criteria:Landroid/location/Criteria;
    invoke-virtual {v1}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    .line 1075
    .local v3, power:I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 1076
    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->nextPower(I)I

    move-result v3

    .line 1077
    invoke-virtual {v1, v3}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 1078
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 1080
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1081
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1085
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_2
    invoke-virtual {v1}, Landroid/location/Criteria;->getAccuracy()I

    move-result v0

    .line 1086
    .local v0, accuracy:I
    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v0, :cond_3

    .line 1087
    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->nextAccuracy(I)I

    move-result v0

    .line 1088
    invoke-virtual {v1, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 1089
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    .line 1091
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1092
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1096
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_4
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 1097
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1098
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 1099
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto :goto_0

    .line 1103
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_5
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 1104
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1105
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1106
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1110
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_6
    invoke-virtual {v1, v5}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 1111
    invoke-virtual {p0, v1, p2}, Lcom/android/server/LocationManagerService;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    .line 1112
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 1113
    invoke-direct {p0, v2}, Lcom/android/server/LocationManagerService;->best(Ljava/util/List;)Lcom/android/server/location/LocationProviderInterface;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/location/LocationProviderInterface;->getName()Ljava/lang/String;

    move-result-object v4

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0

    .line 1116
    .end local p1
    .restart local v1       #criteria:Landroid/location/Criteria;
    :cond_7
    const/4 v4, 0x0

    move-object p1, v1

    .end local v1           #criteria:Landroid/location/Criteria;
    .restart local p1
    goto/16 :goto_0
.end method

.method public getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .parameter "latitude"
    .parameter "longitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2670
    .local p7, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2671
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/location/GeocoderProxy;->getFromLocation(DDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2674
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;
    .locals 13
    .parameter "locationName"
    .parameter "lowerLeftLatitude"
    .parameter "lowerLeftLongitude"
    .parameter "upperRightLatitude"
    .parameter "upperRightLongitude"
    .parameter "maxResults"
    .parameter "params"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDDI",
            "Landroid/location/GeocoderParams;",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 2683
    .local p12, addrs:Ljava/util/List;,"Ljava/util/List<Landroid/location/Address;>;"
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    if-eqz v0, :cond_0

    .line 2684
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/location/GeocoderProxy;->getFromLocationName(Ljava/lang/String;DDDDILandroid/location/GeocoderParams;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2688
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    .locals 5
    .parameter "provider"

    .prologue
    .line 2215
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLastKnownLocation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2218
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2219
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getLastKnownLocationLocked(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    monitor-exit v3

    .line 2225
    :goto_0
    return-object v2

    .line 2220
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2221
    :catch_0
    move-exception v1

    .line 2222
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2223
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getLastKnownLocation got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2225
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5
    .parameter "provider"

    .prologue
    .line 2143
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2144
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_getProviderInfoLocked(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    monitor-exit v4

    .line 2152
    :goto_0
    return-object v3

    .line 2145
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2146
    :catch_0
    move-exception v2

    .line 2147
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 2148
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2149
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 2150
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2151
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "_getProviderInfo got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2152
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getProviders(Landroid/location/Criteria;Z)Ljava/util/List;
    .locals 4
    .parameter "criteria"
    .parameter "enabledOnly"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Criteria;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 885
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 886
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/LocationManagerService;->_getProvidersLocked(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v2

    monitor-exit v3

    .line 892
    :goto_0
    return-object v2

    .line 887
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 888
    :catch_0
    move-exception v1

    .line 889
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 890
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 891
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "getProviders got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 892
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 4
    .parameter "provider"

    .prologue
    .line 2180
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2181
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->_isProviderEnabledLocked(Ljava/lang/String;)Z

    move-result v2

    monitor-exit v3

    .line 2187
    :goto_0
    return v2

    .line 2182
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2183
    :catch_0
    move-exception v1

    .line 2184
    .local v1, se:Ljava/lang/SecurityException;
    throw v1

    .line 2185
    .end local v1           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v0

    .line 2186
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "isProviderEnabled got exception:"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2187
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public locationCallbackFinished(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 469
    invoke-interface {p1}, Landroid/location/ILocationListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 470
    .local v0, binder:Landroid/os/IBinder;
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    .line 471
    .local v3, receiver:Lcom/android/server/LocationManagerService$Receiver;
    if-eqz v3, :cond_0

    .line 472
    monitor-enter v3

    .line 474
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 475
    .local v1, identity:J
    #calls: Lcom/android/server/LocationManagerService$Receiver;->decrementPendingBroadcastsLocked()V
    invoke-static {v3}, Lcom/android/server/LocationManagerService$Receiver;->access$700(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 476
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 477
    monitor-exit v3

    .line 479
    .end local v1           #identity:J
    :cond_0
    return-void

    .line 477
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public notifyNema(JLjava/lang/String;)V
    .locals 2
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    .line 2718
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v0, :cond_0

    .line 2719
    iget-object v0, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v0, p3, p1, p2}, Lcom/android/server/location/CarGpsProvider;->reportNmea(Ljava/lang/String;J)V

    .line 2723
    :goto_0
    return-void

    .line 2722
    :cond_0
    const-string v0, "HTCMock"

    const-string v1, "notifyNema Error, mCarGpsProvider is NULL!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public providerMeetsCriteria(Ljava/lang/String;Landroid/location/Criteria;)Z
    .locals 4
    .parameter "provider"
    .parameter "criteria"

    .prologue
    .line 1120
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1121
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_0

    .line 1122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "provider="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1124
    :cond_0
    invoke-interface {v0, p2}, Lcom/android/server/location/LocationProviderInterface;->meetsCriteria(Landroid/location/Criteria;)Z

    move-result v1

    return v1
.end method

.method public removeCarGpsProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "name"

    .prologue
    .line 2780
    const-string v3, "HTCMock"

    const-string v4, "removeCarGpsProvider++"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-nez v3, :cond_0

    .line 2782
    const-string v3, "HTCMock"

    const-string v4, "mCarGpsProvider is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2825
    :goto_0
    return-void

    .line 2785
    :cond_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-nez v3, :cond_1

    .line 2786
    const-string v3, "HTCMock"

    const-string v4, "mGpsLocationProvider is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2789
    :cond_1
    const-string v3, "htcMock"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2790
    const-string p1, "gps"

    .line 2791
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->disableHtcMode()V

    .line 2795
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2796
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2798
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2799
    .local v2, provider:Lcom/android/server/location/MockProvider;
    if-eqz v2, :cond_4

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2800
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2801
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2803
    const-string v3, "HTCMock"

    const-string v5, "removeCarGpsProvider++, remove from mMockProviders"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2804
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeCarGpsProvider++, mMockProviders size:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2806
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_2

    .line 2808
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Lcom/android/server/location/LocationProviderInterface;->enableLocationTracking(Z)V

    .line 2809
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-interface {v3}, Lcom/android/server/location/LocationProviderInterface;->disable()V

    .line 2810
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2811
    const-string v3, "HTCMock"

    const-string v5, "removeCarGpsProvider++, addProvider with mGpsLocationProvider"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2822
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2823
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    const-string v3, "HTCMock"

    const-string v4, "removeCarGpsProvider--"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2793
    .end local v0           #identity:J
    .end local v2           #provider:Lcom/android/server/location/MockProvider;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal removeCarGpsProvider Name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2814
    .restart local v0       #identity:J
    .restart local v2       #provider:Lcom/android/server/location/MockProvider;
    :cond_4
    if-eqz v2, :cond_5

    :try_start_1
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v3

    if-nez v3, :cond_5

    .line 2815
    const-string v3, "HTCMock"

    const-string v5, "removeCarGpsProvider++, there has gps mock, we don\'t do anything"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2823
    .end local v0           #identity:J
    .end local v2           #provider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 2818
    .restart local v0       #identity:J
    .restart local v2       #provider:Lcom/android/server/location/MockProvider;
    :cond_5
    :try_start_2
    const-string v3, "HTCMock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeCarGpsProvider++, provider = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mCarGpsProvider.isUsedMock()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v6}, Lcom/android/server/location/CarGpsProvider;->isUsedMock()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 8
    .parameter "listener"

    .prologue
    .line 1794
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1795
    .local v0, callingUid:I
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 1796
    .local v3, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1802
    .local v2, package_name:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1804
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    invoke-interface {v4, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1807
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v4, :cond_0

    .line 1808
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v4}, Lcom/android/server/location/CarGpsProvider;->getGpsStatusProvider()Landroid/location/IGpsStatusProvider;

    move-result-object v4

    invoke-interface {v4, p1}, Landroid/location/IGpsStatusProvider;->removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V

    .line 1809
    const-string v4, "LocationManagerService"

    const-string v6, "remove listener from CarGpsProvider"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    :cond_0
    const-string v4, "com.htc.laputa"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1816
    const-string v4, "gps"

    const-string v6, "disable_backdoor_gps_listener"

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/server/LocationManagerService;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1822
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v5

    .line 1824
    return-void

    .line 1819
    :catch_0
    move-exception v1

    .line 1820
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "LocationManagerService"

    const-string v6, "mGpsStatusProvider.removeGpsStatusListener failed"

    invoke-static {v4, v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1822
    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeProximityAlert(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 2111
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 2112
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V

    .line 2113
    monitor-exit v4

    .line 2121
    :goto_0
    return-void

    .line 2113
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 2114
    :catch_0
    move-exception v2

    .line 2115
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 2116
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 2117
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 2118
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 2119
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeProximityAlert got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeTestProvider(Ljava/lang/String;)V
    .locals 7
    .parameter "provider"

    .prologue
    .line 2869
    const-string v3, "HTCMock"

    const-string v4, "removeTestProvider++"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2871
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2872
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2873
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2874
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2875
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2904
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2877
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2878
    .local v0, identity:J
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2880
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2884
    const-string v3, "gps"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    if-eqz v3, :cond_3

    .line 2887
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3}, Lcom/android/server/location/CarGpsProvider;->isHtcMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2888
    const-string v3, "HTCMock"

    const-string v5, "removeTestProvider++, addProvider with mCarGpsProvider"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2889
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    .line 2890
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    const-string v5, "gps"

    iget-object v6, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2891
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mCarGpsProvider:Lcom/android/server/location/CarGpsProvider;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/location/CarGpsProvider;->useMock(Z)V

    .line 2901
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mLastKnownLocation:Ljava/util/HashMap;

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2902
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2903
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2904
    monitor-exit v4

    .line 2905
    return-void

    .line 2893
    :cond_2
    const-string v3, "HTCMock"

    const-string v5, "removeTestProvider++, addProvider with mGpsLocationProvider"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mGpsLocationProvider:Lcom/android/server/location/LocationProviderInterface;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V

    goto :goto_0

    .line 2897
    :cond_3
    const-string v3, "network"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    if-eqz v3, :cond_1

    .line 2899
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mNetworkLocationProvider:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->addProvider(Lcom/android/server/location/LocationProviderInterface;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public removeUpdates(Landroid/location/ILocationListener;)V
    .locals 5
    .parameter "listener"

    .prologue
    .line 1590
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1591
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1592
    monitor-exit v4

    .line 1600
    :goto_0
    return-void

    .line 1592
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1593
    :catch_0
    move-exception v2

    .line 1594
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1595
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1596
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1597
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1598
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeUpdatesPI(Landroid/app/PendingIntent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1604
    :try_start_0
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1605
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V

    .line 1606
    monitor-exit v4

    .line 1614
    :goto_0
    return-void

    .line 1606
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1607
    :catch_0
    move-exception v2

    .line 1608
    .local v2, se:Ljava/lang/SecurityException;
    throw v2

    .line 1609
    .end local v2           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v1

    .line 1610
    .local v1, iae:Ljava/lang/IllegalArgumentException;
    throw v1

    .line 1611
    .end local v1           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 1612
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "LocationManagerService"

    const-string v4, "removeUpdates got exception:"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public reportLocation(Landroid/location/Location;Z)V
    .locals 4
    .parameter "location"
    .parameter "passive"

    .prologue
    const/4 v1, 0x1

    .line 2192
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.INSTALL_LOCATION_PROVIDER"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 2194
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires INSTALL_LOCATION_PROVIDER permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2197
    :cond_0
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2198
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-static {v2, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2199
    .local v0, m:Landroid/os/Message;
    if-eqz p2, :cond_1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 2200
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2201
    return-void

    .line 2199
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestLocationUpdates(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/location/ILocationListener;)V
    .locals 13
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "listener"

    .prologue
    .line 1422
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In requestLocationUpdates. provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " minTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " single shot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p7

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1425
    if-eqz p2, :cond_0

    .line 1427
    const-string v2, "LocationManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "In requestLocationUpdates. Criteria not null. Cirteria.HorizAccuracy: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/location/Criteria;->getHorizontalAccuracy()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Criteria.power "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    const/4 v2, 0x1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no providers found for criteria"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1439
    :cond_0
    :try_start_0
    iget-object v12, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1440
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/location/ILocationListener;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v8

    move-object v2, p0

    move-object v3, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v2 .. v8}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1442
    monitor-exit v12

    .line 1450
    :goto_0
    return-void

    .line 1442
    :catchall_0
    move-exception v2

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1443
    :catch_0
    move-exception v11

    .line 1444
    .local v11, se:Ljava/lang/SecurityException;
    throw v11

    .line 1445
    .end local v11           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v10

    .line 1446
    .local v10, iae:Ljava/lang/IllegalArgumentException;
    throw v10

    .line 1447
    .end local v10           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v9

    .line 1448
    .local v9, e:Ljava/lang/Exception;
    const-string v2, "LocationManagerService"

    const-string v3, "requestUpdates got exception:"

    invoke-static {v2, v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestLocationUpdatesPI(Ljava/lang/String;Landroid/location/Criteria;JFZLandroid/app/PendingIntent;)V
    .locals 12
    .parameter "provider"
    .parameter "criteria"
    .parameter "minTime"
    .parameter "minDistance"
    .parameter "singleShot"
    .parameter "intent"

    .prologue
    .line 1466
    move-object/from16 v0, p7

    invoke-virtual {p0, v0}, Lcom/android/server/LocationManagerService;->validatePendingIntent(Landroid/app/PendingIntent;)V

    .line 1467
    if-eqz p2, :cond_0

    .line 1469
    const-string v1, "LocationManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In requestLocationUpdates. Criteria not null. Cirteria.accuracy: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/location/Criteria;->getAccuracy()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Criteria.power "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/location/Criteria;->getPowerRequirement()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1474
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/LocationManagerService;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object p1

    .line 1475
    if-nez p1, :cond_0

    .line 1476
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "no providers found for criteria"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1480
    :cond_0
    :try_start_0
    iget-object v11, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1481
    :try_start_1
    move-object/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/android/server/LocationManagerService;->getReceiver(Landroid/app/PendingIntent;)Lcom/android/server/LocationManagerService$Receiver;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/LocationManagerService;->requestLocationUpdatesLocked(Ljava/lang/String;JFZLcom/android/server/LocationManagerService$Receiver;)V

    .line 1483
    monitor-exit v11

    .line 1491
    :goto_0
    return-void

    .line 1483
    :catchall_0
    move-exception v1

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1484
    :catch_0
    move-exception v10

    .line 1485
    .local v10, se:Ljava/lang/SecurityException;
    throw v10

    .line 1486
    .end local v10           #se:Ljava/lang/SecurityException;
    :catch_1
    move-exception v9

    .line 1487
    .local v9, iae:Ljava/lang/IllegalArgumentException;
    throw v9

    .line 1488
    .end local v9           #iae:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v8

    .line 1489
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "LocationManagerService"

    const-string v2, "requestUpdates got exception:"

    invoke-static {v1, v2, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 791
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 792
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 793
    new-instance v0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$LocationWorkerHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    .line 794
    new-instance v0, Lcom/android/server/LocationManagerService$HTCLocationHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/LocationManagerService$HTCLocationHandler;-><init>(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/LocationManagerService;->mHTCLocationHandler:Lcom/android/server/LocationManagerService$HTCLocationHandler;

    .line 795
    const-string v0, "LocationManagerService"

    const-string v1, "initialize+"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->initialize()V

    .line 797
    const-string v0, "LocationManagerService"

    const-string v1, "initialize-"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 799
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 3
    .parameter "provider"
    .parameter "command"
    .parameter "extras"

    .prologue
    .line 1827
    if-nez p1, :cond_0

    .line 1829
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1833
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/LocationManagerService;->checkPermissionsSafe(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1835
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_LOCATION_EXTRA_COMMANDS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 1837
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires ACCESS_LOCATION_EXTRA_COMMANDS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1840
    :cond_1
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1841
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mProvidersByName:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/LocationProviderInterface;

    .line 1842
    .local v0, p:Lcom/android/server/location/LocationProviderInterface;
    if-nez v0, :cond_2

    .line 1843
    const/4 v1, 0x0

    monitor-exit v2

    .line 1846
    :goto_0
    return v1

    :cond_2
    invoke-interface {v0, p2, p3}, Lcom/android/server/location/LocationProviderInterface;->sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    .line 1847
    .end local v0           #p:Lcom/android/server/location/LocationProviderInterface;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public sendNiResponse(II)Z
    .locals 3
    .parameter "notifId"
    .parameter "userResponse"

    .prologue
    .line 1852
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1853
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "calling sendNiResponse from outside of the system is not allowed"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1857
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    invoke-interface {v1, p1, p2}, Landroid/location/INetInitiatedListener;->sendNiResponse(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1862
    :goto_0
    return v1

    .line 1859
    :catch_0
    move-exception v0

    .line 1861
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "LocationManagerService"

    const-string v2, "RemoteException in LocationManagerService.sendNiResponse"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTestProviderEnabled(Ljava/lang/String;Z)V
    .locals 7
    .parameter "provider"
    .parameter "enabled"

    .prologue
    .line 2933
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2934
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2935
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2936
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2937
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2951
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2939
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2940
    .local v0, identity:J
    if-eqz p2, :cond_1

    .line 2941
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->enable()V

    .line 2942
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2943
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2949
    :goto_0
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->updateProvidersLocked()V

    .line 2950
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2951
    monitor-exit v4

    .line 2952
    return-void

    .line 2945
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/location/MockProvider;->disable()V

    .line 2946
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mEnabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2947
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mDisabledProviders:Ljava/util/Set;

    invoke-interface {v3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public setTestProviderLocation(Ljava/lang/String;Landroid/location/Location;)V
    .locals 7
    .parameter "provider"
    .parameter "loc"

    .prologue
    .line 2908
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2909
    iget-object v4, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2910
    :try_start_0
    iget-object v3, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/MockProvider;

    .line 2911
    .local v2, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v2, :cond_0

    .line 2912
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Provider \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\" unknown"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2918
    .end local v2           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 2915
    .restart local v2       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2916
    .local v0, identity:J
    invoke-virtual {v2, p2}, Lcom/android/server/location/MockProvider;->setLocation(Landroid/location/Location;)V

    .line 2917
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2919
    return-void
.end method

.method public setTestProviderStatus(Ljava/lang/String;ILandroid/os/Bundle;J)V
    .locals 5
    .parameter "provider"
    .parameter "status"
    .parameter "extras"
    .parameter "updateTime"

    .prologue
    .line 2970
    invoke-direct {p0}, Lcom/android/server/LocationManagerService;->checkMockPermissionsSafe()V

    .line 2971
    iget-object v2, p0, Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2972
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LocationManagerService;->mMockProviders:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/MockProvider;

    .line 2973
    .local v0, mockProvider:Lcom/android/server/location/MockProvider;
    if-nez v0, :cond_0

    .line 2974
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" unknown"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2977
    .end local v0           #mockProvider:Lcom/android/server/location/MockProvider;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2976
    .restart local v0       #mockProvider:Lcom/android/server/location/MockProvider;
    :cond_0
    :try_start_1
    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/server/location/MockProvider;->setStatus(ILandroid/os/Bundle;J)V

    .line 2977
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2978
    return-void
.end method

.method systemReady()V
    .locals 3

    .prologue
    .line 738
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    const-string v2, "LocationManagerService"

    invoke-direct {v0, v1, p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 739
    .local v0, thread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 740
    return-void
.end method

.method validatePendingIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1453
    invoke-virtual {p1}, Landroid/app/PendingIntent;->isTargetedToPackage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1462
    :goto_0
    return-void

    .line 1456
    :cond_0
    const-string v0, "LocationManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given Intent does not require a specific package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
