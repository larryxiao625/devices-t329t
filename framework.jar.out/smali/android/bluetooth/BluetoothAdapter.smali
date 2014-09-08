.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_DI_REMOTE_DI_INFO_RECEIVED:Ljava/lang/String; = "android.bluetooth.adapter.action.DI_REMOTE_DI_INFO_RECEIVED"

.field public static final ACTION_DI_REMOTE_DI_RECORD_RECEIVED:Ljava/lang/String; = "android.bluetooth.adapter.action.DI_REMOTE_DI_RECORD_RECEIVED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final AFH_CLASS_OFF:B = -0x1t

.field public static final BLUETOOTH_SERVICE:Ljava/lang/String; = "bluetooth"

.field public static final BTLD_CMD_SEND:I = 0x1010000

.field private static final DBG:Z = false

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_DI_CLIENT_EXECUTABLE_URL:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_CLIENT_EXECUTABLE_URL"

.field public static final EXTRA_DI_DOCUMENTATION_URL:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_DOCUMENTATION_URL"

.field public static final EXTRA_DI_HANDLE:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_HANDLE"

.field public static final EXTRA_DI_PRIMARY_RECORD:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_PRIMARY_RECORD"

.field public static final EXTRA_DI_PRODUCT_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_PRODUCT_ID"

.field public static final EXTRA_DI_REC_NUM:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_REC_NUM"

.field public static final EXTRA_DI_REMOTE_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_REMOTE_ADDRESS"

.field public static final EXTRA_DI_SERVICE_DESCRIPTION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_SERVICE_DESCRIPTION"

.field public static final EXTRA_DI_SPEC_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_SPEC_ID"

.field public static final EXTRA_DI_STATUS:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_STATUS"

.field public static final EXTRA_DI_VENDOR_ID:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VENDOR_ID"

.field public static final EXTRA_DI_VENDOR_ID_SOURCE:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VENDOR_ID_SOURCE"

.field public static final EXTRA_DI_VERSION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DI_VERSION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final HCI_AFH_SET_CHN_CLASS:I = 0xc3f

.field public static final HCI_AFH_SET_CHN_CLASS_LEN:I = 0x2

.field public static final HCI_SSP_DEBUG_MODE:I = 0x1804

.field public static final HCI_SSP_DEBUG_MODE_LEN:I = 0x1

.field public static final HTC_BLUETOOTH_STACK:Ljava/lang/String; = "BRCM"

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final SSP_DEBUG_MODE_OFF:B = 0x4t

.field public static final SSP_DEBUG_MODE_ON:B = 0x5t

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;


# instance fields
.field private mOppHandler:Landroid/os/Handler;

.field private final mService:Landroid/bluetooth/IBluetooth;

