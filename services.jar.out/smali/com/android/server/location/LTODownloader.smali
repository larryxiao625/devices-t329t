.class public Lcom/android/server/location/LTODownloader;
.super Ljava/lang/Object;
.source "LTODownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/LTODownloader$1;,
        Lcom/android/server/location/LTODownloader$DownloadThread;,
        Lcom/android/server/location/LTODownloader$DownloadTrigger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final LTO_DIR:Ljava/lang/String; = "/data/gps"

.field private static final TAG:Ljava/lang/String; = "LTODownloader"

.field private static final TEST_MODE:Z


# instance fields
.field private LTOlink:Ljava/lang/String;

.field private mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private mFuture:Ljava/util/concurrent/ScheduledFuture;

.field private mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;

.field private networkconnected:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 111
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v2, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 40
    new-instance v2, Lcom/android/server/location/LTODownloader$DownloadTrigger;

    invoke-direct {v2, p0, v4}, Lcom/android/server/location/LTODownloader$DownloadTrigger;-><init>(Lcom/android/server/location/LTODownloader;Lcom/android/server/location/LTODownloader$1;)V

    iput-object v2, p0, Lcom/android/server/location/LTODownloader;->mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;

    .line 41
    iput-object v4, p0, Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    .line 43
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/location/LTODownloader;->networkconnected:I

    .line 112
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/gps"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->createFolder(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v1, Lcom/android/server/location/LTODownloader$DownloadThread;

    invoke-direct {v1, p0, v4}, Lcom/android/server/location/LTODownloader$DownloadThread;-><init>(Lcom/android/server/location/LTODownloader;Lcom/android/server/location/LTODownloader$1;)V

    .line 118
    .local v1, lto_download_thread:Lcom/android/server/location/LTODownloader$DownloadThread;
    invoke-virtual {v1}, Lcom/android/server/location/LTODownloader$DownloadThread;->start()V

    goto :goto_0
.end method

.method private LOG(Ljava/lang/String;)V
    .locals 3
    .parameter "log"

    .prologue
    .line 185
    const-string v0, "LTODownloader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GPS] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/LTODownloader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/location/LTODownloader;->triggerDownload()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/location/LTODownloader;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/server/location/LTODownloader;->waitForTrigger()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/location/LTODownloader;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->LTOlink:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/location/LTODownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/LTODownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/location/LTODownloader;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/location/LTODownloader;)Lcom/android/server/location/LTODownloader$DownloadTrigger;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/location/LTODownloader;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-object v0
.end method

