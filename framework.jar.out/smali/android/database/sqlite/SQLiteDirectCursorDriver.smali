.class public Landroid/database/sqlite/SQLiteDirectCursorDriver;
.super Ljava/lang/Object;
.source "SQLiteDirectCursorDriver.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteCursorDriver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;,
        Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    }
.end annotation


# static fields
.field private static final TAG_LEAK:Ljava/lang/String; = "SQLiteLeakDetect"

.field private static final mCursorRecordsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/database/sqlite/SQLiteCursor;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemoteTraceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCursorWindowOk:Z

.field private static sThreasholdLevel:I

.field private static sThresholdToWarningLeak:[I


# instance fields
.field private mCursor:Landroid/database/Cursor;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mEditTable:Ljava/lang/String;

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mSql:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 136
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    .line 138
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    .line 386
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    .line 387
    const/4 v0, 0x0

    sput v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    .line 388
    const/4 v0, 0x1

    sput-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    return-void

    .line 386
    nop

    :array_0
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "db"
    .parameter "sql"
    .parameter "editTable"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 63
    iput-object p3, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    .line 64
    iput-object p2, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public static cursorClosed(Landroid/database/sqlite/SQLiteCursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 198
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 202
    :try_start_0
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Ljava/io/PrintWriter;)V
    .locals 8
    .parameter "c"
    .parameter "debug"
    .parameter "pw"

    .prologue
    .line 260
    iget-object v4, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mRemoteTraceInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 261
    .local v4, remoteTrace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    iget-object v6, p1, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;->mDriver:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;

    .line 270
    .local v1, driver:Landroid/database/sqlite/SQLiteDirectCursorDriver;
    const-string v6, "  Local stack:"

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->dumpTrace(Ljava/io/PrintWriter;)V

    .line 273
    if-eqz v4, :cond_0

    .line 274
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  Remote stack: (Pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemotePid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Tid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object v0, v4, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;->mRemoteTrace:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v5, v0, v2

    .line 278
    .local v5, trace:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v5           #trace:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static dumpForCursorWindow()V
    .locals 3

    .prologue
    .line 378
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 379
    :try_start_0
    sget-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    if-eqz v0, :cond_0

    .line 380
    const/4 v0, 0x0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sCursorWindowOk:Z

    .line 381
    const-string v0, "SQLiteLeakDetect"

    const-string v2, "Dump all cursor because abnormal on cursor window is detect"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked()V

    .line 384
    :cond_0
    monitor-exit v1

    .line 385
    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSql: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public static dumpRecordMap(Ljava/io/PrintWriter;)V
    .locals 2
    .parameter "pw"

    .prologue
    .line 212
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v1

    .line 213
    :try_start_0
    invoke-static {p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked(Ljava/io/PrintWriter;)V

    .line 214
    monitor-exit v1

    .line 215
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static dumpRecordMapLocked()V
    .locals 3

    .prologue
    .line 364
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->getLogPrinterWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 365
    .local v0, pw:Ljava/io/PrintWriter;
    if-nez v0, :cond_0

    .line 372
    :goto_0
    return-void

    .line 368
    :cond_0
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked(Ljava/io/PrintWriter;)V

    .line 369
    const-string v1, "SQLiteLeakDetect"

    const-string v2, "Dump complete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 371
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    goto :goto_0
.end method

.method public static dumpRecordMapLocked(Ljava/io/PrintWriter;)V
    .locals 7
    .parameter "pw"

    .prologue
    .line 224
    const/4 v1, 0x0

    .line 225
    .local v1, cursorCount:I
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 247
    :goto_0
    return-void

    .line 227
    :cond_0
    sget-object v5, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 230
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 231
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 232
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteCursor;

    .line 234
    .local v0, c:Landroid/database/sqlite/SQLiteCursor;
    if-eqz v0, :cond_1

    .line 235
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    .line 238
    invoke-virtual {p0}, Ljava/io/PrintWriter;->flush()V

    .line 239
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    .line 240
    .local v2, debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    invoke-static {v0, v2, p0}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpCursor(Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;Ljava/io/PrintWriter;)V

    .line 241
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 245
    .end local v0           #c:Landroid/database/sqlite/SQLiteCursor;
    .end local v2           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Landroid/database/sqlite/SQLiteCursor;Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;>;"
    :cond_2
    const-string v5, " "

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 246
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  Total cursor count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getLogPrinterWriter()Ljava/io/PrintWriter;
    .locals 16

    .prologue
    .line 316
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 317
    .local v8, pid:I
    const/4 v10, 0x0

    .line 318
    .local v10, pw:Ljava/io/PrintWriter;
    const-string v4, "/data/misc/cursors"

    .line 319
    .local v4, logDirName:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v3, logDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_1

    .line 321
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, 0x0

    .line 360
    :goto_0
    return-object v13

    .line 322
    :cond_0
    const/16 v13, 0x1ff

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v4, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v12

    .line 323
    .local v12, ret:I
    if-eqz v12, :cond_1

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set permission for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", err:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v12           #ret:I
    :cond_1
    invoke-static {v8}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->getProcessName(I)Ljava/lang/String;

    move-result-object v9

    .line 327
    .local v9, processName:Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyyMMdd_kkmmss.SSS"

    invoke-direct {v1, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 328
    .local v1, formatter:Ljava/text/SimpleDateFormat;
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    .line 329
    .local v7, now:Ljava/util/Date;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/cursors_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "_"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".txt"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 331
    .local v6, logFileName:Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, logFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 333
    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 334
    add-int/lit8 v2, v2, 0x1

    .line 335
    new-instance v5, Ljava/io/File;

    .end local v5           #logFile:Ljava/io/File;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5       #logFile:Ljava/io/File;
    goto :goto_1

    .line 337
    :cond_2
    if-lez v2, :cond_3

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 340
    :cond_3
    :try_start_0
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    move-result v13

    if-nez v13, :cond_4

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to create "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_4
    const/16 v13, 0x1b6

    const/4 v14, -0x1

    const/4 v15, -0x1

    invoke-static {v6, v13, v14, v15}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v12

    .line 342
    .restart local v12       #ret:I
    if-eqz v12, :cond_5

    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to set permission for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", err:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :cond_5
    :try_start_1
    new-instance v11, Ljava/io/PrintWriter;

    invoke-direct {v11, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v10           #pw:Ljava/io/PrintWriter;
    .local v11, pw:Ljava/io/PrintWriter;
    move-object v10, v11

    .line 354
    .end local v11           #pw:Ljava/io/PrintWriter;
    .restart local v10       #pw:Ljava/io/PrintWriter;
    :goto_2
    new-instance v1, Ljava/text/SimpleDateFormat;

    .end local v1           #formatter:Ljava/text/SimpleDateFormat;
    const-string v13, "MM-dd kk:mm:ss.SSS"

    invoke-direct {v1, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 356
    .restart local v1       #formatter:Ljava/text/SimpleDateFormat;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\nCmdline: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " , pid: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 357
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Dump time: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    const-string v13, "List of all cursors:\n"

    invoke-virtual {v10, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object v13, v10

    .line 360
    goto/16 :goto_0

    .line 343
    .end local v12           #ret:I
    :catch_0
    move-exception v0

    .line 344
    .local v0, e:Ljava/io/IOException;
    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to create log file to dump cursor. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 350
    .end local v0           #e:Ljava/io/IOException;
    .restart local v12       #ret:I
    :catch_1
    move-exception v0

    .line 351
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v13, "SQLiteLeakDetect"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Fail to open log file to dump cursor. "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private static getProcessName(I)Ljava/lang/String;
    .locals 14
    .parameter "pid"

    .prologue
    .line 285
    const/4 v8, 0x0

    .line 286
    .local v8, procName:Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pid-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, defaultName:Ljava/lang/String;
    const/4 v5, 0x0

    .line 289
    .local v5, fr:Ljava/io/FileReader;
    const/4 v0, 0x0

    .line 291
    .local v0, br:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/proc/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/cmdline"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    .end local v5           #fr:Ljava/io/FileReader;
    .local v6, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, cmdline:Ljava/lang/String;
    new-instance v9, Ljava/util/StringTokenizer;

    const-string v10, "\u0000\t\n\r\u000c"

    invoke-direct {v9, v2, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    .local v9, st:Ljava/util/StringTokenizer;
    invoke-virtual {v9}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v8

    .line 306
    :cond_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :goto_0
    move-object v0, v1

    .line 312
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #cmdline:Ljava/lang/String;
    .end local v9           #st:Ljava/util/StringTokenizer;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :goto_1
    if-eqz v8, :cond_1

    const-string v10, ""

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    move-object v3, v8

    .end local v3           #defaultName:Ljava/lang/String;
    :cond_1
    move-object v5, v6

    .end local v6           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :goto_2
    return-object v3

    .line 292
    .restart local v3       #defaultName:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 293
    .local v4, e:Ljava/io/FileNotFoundException;
    const-string v10, "SQLiteLeakDetect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not find cmdline file for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 302
    .end local v4           #e:Ljava/io/FileNotFoundException;
    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v6       #fr:Ljava/io/FileReader;
    :catch_1
    move-exception v7

    .line 303
    .local v7, ie:Ljava/io/IOException;
    :goto_3
    :try_start_4
    const-string v10, "SQLiteLeakDetect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not read cmdline file for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 306
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 307
    :catch_2
    move-exception v4

    .line 308
    .local v4, e:Ljava/io/IOException;
    const-string v10, "SQLiteLeakDetect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to close cmdline file for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 305
    .end local v4           #e:Ljava/io/IOException;
    .end local v7           #ie:Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 306
    :goto_4
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 305
    :goto_5
    throw v10

    .line 307
    :catch_3
    move-exception v4

    .line 308
    .restart local v4       #e:Ljava/io/IOException;
    const-string v11, "SQLiteLeakDetect"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "fail to close cmdline file for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ". "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 307
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #e:Ljava/io/IOException;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #cmdline:Ljava/lang/String;
    .restart local v9       #st:Ljava/util/StringTokenizer;
    :catch_4
    move-exception v4

    .line 308
    .restart local v4       #e:Ljava/io/IOException;
    const-string v10, "SQLiteLeakDetect"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fail to close cmdline file for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 305
    .end local v2           #cmdline:Ljava/lang/String;
    .end local v4           #e:Ljava/io/IOException;
    .end local v9           #st:Ljava/util/StringTokenizer;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4

    .line 302
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_5
    move-exception v7

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto/16 :goto_3
.end method

.method public static removeIfNotUsed(I)V
    .locals 2
    .parameter "tid"

    .prologue
    .line 189
    sget-object v0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    return-void
.end method

.method public static storeRemoteTrace(III[Ljava/lang/String;)V
    .locals 3
    .parameter "rPid"
    .parameter "rTid"
    .parameter "tid"
    .parameter "trace"

    .prologue
    .line 179
    new-instance v0, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    invoke-direct {v0, p0, p1, p3}, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;-><init>(II[Ljava/lang/String;)V

    .line 180
    .local v0, remoteInfo:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    sget-object v1, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    return-void
.end method


# virtual methods
.method public cursorClosed()V
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 116
    return-void
.end method

.method public cursorDeactivated()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public cursorRequeried(Landroid/database/Cursor;)V
    .locals 0
    .parameter "cursor"

    .prologue
    .line 128
    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase$CursorFactory;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 12
    .parameter "factory"
    .parameter "selectionArgs"

    .prologue
    .line 69
    const/4 v3, 0x0

    .line 72
    .local v3, query:Landroid/database/sqlite/SQLiteQuery;
    :try_start_0
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->lock(Ljava/lang/String;)V

    .line 73
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->closePendingStatements()V

    .line 74
    new-instance v4, Landroid/database/sqlite/SQLiteQuery;

    iget-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v4, v7, v8, v9, p2}, Landroid/database/sqlite/SQLiteQuery;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 77
    .end local v3           #query:Landroid/database/sqlite/SQLiteQuery;
    .local v4, query:Landroid/database/sqlite/SQLiteQuery;
    if-nez p1, :cond_3

    .line 78
    :try_start_1
    new-instance v7, Landroid/database/sqlite/SQLiteCursor;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-direct {v7, p0, v8, v4}, Landroid/database/sqlite/SQLiteCursor;-><init>(Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    .line 84
    :goto_0
    const/4 v7, 0x1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileOpenCursor()Z

    move-result v8

    if-ne v7, v8, :cond_1

    .line 85
    const/4 v6, 0x0

    .line 86
    .local v6, trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v5

    .line 87
    .local v5, tid:I
    sget-object v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mRemoteTraceMap:Ljava/util/Map;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    check-cast v6, Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;

    .line 89
    .restart local v6       #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    new-instance v2, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;

    invoke-direct {v2, p0, v6}, Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;-><init>(Landroid/database/sqlite/SQLiteDirectCursorDriver;Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;)V

    .line 90
    .local v2, debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;

    check-cast v1, Landroid/database/sqlite/SQLiteCursor;

    .line 91
    .local v1, cursor:Landroid/database/sqlite/SQLiteCursor;
    const/4 v0, 0x0

    .line 92
    .local v0, count:I
    sget-object v8, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    monitor-enter v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    :try_start_2
    sget-object v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursorRecordsMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v0

    .line 95
    sget v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    sget-object v9, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    array-length v9, v9

    if-ge v7, v9, :cond_0

    sget-object v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    sget v9, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    aget v7, v7, v9

    if-lt v0, v7, :cond_0

    .line 96
    const-string v7, "SQLiteLeakDetect"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Dump all cursors because "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThresholdToWarningLeak:[I

    sget v11, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    aget v10, v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " cursors are opened"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    sget v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    add-int/lit8 v7, v7, 0x1

    sput v7, Landroid/database/sqlite/SQLiteDirectCursorDriver;->sThreasholdLevel:I

    .line 98
    invoke-static {}, Landroid/database/sqlite/SQLiteDirectCursorDriver;->dumpRecordMapLocked()V

    .line 100
    :cond_0
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .end local v0           #count:I
    .end local v1           #cursor:Landroid/database/sqlite/SQLiteCursor;
    .end local v2           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v5           #tid:I
    .end local v6           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :cond_1
    :try_start_3
    iput-object v4, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 105
    const/4 v3, 0x0

    .line 106
    .end local v4           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v3       #query:Landroid/database/sqlite/SQLiteQuery;
    :try_start_4
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 109
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 110
    :cond_2
    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 106
    return-object v7

    .line 80
    .end local v3           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v4       #query:Landroid/database/sqlite/SQLiteQuery;
    :cond_3
    :try_start_5
    iget-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mEditTable:Ljava/lang/String;

    invoke-interface {p1, v7, p0, v8, v4}, Landroid/database/sqlite/SQLiteDatabase$CursorFactory;->newCursor(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)Landroid/database/Cursor;

    move-result-object v7

    iput-object v7, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mCursor:Landroid/database/Cursor;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 109
    :catchall_0
    move-exception v7

    move-object v3, v4

    .end local v4           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v3       #query:Landroid/database/sqlite/SQLiteQuery;
    :goto_1
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 110
    :cond_4
    iget-object v8, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 109
    throw v7

    .line 100
    .end local v3           #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v0       #count:I
    .restart local v1       #cursor:Landroid/database/sqlite/SQLiteCursor;
    .restart local v2       #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .restart local v4       #query:Landroid/database/sqlite/SQLiteQuery;
    .restart local v5       #tid:I
    .restart local v6       #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    :catchall_1
    move-exception v7

    :try_start_6
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 109
    .end local v0           #count:I
    .end local v1           #cursor:Landroid/database/sqlite/SQLiteCursor;
    .end local v2           #debug:Landroid/database/sqlite/SQLiteDirectCursorDriver$DebugInfo;
    .end local v4           #query:Landroid/database/sqlite/SQLiteQuery;
    .end local v5           #tid:I
    .end local v6           #trace:Landroid/database/sqlite/SQLiteDirectCursorDriver$RemoteTraceInfo;
    .restart local v3       #query:Landroid/database/sqlite/SQLiteQuery;
    :catchall_2
    move-exception v7

    goto :goto_1
.end method

.method public setBindArguments([Ljava/lang/String;)V
    .locals 1
    .parameter "bindArgs"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteQuery;->bindAllArgsAsStrings([Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteDirectCursorDriver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteDirectCursorDriver;->mSql:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
