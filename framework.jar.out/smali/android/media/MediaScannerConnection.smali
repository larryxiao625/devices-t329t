.class public Landroid/media/MediaScannerConnection;
.super Ljava/lang/Object;
.source "MediaScannerConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaScannerConnection$ClientProxy;,
        Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;,
        Landroid/media/MediaScannerConnection$OnScanCompletedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaScannerConnection"

.field private static mimeType_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static path_list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Landroid/media/IMediaScannerListener$Stub;

.field private mService:Landroid/media/IMediaScannerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V
    .locals 1
    .parameter "context"
    .parameter "client"

    .prologue
    .line 105
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/media/MediaScannerConnection$1;

    invoke-direct {v0, p0}, Landroid/media/MediaScannerConnection$1;-><init>(Landroid/media/MediaScannerConnection;)V

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    .line 106
    iput-object p1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    .line 107
    iput-object p2, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/media/MediaScannerConnection;)Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    return-object v0
.end method

.method private static processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 12
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "level"

    .prologue
    .line 265
    const/4 v5, 0x0

    .local v5, j:I
    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_8

    .line 267
    new-instance v1, Ljava/io/File;

    aget-object v9, p0, v5

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, file:Ljava/io/File;
    if-nez v1, :cond_1

    .line 265
    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 273
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 274
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, filelist:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 276
    .local v6, mimeType:Ljava/lang/String;
    aget-object v9, p0, v5

    invoke-static {v9}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v7

    .line 277
    .local v7, noMedia:Z
    if-eqz v7, :cond_2

    .line 278
    const-string/jumbo v6, "no-media"

    .line 280
    :cond_2
    if-eqz v2, :cond_0

    .line 282
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v9, v2

    if-ge v4, v9, :cond_0

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, p0, v5

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v4

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 284
    .local v3, filepath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 286
    .local v0, deepfile:Ljava/io/File;
    if-gtz p2, :cond_3

    const/4 v9, -0x1

    if-ne p2, v9, :cond_4

    .line 287
    :cond_3
    const/4 v9, -0x1

    if-ne p2, v9, :cond_5

    .line 288
    move v8, p2

    .line 292
    .local v8, tempLevel:I
    :goto_3
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_6

    .line 294
    sget-object v9, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    sget-object v9, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    .end local v8           #tempLevel:I
    :cond_4
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 290
    :cond_5
    add-int/lit8 v8, p2, -0x1

    .restart local v8       #tempLevel:I
    goto :goto_3

    .line 297
    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 298
    sget-object v9, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    sget-object v9, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v6, v10, v11

    invoke-static {v9, v10, v8}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V

    goto :goto_4

    .line 307
    .end local v0           #deepfile:Ljava/io/File;
    .end local v2           #filelist:[Ljava/lang/String;
    .end local v3           #filepath:Ljava/lang/String;
    .end local v4           #i:I
    .end local v6           #mimeType:Ljava/lang/String;
    .end local v7           #noMedia:Z
    .end local v8           #tempLevel:I
    :cond_7
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_0

    .line 308
    const-string v9, "MediaScannerConnection"

    const-string v10, "Not Directory"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 312
    .end local v1           #file:Ljava/io/File;
    :cond_8
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 6
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 317
    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/media/MediaScannerConnection;->scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;ILjava/lang/String;)V

    .line 319
    return-void
.end method

.method public static scanDirectory(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;ILjava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"
    .parameter "level"
    .parameter "notifyString"

    .prologue
    .line 324
    if-nez p1, :cond_0

    .line 341
    :goto_0
    return-void

    .line 326
    :cond_0
    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 327
    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 329
    invoke-static {p1, p2, p4}, Landroid/media/MediaScannerConnection;->processDirectory([Ljava/lang/String;[Ljava/lang/String;I)V

    .line 331
    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 332
    .local v1, m_paths:[Ljava/lang/String;
    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 334
    .local v0, m_mimeTypes:[Ljava/lang/String;
    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 335
    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 337
    invoke-static {p0, v1, v0, p3, p5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V

    .line 339
    sget-object v2, Landroid/media/MediaScannerConnection;->path_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 340
    sget-object v2, Landroid/media/MediaScannerConnection;->mimeType_list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    .locals 1
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"

    .prologue
    .line 247
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "paths"
    .parameter "mimeTypes"
    .parameter "callback"
    .parameter "notifyString"

    .prologue
    .line 252
    new-instance v0, Landroid/media/MediaScannerConnection$ClientProxy;

    invoke-direct {v0, p1, p2, p3}, Landroid/media/MediaScannerConnection$ClientProxy;-><init>([Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 253
    .local v0, client:Landroid/media/MediaScannerConnection$ClientProxy;
    if-eqz p4, :cond_0

    .line 254
    invoke-virtual {v0, p4}, Landroid/media/MediaScannerConnection$ClientProxy;->onSetFinishString(Ljava/lang/String;)V

    .line 256
    :cond_0
    new-instance v1, Landroid/media/MediaScannerConnection;

    invoke-direct {v1, p0, v0}, Landroid/media/MediaScannerConnection;-><init>(Landroid/content/Context;Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;)V

    .line 257
    .local v1, connection:Landroid/media/MediaScannerConnection;
    iput-object v1, v0, Landroid/media/MediaScannerConnection$ClientProxy;->mConnection:Landroid/media/MediaScannerConnection;

    .line 258
    invoke-virtual {v1}, Landroid/media/MediaScannerConnection;->connect()V

    .line 259
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 3

    .prologue
    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v1, :cond_0

    .line 118
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/media/IMediaScannerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 120
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    .line 122
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 129
    monitor-enter p0

    .line 130
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 135
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :goto_0
    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    .line 143
    :cond_0
    monitor-exit p0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized isConnected()Z
    .locals 1

    .prologue
    .line 151
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "className"
    .parameter "service"

    .prologue
    .line 350
    monitor-enter p0

    .line 351
    :try_start_0
    invoke-static {p2}, Landroid/media/IMediaScannerService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerService;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    .line 352
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mClient:Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;

    invoke-interface {v0}, Landroid/media/MediaScannerConnection$MediaScannerConnectionClient;->onMediaScannerConnected()V

    .line 355
    :cond_0
    monitor-exit p0

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "className"

    .prologue
    .line 365
    monitor-enter p0

    .line 366
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    .line 367
    monitor-exit p0

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scanFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "mimeType"

    .prologue
    .line 164
    monitor-enter p0

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/media/MediaScannerConnection;->mConnected:Z

    if-nez v0, :cond_1

    .line 166
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "not connected to MediaScannerService"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 172
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/media/MediaScannerConnection;->mService:Landroid/media/IMediaScannerService;

    iget-object v1, p0, Landroid/media/MediaScannerConnection;->mListener:Landroid/media/IMediaScannerListener$Stub;

    invoke-interface {v0, p1, p2, v1}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 178
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 179
    return-void

    .line 173
    :catch_0
    move-exception v0

    goto :goto_0
.end method