.method private createFolder(Ljava/io/File;)Z
    .locals 5
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    .line 167
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 170
    .local v1, file_name:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " success!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 172
    const/4 v2, 0x1

    .line 179
    :goto_0
    return v2

    .line 174
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecurityException occur when create dir "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .parameter "link"
    .parameter "path"
    .parameter "file_name"

    .prologue
    .line 205
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-direct {v7, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .local v7, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 207
    .local v5, conn:Ljava/net/HttpURLConnection;
    const/4 v11, 0x0

    .line 208
    .local v11, is:Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 209
    .local v9, fos:Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 215
    .local v3, buf:Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v15, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 216
    .local v15, url:Ljava/net/URL;
    invoke-virtual {v15}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v16

    move-object/from16 v0, v16

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v5, v0

    .line 218
    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 219
    const/16 v16, 0x1388

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 220
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 221
    const-string v16, "connect to http link"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 223
    new-instance v12, Ljava/io/BufferedInputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 225
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .local v12, is:Ljava/io/BufferedInputStream;
    const/16 v16, 0x2000

    :try_start_1
    move/from16 v0, v16

    new-array v2, v0, [B

    .line 226
    .local v2, b:[B
    const/4 v13, 0x0

    .line 227
    .local v13, l:I
    const/4 v8, 0x0

    .line 232
    .local v8, file_length:I
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9

    .line 234
    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .local v4, buf:Ljava/io/ByteArrayOutputStream;
    :goto_0
    :try_start_2
    invoke-virtual {v12, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v13

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v13, v0, :cond_0

    .line 235
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v2, v0, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 236
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "read "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " bytes"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 237
    add-int/2addr v8, v13

    goto :goto_0

    .line 240
    :cond_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_a

    .line 241
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .local v10, fos:Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v4, v10}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V

    .line 243
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 244
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setReadable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 245
    :cond_1
    const/16 v16, 0x1

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v7, v0, v1}, Ljava/io/File;->setWritable(ZZ)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 246
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setWritable"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 248
    :cond_2
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "file length = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b

    .line 272
    if-eqz v4, :cond_3

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    :cond_3
    if-eqz v10, :cond_4

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    :cond_5
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 281
    :cond_6
    :goto_1
    const/16 v16, 0x1

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v2           #b:[B
    .end local v8           #file_length:I
    .end local v12           #is:Ljava/io/BufferedInputStream;
    .end local v13           #l:I
    .end local v15           #url:Ljava/net/URL;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    :cond_7
    :goto_2
    return v16

    .line 250
    :catch_0
    move-exception v6

    .line 251
    .local v6, e:Ljava/net/MalformedURLException;
    :goto_3
    :try_start_5
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "new URL failed! link="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 252
    const/16 v16, 0x0

    .line 272
    if-eqz v3, :cond_8

    :try_start_6
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_9
    if-eqz v11, :cond_a

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    :cond_a
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 276
    :catch_1
    move-exception v6

    .line 277
    .local v6, e:Ljava/io/IOException;
    const-string v17, "close/release resources failed!!"

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto :goto_2

    .line 253
    .end local v6           #e:Ljava/io/IOException;
    :catch_2
    move-exception v6

    .line 254
    .local v6, e:Ljava/io/FileNotFoundException;
    :goto_5
    :try_start_7
    const-string v16, "new FileOutputStream fail!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 255
    const/16 v16, 0x0

    .line 272
    if-eqz v3, :cond_b

    :try_start_8
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    :cond_b
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_c
    if-eqz v11, :cond_d

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    :cond_d
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    .line 276
    :catch_3
    move-exception v6

    .line 277
    .local v6, e:Ljava/io/IOException;
    const-string v17, "close/release resources failed!!"

    goto :goto_4

    .line 256
    .end local v6           #e:Ljava/io/IOException;
    :catch_4
    move-exception v6

    .line 257
    .restart local v6       #e:Ljava/io/IOException;
    :goto_6
    :try_start_9
    instance-of v0, v6, Ljava/net/SocketTimeoutException;

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 258
    const-string v16, "SocketTimeoutException occur!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 263
    :goto_7
    :try_start_a
    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_a .. :try_end_a} :catch_6

    .line 268
    :goto_8
    const/16 v16, 0x0

    .line 272
    if-eqz v3, :cond_e

    :try_start_b
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_f
    if-eqz v11, :cond_10

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    :cond_10
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_2

    .line 276
    :catch_5
    move-exception v6

    .line 277
    const-string v17, "close/release resources failed!!"

    goto :goto_4

    .line 260
    :cond_11
    :try_start_c
    const-string v16, "IOException occur!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_7

    .line 270
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 272
    :goto_9
    if-eqz v3, :cond_12

    :try_start_d
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 273
    :cond_12
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    .line 274
    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Ljava/io/BufferedInputStream;->close()V

    .line 275
    :cond_14
    if-eqz v5, :cond_15

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 270
    :cond_15
    :goto_a
    throw v16

    .line 264
    .restart local v6       #e:Ljava/io/IOException;
    :catch_6
    move-exception v14

    .line 265
    .local v14, secu_e:Ljava/lang/SecurityException;
    :try_start_e
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "delete "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " fail!!"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_8

    .line 276
    .end local v6           #e:Ljava/io/IOException;
    .end local v14           #secu_e:Ljava/lang/SecurityException;
    :catch_7
    move-exception v6

    .line 277
    .restart local v6       #e:Ljava/io/IOException;
    const-string v17, "close/release resources failed!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto :goto_a

    .line 276
    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v2       #b:[B
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #file_length:I
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #l:I
    .restart local v15       #url:Ljava/net/URL;
    :catch_8
    move-exception v6

    .line 277
    .restart local v6       #e:Ljava/io/IOException;
    const-string v16, "close/release resources failed!!"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 270
    .end local v2           #b:[B
    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .end local v8           #file_length:I
    .end local v10           #fos:Ljava/io/FileOutputStream;
    .end local v13           #l:I
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v16

    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v2       #b:[B
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #file_length:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #l:I
    :catchall_2
    move-exception v16

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto :goto_9

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catchall_3
    move-exception v16

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto :goto_9

    .line 256
    .end local v2           #b:[B
    .end local v8           #file_length:I
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .end local v13           #l:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_9
    move-exception v6

    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v2       #b:[B
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #file_length:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #l:I
    :catch_a
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_b
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_6

    .line 253
    .end local v2           #b:[B
    .end local v8           #file_length:I
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .end local v13           #l:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_c
    move-exception v6

    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v2       #b:[B
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #file_length:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #l:I
    :catch_d
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_e
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_5

    .line 250
    .end local v2           #b:[B
    .end local v8           #file_length:I
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .end local v13           #l:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_f
    move-exception v6

    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v2       #b:[B
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #file_length:I
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    .restart local v13       #l:I
    :catch_10
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_3

    .end local v3           #buf:Ljava/io/ByteArrayOutputStream;
    .end local v9           #fos:Ljava/io/FileOutputStream;
    .end local v11           #is:Ljava/io/BufferedInputStream;
    .restart local v4       #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #fos:Ljava/io/FileOutputStream;
    .restart local v12       #is:Ljava/io/BufferedInputStream;
    :catch_11
    move-exception v6

    move-object v3, v4

    .end local v4           #buf:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #buf:Ljava/io/ByteArrayOutputStream;
    move-object v9, v10

    .end local v10           #fos:Ljava/io/FileOutputStream;
    .restart local v9       #fos:Ljava/io/FileOutputStream;
    move-object v11, v12

    .end local v12           #is:Ljava/io/BufferedInputStream;
    .restart local v11       #is:Ljava/io/BufferedInputStream;
    goto/16 :goto_3
.end method

.method private fakeDownload()Z
    .locals 2

    .prologue
    .line 285
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 286
    .local v0, random:Ljava/util/Random;
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 287
    const/4 v1, 0x1

    .line 289
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .parameter "argv"

    .prologue
    .line 293
    new-instance v0, Lcom/android/server/location/LTODownloader;

    invoke-direct {v0}, Lcom/android/server/location/LTODownloader;-><init>()V

    .line 294
    .local v0, lto_down:Lcom/android/server/location/LTODownloader;
    invoke-virtual {v0}, Lcom/android/server/location/LTODownloader;->test()V

    .line 295
    return-void
.end method

.method private removeTask()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_0

    .line 156
    const-string v0, "mFuture is null"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    const-string v0, "cancel trigger task"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 162
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task queue size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private declared-synchronized triggerDownload()V
    .locals 2

    .prologue
    .line 195
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/location/LTODownloader;->networkconnected:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 196
    const-string v0, "triggerDownload notify"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :goto_0
    monitor-exit p0

    return-void

    .line 199
    :cond_0
    :try_start_1
    const-string v0, "triggerDownload network not available"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized waitForTrigger()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    monitor-exit p0

    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public SetLTOlink(Ljava/lang/String;)V
    .locals 2
    .parameter "link"

    .prologue
    .line 140
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    iput-object p1, p0, Lcom/android/server/location/LTODownloader;->LTOlink:Ljava/lang/String;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LTOlink="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/LTODownloader;->LTOlink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 142
    return-void

    .line 140
    .restart local p1
    :cond_0
    const-string p1, "http://gllto.glpals.com/7day/glo/v2/latest/lto2.dat"

    goto :goto_0
.end method

.method public networkUpdate(ILandroid/net/NetworkInfo;)V
    .locals 1
    .parameter "state"
    .parameter "info"

    .prologue
    .line 122
    const-string v0, "network status changed!"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 124
    if-nez p2, :cond_0

    .line 125
    const-string v0, "network info is null"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/location/LTODownloader;->networkconnected:I

    .line 128
    const-string v0, "network available, trigger LTO download"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/android/server/location/LTODownloader;->triggerDownload()V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/LTODownloader;->networkconnected:I

    .line 132
    const-string v0, "network disconnected"

    invoke-direct {p0, v0}, Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public test()V
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/android/server/location/LTODownloader;->mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;

    const-wide/16 v2, 0x3e8

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 148
    const-wide/16 v0, 0x2710

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 149
    invoke-direct {p0}, Lcom/android/server/location/LTODownloader;->removeTask()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method