.field private mServiceRecordHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetooth;)V
    .locals 2
    .parameter "service"

    .prologue
    const/4 v0, 0x0

    .line 551
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 552
    if-nez p1, :cond_0

    .line 553
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    .line 556
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    .line 557
    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    .line 558
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5
    .parameter "address"

    .prologue
    const/16 v4, 0x11

    const/4 v2, 0x0

    .line 1529
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v4, :cond_1

    .line 1549
    :cond_0
    :goto_0
    return v2

    .line 1532
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v4, :cond_4

    .line 1533
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1534
    .local v0, c:C
    rem-int/lit8 v3, v1, 0x3

    packed-switch v3, :pswitch_data_0

    .line 1532
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1537
    :pswitch_0
    const/16 v3, 0x30

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    if-le v0, v3, :cond_2

    :cond_3
    const/16 v3, 0x41

    if-lt v0, v3, :cond_0

    const/16 v3, 0x46

    if-gt v0, v3, :cond_0

    goto :goto_2

    .line 1543
    :pswitch_1
    const/16 v3, 0x3a

    if-ne v0, v3, :cond_0

    goto :goto_2

    .line 1549
    .end local v0           #c:C
    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    .line 1534
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 10
    .parameter "name"
    .parameter "uuid"
    .parameter "auth"
    .parameter "encrypt"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    .line 1184
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;

    invoke-direct {v4, p2}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;-><init>(Ljava/util/UUID;)V

    .line 1190
    .local v4, picker:Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;
    :goto_0
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter$RfcommChannelPicker;->nextChannel()I

    move-result v0

    .line 1192
    .local v0, channel:I
    if-ne v0, v9, :cond_0

    .line 1193
    new-instance v6, Ljava/io/IOException;

    const-string v7, "No available channels"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1196
    :cond_0
    new-instance v5, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p3, p4, v0}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1198
    .local v5, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v2

    .line 1199
    .local v2, errno:I
    if-nez v2, :cond_1

    .line 1216
    const/4 v3, -0x1

    .line 1218
    .local v3, handle:I
    :try_start_0
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v8, Landroid/os/Binder;

    invoke-direct {v8}, Landroid/os/Binder;-><init>()V

    invoke-interface {v6, p1, v7, v0, v8}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 1221
    :goto_1
    if-ne v3, v9, :cond_3

    .line 1223
    :try_start_1
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1225
    :goto_2
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not able to register SDP record for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1202
    .end local v3           #handle:I
    :cond_1
    const/16 v6, 0x62

    if-ne v2, v6, :cond_2

    .line 1205
    :try_start_2
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1206
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1210
    :cond_2
    :try_start_3
    invoke-virtual {v5}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1212
    :goto_3
    iget-object v6, v5, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v6, v2}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    goto :goto_0

    .line 1220
    .restart local v3       #handle:I
    :catch_1
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v6, "BluetoothAdapter"

    const-string v7, ""

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1228
    .end local v1           #e:Landroid/os/RemoteException;
    :cond_3
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    if-nez v6, :cond_4

    .line 1229
    new-instance v6, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, p0, v7}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/os/Looper;)V

    iput-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    .line 1241
    :cond_4
    iget-object v6, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceRecordHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v3}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1242
    return-object v5

    .line 1211
    .end local v3           #handle:I
    :catch_2
    move-exception v6

    goto :goto_3

    .line 1224
    .restart local v3       #handle:I
    :catch_3
    move-exception v6

    goto :goto_2
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 4

    .prologue
    .line 537
    const-class v3, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v3

    :try_start_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 538
    const-string v2, "bluetooth"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 539
    .local v0, b:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 540
    invoke-static {v0}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v1

    .line 541
    .local v1, service:Landroid/bluetooth/IBluetooth;
    new-instance v2, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v2, v1}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetooth;)V

    sput-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 544
    .end local v1           #service:Landroid/bluetooth/IBluetooth;
    :cond_0
    sget-object v2, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-object v2

    .line 537
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1328
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v4, v4, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1330
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1331
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 1333
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1335
    :goto_0
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1337
    :cond_0
    return-object v1

    .line 1334
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    .locals 3
    .parameter "addresses"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1514
    new-instance v0, Ljava/util/HashSet;

    array-length v2, p1

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 1515
    .local v0, devices:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1516
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1518
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "address"
    .parameter "info"

    .prologue
    .line 1736
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 1738
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IBluetooth;->addHidInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1741
    :cond_0
    :goto_0
    return-void

    .line 1739
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public cancelDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 882
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 886
    :goto_0
    return v1

    .line 884
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 885
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 5
    .parameter "on"
    .parameter "callback"

    .prologue
    const/4 v1, 0x0

    .line 1478
    if-nez p2, :cond_0

    .line 1486
    :goto_0
    return v1

    .line 1481
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    new-instance v3, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;

    invoke-direct {v3, p0, p2}, Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)V

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-interface {v2, p1, v3, v4}, Landroid/bluetooth/IBluetooth;->changeApplicationBluetoothState(ZLandroid/bluetooth/IBluetoothStateChangeCallback;Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1483
    :catch_0
    move-exception v0

    .line 1484
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "changeBluetoothState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5
    .parameter "profile"
    .parameter "proxy"

    .prologue
    .line 1421
    if-nez p2, :cond_0

    .line 1445
    :goto_0
    return-void

    .line 1423
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v1, p2

    .line 1425
    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    .line 1426
    .local v1, headset:Landroid/bluetooth/BluetoothHeadset;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    goto :goto_0

    .end local v1           #headset:Landroid/bluetooth/BluetoothHeadset;
    :pswitch_1
    move-object v0, p2

    .line 1429
    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    .line 1430
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :pswitch_2
    move-object v3, p2

    .line 1433
    check-cast v3, Landroid/bluetooth/BluetoothInputDevice;

    .line 1434
    .local v3, iDev:Landroid/bluetooth/BluetoothInputDevice;
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothInputDevice;->close()V

    goto :goto_0

    .end local v3           #iDev:Landroid/bluetooth/BluetoothInputDevice;
    :pswitch_3
    move-object v4, p2

    .line 1437
    check-cast v4, Landroid/bluetooth/BluetoothPan;

    .line 1438
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    .end local v4           #pan:Landroid/bluetooth/BluetoothPan;
    :pswitch_4
    move-object v2, p2

    .line 1441
    check-cast v2, Landroid/bluetooth/BluetoothHealth;

    .line 1442
    .local v2, health:Landroid/bluetooth/BluetoothHealth;
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    .line 1423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public disable()Z
    .locals 3

    .prologue
    .line 669
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 671
    :goto_0
    return v1

    .line 670
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 671
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public disableFromPowerSaver()Z
    .locals 3

    .prologue
    .line 1574
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->disableFromPowerSaver()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1576
    :goto_0
    return v1

    .line 1575
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1576
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enable()Z
    .locals 3

    .prologue
    .line 638
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 640
    :goto_0
    return v1

    .line 639
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 640
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableSspDebugMode(Z)Z
    .locals 3
    .parameter "enable"

    .prologue
    .line 1624
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->enableSspDebugMode(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1626
    :goto_0
    return v1

    .line 1625
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1626
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    .prologue
    .line 682
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const-string v1, "<UNKNOWN>"

    .line 686
    :goto_0
    return-object v1

    .line 684
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getAddress()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 686
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 928
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 929
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 934
    :goto_0
    return-object v1

    .line 932
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listBonds()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getChipset()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1635
    const-string/jumbo v0, "ro.bt.chipset"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConnectionState()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 951
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 955
    :goto_0
    return v1

    .line 953
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 954
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 811
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 815
    :goto_0
    return v1

    .line 813
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 814
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getHidInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "address"

    .prologue
    .line 1726
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 1728
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getHidInfo(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1731
    :goto_0
    return-object v1

    .line 1729
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1731
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 697
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const-string/jumbo v1, "ro.product.model"

    const-string v2, "<UNKNOWN>"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 701
    :goto_0
    return-object v1

    .line 699
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 700
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 701
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getProfileConnectionState(I)I
    .locals 4
    .parameter "profile"

    .prologue
    const/4 v1, 0x0

    .line 974
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 980
    :goto_0
    return v1

    .line 976
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 977
    :catch_0
    move-exception v0

    .line 978
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProfileList()[Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 1671
    const/4 v3, 0x0

    .line 1672
    .local v3, profileList:I
    const/4 v2, 0x1

    .line 1673
    .local v2, mask:B
    const-string v4, ""

    .line 1675
    .local v4, profiles:Ljava/lang/String;
    const/16 v5, 0x17

    new-array v0, v5, [Ljava/lang/String;

    const-string v5, "Advanced Audio Distribution Profile (A2DP)"

    aput-object v5, v0, v8

    const-string v5, "Audio / Video Remote Control Profile (AVRCP)"

    aput-object v5, v0, v9

    const/4 v5, 0x2

    const-string v6, "Basic Imaging Profile (BIP)"

    aput-object v6, v0, v5

    const/4 v5, 0x3

    const-string v6, "Basic Printing Profile (BPP)"

    aput-object v6, v0, v5

    const/4 v5, 0x4

    const-string v6, "Common ISDN Access Profile (CIP)"

    aput-object v6, v0, v5

    const/4 v5, 0x5

    const-string v6, "Cordless Telephony Profile (CTP)"

    aput-object v6, v0, v5

    const/4 v5, 0x6

    const-string v6, "Dial-Up Network Profile (DUN)"

    aput-object v6, v0, v5

    const/4 v5, 0x7

    const-string v6, "Fax Profile (FAX)"

    aput-object v6, v0, v5

    const/16 v5, 0x8

    const-string v6, "File Transfer Profile (FTP)"

    aput-object v6, v0, v5

    const/16 v5, 0x9

    const-string v6, "General Audio/Video Distribution Profile (GAVDP)"

    aput-object v6, v0, v5

    const/16 v5, 0xa

    const-string v6, "Generic Object Exchange Profile (GOEP)"

    aput-object v6, v0, v5

    const/16 v5, 0xb

    const-string v6, "Hands-Free Profile (HFP)"

    aput-object v6, v0, v5

    const/16 v5, 0xc

    const-string v6, "Hard Copy Cable Replacement Profile (HCRP)"

    aput-object v6, v0, v5

    const/16 v5, 0xd

    const-string v6, "Headset Profile (HSP)"

    aput-object v6, v0, v5

    const/16 v5, 0xe

    const-string v6, "Human Interface Device Profile (HID)"

    aput-object v6, v0, v5

    const/16 v5, 0xf

    const-string v6, "Intercom Profile (ICP)"

    aput-object v6, v0, v5

    const/16 v5, 0x10

    const-string v6, "Object Push Profile (OPP)"

    aput-object v6, v0, v5

    const/16 v5, 0x11

    const-string v6, "Personal Area Networking Profile (PAN)"

    aput-object v6, v0, v5

    const/16 v5, 0x12

    const-string v6, "Service Discovery Application Profile (SDAP)"

    aput-object v6, v0, v5

    const/16 v5, 0x13

    const-string v6, "Serial Port Profile (SPP)"

    aput-object v6, v0, v5

    const/16 v5, 0x14

    const-string v6, "Synchronization Profile (SYNC)"

    aput-object v6, v0, v5

    const/16 v5, 0x15

    const-string v6, "Video Distribution Profile (VDP)"

    aput-object v6, v0, v5

    const/16 v5, 0x16

    const-string v6, "Phonebook Access Profile (PBAP)"

    aput-object v6, v0, v5

    .line 1701
    .local v0, BTPROFILES:[Ljava/lang/String;
    const-string/jumbo v5, "ro.bt.profiles"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 1702
    if-ne v3, v7, :cond_0

    .line 1703
    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "<UNKNOWN>"

    aput-object v6, v5, v8

    .line 1711
    :goto_0
    return-object v5

    .line 1705
    :cond_0
    const/4 v1, 0x0

    .local v1, k:I
    :goto_1
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1706
    and-int v5, v3, v2

    if-ne v5, v2, :cond_1

    .line 1707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1709
    :cond_1
    shr-int/lit8 v3, v3, 0x1

    .line 1705
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1711
    :cond_2
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 8
    .parameter "context"
    .parameter "listener"
    .parameter "profile"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1387
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v5, v6

    .line 1405
    :goto_0
    return v5

    .line 1389
    :cond_1
    if-ne p3, v5, :cond_2

    .line 1390
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v1, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1391
    .local v1, headset:Landroid/bluetooth/BluetoothHeadset;
    goto :goto_0

    .line 1392
    .end local v1           #headset:Landroid/bluetooth/BluetoothHeadset;
    :cond_2
    const/4 v7, 0x2

    if-ne p3, v7, :cond_3

    .line 1393
    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1394
    .local v0, a2dp:Landroid/bluetooth/BluetoothA2dp;
    goto :goto_0

    .line 1395
    .end local v0           #a2dp:Landroid/bluetooth/BluetoothA2dp;
    :cond_3
    const/4 v7, 0x4

    if-ne p3, v7, :cond_4

    .line 1396
    new-instance v3, Landroid/bluetooth/BluetoothInputDevice;

    invoke-direct {v3, p1, p2}, Landroid/bluetooth/BluetoothInputDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1397
    .local v3, iDev:Landroid/bluetooth/BluetoothInputDevice;
    goto :goto_0

    .line 1398
    .end local v3           #iDev:Landroid/bluetooth/BluetoothInputDevice;
    :cond_4
    const/4 v7, 0x5

    if-ne p3, v7, :cond_5

    .line 1399
    new-instance v4, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v4, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1400
    .local v4, pan:Landroid/bluetooth/BluetoothPan;
    goto :goto_0

    .line 1401
    .end local v4           #pan:Landroid/bluetooth/BluetoothPan;
    :cond_5
    const/4 v7, 0x3

    if-ne p3, v7, :cond_6

    .line 1402
    new-instance v2, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v2, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    .line 1403
    .local v2, health:Landroid/bluetooth/BluetoothHealth;
    goto :goto_0

    .end local v2           #health:Landroid/bluetooth/BluetoothHealth;
    :cond_6
    move v5, v6

    .line 1405
    goto :goto_0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "address"

    .prologue
    .line 573
    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteServices(Ljava/lang/String;)Z
    .locals 3
    .parameter "address"

    .prologue
    .line 1750
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->getRemoteServices(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1752
    :goto_0
    return v1

    .line 1751
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getScanMode()I
    .locals 4

    .prologue
    const/16 v1, 0x14

    .line 760
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 764
    :goto_0
    return v1

    .line 762
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getScanMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 763
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStackName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1653
    const-string/jumbo v0, "ro.bt.stack"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1662
    const-string/jumbo v0, "ro.bt.stack.version"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 3

    .prologue
    .line 604
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 606
    :goto_0
    return v1

    .line 605
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 606
    const/16 v1, 0xa

    goto :goto_0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 713
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 717
    :goto_0
    return-object v1

    .line 715
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 716
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1644
    const-string/jumbo v0, "ro.bt.version"

    const-string v1, "<UNKNOWN>"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAudioGatewaySupported()Z
    .locals 3

    .prologue
    .line 1561
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isAudioGatewaySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1563
    :goto_0
    return v1

    .line 1562
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1563
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isDiscovering()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 909
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 913
    :goto_0
    return v1

    .line 911
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 912
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 586
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->isEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 588
    :goto_0
    return v1

    .line 587
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 588
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1587
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listBondsExt()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Ljava/lang/String;)Ljava/util/Set;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1589
    :goto_0
    return-object v1

    .line 1588
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1589
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listHidInfo()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1716
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 1718
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->listHidInfo()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1721
    :goto_0
    return-object v1

    .line 1719
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 4
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1307
    new-instance v1, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x0

    invoke-direct {v1, v3, v2, v3, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1309
    .local v1, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v0

    .line 1310
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 1312
    :try_start_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1314
    :goto_0
    iget-object v2, v1, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1316
    :cond_0
    return-object v1

    .line 1313
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1179
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .parameter "port"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1255
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v5, v5, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1257
    .local v3, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 1258
    .local v1, errno:I
    if-eqz v1, :cond_0

    .line 1260
    :try_start_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1262
    :goto_0
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1265
    :cond_0
    const/16 v4, 0xc

    if-ne p1, v4, :cond_3

    .line 1266
    const/4 v2, -0x1

    .line 1268
    .local v2, handle:I
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const-string v5, "Object Push"

    new-instance v6, Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1273
    :goto_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 1275
    :try_start_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1277
    :goto_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not able to register SDP record for OPP"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1271
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1280
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    if-nez v4, :cond_2

    .line 1281
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$3;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/bluetooth/BluetoothAdapter$3;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    .line 1292
    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1294
    .end local v2           #handle:I
    :cond_3
    return-object v3

    .line 1261
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1276
    .restart local v2       #handle:I
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1141
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .parameter "channel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1043
    new-instance v3, Landroid/bluetooth/BluetoothServerSocket;

    invoke-direct {v3, v4, v4, v4, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    .line 1045
    .local v3, socket:Landroid/bluetooth/BluetoothServerSocket;
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    .line 1046
    .local v1, errno:I
    if-eqz v1, :cond_0

    .line 1048
    :try_start_0
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1050
    :goto_0
    iget-object v4, v3, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothSocket;->throwErrnoNative(I)V

    .line 1053
    :cond_0
    const/16 v4, 0xc

    if-ne p1, v4, :cond_3

    .line 1054
    const/4 v2, -0x1

    .line 1056
    .local v2, handle:I
    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    const-string v5, "Object Push"

    new-instance v6, Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-virtual {v7}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    new-instance v7, Landroid/os/Binder;

    invoke-direct {v7}, Landroid/os/Binder;-><init>()V

    invoke-interface {v4, v5, v6, p1, v7}, Landroid/bluetooth/IBluetooth;->addRfcommServiceRecord(Ljava/lang/String;Landroid/os/ParcelUuid;ILandroid/os/IBinder;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 1061
    :goto_1
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 1063
    :try_start_2
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1065
    :goto_2
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Not able to register SDP record for OPP"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1059
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1068
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    if-nez v4, :cond_2

    .line 1069
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;Landroid/os/Looper;)V

    iput-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    .line 1080
    :cond_2
    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mOppHandler:Landroid/os/Handler;

    invoke-virtual {v3, v4, v2}, Landroid/bluetooth/BluetoothServerSocket;->setCloseHandler(Landroid/os/Handler;I)V

    .line 1083
    .end local v2           #handle:I
    :cond_3
    return-object v3

    .line 1049
    :catch_1
    move-exception v4

    goto :goto_0

    .line 1064
    .restart local v2       #handle:I
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "name"
    .parameter "uuid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 1110
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<[B[B>;"
        }
    .end annotation

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    .line 1349
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    const/16 v6, 0xc

    if-eq v5, v6, :cond_1

    .line 1368
    :cond_0
    :goto_0
    return-object v4

    .line 1354
    :cond_1
    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v5}, Landroid/bluetooth/IBluetooth;->readOutOfBandData()[B

    move-result-object v3

    .line 1356
    .local v3, ret:[B
    if-eqz v3, :cond_0

    array-length v5, v3

    if-ne v5, v7, :cond_0

    .line 1358
    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    .line 1359
    .local v1, hash:[B
    const/16 v5, 0x10

    const/16 v6, 0x20

    invoke-static {v3, v5, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    .line 1365
    .local v2, randomizer:[B
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 1367
    .end local v1           #hash:[B
    .end local v2           #randomizer:[B
    .end local v3           #ret:[B
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "BluetoothAdapter"

    const-string v6, ""

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAFH(ZBB)Z
    .locals 5
    .parameter "enable"
    .parameter "min"
    .parameter "max"

    .prologue
    const/4 v1, 0x0

    .line 1603
    if-ltz p2, :cond_0

    const/16 v2, 0x4e

    if-le p3, v2, :cond_1

    .line 1604
    :cond_0
    const-string v2, "BluetoothAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channel not allowed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :goto_0
    return v1

    .line 1609
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2, p3}, Landroid/bluetooth/IBluetooth;->setAFH(ZBB)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1610
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 820
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    .line 824
    :goto_0
    return-void

    .line 822
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 736
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 740
    :goto_0
    return v1

    .line 738
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 739
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setScanMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 806
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x78

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    goto :goto_0
.end method

.method public setScanMode(II)Z
    .locals 4
    .parameter "mode"
    .parameter "duration"

    .prologue
    const/4 v1, 0x0

    .line 796
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 800
    :goto_0
    return v1

    .line 798
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 799
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startDiscovery()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 857
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    .line 861
    :goto_0
    return v1

    .line 859
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 860
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
