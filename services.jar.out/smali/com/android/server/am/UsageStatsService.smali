.class public final Lcom/android/server/am/UsageStatsService;
.super Lcom/android/internal/app/IUsageStats$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;,
        Lcom/android/server/am/UsageStatsService$TimeStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_VERSION:I = 0x4

.field private static final FILE_HISTORY:Ljava/lang/String; = "usage-history.xml"

.field private static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field private static final LAUNCH_TIME_BINS:[I = null

.field private static final MAX_NUM_FILES:I = 0x5

.field private static final NUM_LAUNCH_TIME_BINS:I = 0xa

.field private static final REPORT_UNEXPECTED:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usagestats"

.field private static final TAG:Ljava/lang/String; = "UsageStats"

.field private static final VERSION:I = 0x3ef

.field private static final localLOGV:Z

.field static sService:Lcom/android/internal/app/IUsageStats;


# instance fields
.field private mCal:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mFileLeaf:Ljava/lang/String;

.field final mFileLock:Ljava/lang/Object;

.field private mHistoryFile:Lcom/android/internal/os/AtomicFile;

.field private mIsResumed:Z

.field private final mLastResumeTimes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLastResumedComp:Ljava/lang/String;

.field private mLastResumedPkg:Ljava/lang/String;

.field private final mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;",
            ">;"
        }
    .end annotation
.end field

.field final mStatsLock:Ljava/lang/Object;

.field private final mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-void

    :array_0
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "dir"

    .prologue
    .line 244
    invoke-direct {p0}, Lcom/android/internal/app/IUsageStats$Stub;-><init>()V

    .line 121
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 122
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 123
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 245
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    .line 246
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    .line 247
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    .line 248
    new-instance v4, Ljava/lang/Object;

    invoke-direct/range {v4 .. v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    .line 249
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    .line 250
    const-string v4, "GMT+0"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    .line 252
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 255
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 256
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, fList:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 258
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, prefix:Ljava/lang/String;
    array-length v1, v0

    .line 260
    .local v1, i:I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 261
    add-int/lit8 v1, v1, -0x1

    .line 262
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 263
    const-string v4, "UsageStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old usage file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 270
    .end local v1           #i:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    const-string v4, "usage-"

    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 271
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 272
    new-instance v4, Lcom/android/internal/os/AtomicFile;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    const-string v7, "usage-history.xml"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Lcom/android/internal/os/AtomicFile;

    .line 273
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readStatsFromFile()V

    .line 274
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFromFile()V

    .line 275
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 277
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 278
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UsageStatsService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/UsageStatsService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    return-object v0
.end method

.method private checkFileLimitFLOCK()V
    .locals 8

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v2

    .line 450
    .local v2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 468
    :cond_0
    return-void

    .line 454
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 455
    .local v0, count:I
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    .line 459
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 460
    add-int/lit8 v0, v0, -0x5

    .line 462
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 463
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .local v3, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 465
    .local v1, file:Ljava/io/File;
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting usage file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 462
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V
    .locals 11
    .parameter "pw"
    .parameter "isCompactOutput"
    .parameter "deleteAfterPrint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "ZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 870
    .local p4, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v9

    .line 871
    .local v9, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 898
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 875
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 876
    .local v8, file:Ljava/lang/String;
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 881
    :cond_3
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 882
    .local v6, dFile:Ljava/io/File;
    const-string v0, "usage-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 884
    .local v3, dateStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .local v1, in:Landroid/os/Parcel;
    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 885
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V

    .line 887
    if-eqz p3, :cond_2

    .line 889
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 891
    .end local v1           #in:Landroid/os/Parcel;
    :catch_0
    move-exception v7

    .line 892
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 894
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    .line 895
    .local v7, e:Ljava/io/IOException;
    const-string v0, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed with "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " when collecting dump info from file : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V
    .locals 15
    .parameter "in"
    .parameter "pw"
    .parameter "date"
    .parameter "isCompactOutput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 902
    .local p5, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v13, 0x200

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 903
    .local v10, sb:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    .line 904
    const-string v13, "D:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    const/4 v13, 0x4

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 906
    const/16 v13, 0x2c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 911
    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 914
    .local v12, vers:I
    const/16 v13, 0x3ef

    if-eq v12, v13, :cond_2

    .line 915
    const-string v13, " (old data version)"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 916
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1009
    :cond_0
    return-void

    .line 908
    .end local v12           #vers:I
    :cond_1
    const-string v13, "Date: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 920
    .restart local v12       #vers:I
    :cond_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 921
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 923
    .local v1, N:I
    :goto_1
    if-lez v1, :cond_0

    .line 924
    add-int/lit8 v1, v1, -0x1

    .line 925
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 926
    .local v8, pkgName:Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 929
    const/4 v13, 0x0

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 930
    new-instance v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    move-object/from16 v0, p1

    invoke-direct {v9, p0, v0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 931
    .local v9, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1007
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 934
    :cond_4
    if-eqz p4, :cond_7

    .line 935
    const-string v13, "P:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 936
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    const/16 v13, 0x2c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 938
    iget v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 939
    const/16 v13, 0x2c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 940
    iget-wide v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 941
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 942
    iget-object v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 943
    .local v2, NC:I
    if-lez v2, :cond_3

    .line 944
    iget-object v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 945
    .local v4, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v13, "A:"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 947
    .local v3, activity:Ljava/lang/String;
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 948
    const/16 v13, 0x2a

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 949
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v3, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    :goto_3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 955
    .local v11, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const/16 v13, 0x2c

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 956
    iget v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    const/16 v13, 0xa

    if-ge v5, v13, :cond_6

    .line 958
    const-string v13, ","

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    iget-object v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v13, v13, v5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 957
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 952
    .end local v5           #i:I
    .end local v11           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_5
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 961
    .restart local v5       #i:I
    .restart local v11       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_6
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 966
    .end local v2           #NC:I
    .end local v3           #activity:Ljava/lang/String;
    .end local v4           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    .end local v5           #i:I
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_7
    const-string v13, "  "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 967
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 968
    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 969
    iget v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 970
    const-string v13, " times, "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 971
    iget-wide v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 972
    const-string v13, " ms"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 973
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 974
    iget-object v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 975
    .restart local v2       #NC:I
    if-lez v2, :cond_3

    .line 976
    iget-object v13, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 977
    .restart local v4       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v13, "    "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 979
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 980
    .restart local v11       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const-string v13, ": "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    iget v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 982
    const-string v13, " starts"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 983
    const/4 v7, 0x0

    .line 984
    .local v7, lastBin:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_6
    const/16 v13, 0x9

    if-ge v5, v13, :cond_9

    .line 985
    iget-object v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v13, v13, v5

    if-eqz v13, :cond_8

    .line 986
    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 987
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 988
    const/16 v13, 0x2d

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 989
    sget-object v13, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v13, v13, v5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 990
    const-string v13, "ms="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 991
    iget-object v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v13, v13, v5

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 993
    :cond_8
    sget-object v13, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v7, v13, v5

    .line 984
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 995
    :cond_9
    iget-object v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    if-eqz v13, :cond_a

    .line 996
    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 997
    const-string v13, ">="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    const-string v13, "ms="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    iget-object v13, v11, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1002
    :cond_a
    const/16 v13, 0xa

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5
.end method

.method private filterHistoryStats()V
    .locals 7

    .prologue
    .line 599
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 602
    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 604
    .local v2, tmpLastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 605
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 606
    .local v1, info:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 610
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Landroid/content/pm/PackageInfo;
    .end local v2           #tmpLastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #tmpLastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 611
    return-void
.end method

.method private getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "prefix"

    .prologue
    const/16 v7, 0xa

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v4

    .line 286
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v1, v3, 0x1

    .line 292
    .local v1, mm:I
    if-ge v1, v7, :cond_1

    .line 293
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 297
    .local v0, dd:I
    if-ge v0, v7, :cond_2

    .line 298
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 301
    .end local v0           #dd:I
    .end local v1           #mm:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 306
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 307
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/am/UsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 308
    .local v1, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 309
    .local v0, in:Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 310
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 311
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 312
    return-object v0
.end method

.method public static getService()Lcom/android/internal/app/IUsageStats;
    .locals 2

    .prologue
    .line 686
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_0

    .line 687
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 691
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 689
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 690
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 691
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    goto :goto_0
.end method

.method private getUsageStatsFileListFLOCK()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, fList:[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 431
    const/4 v3, 0x0

    .line 444
    :cond_0
    return-object v3

    .line 433
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 434
    .local v3, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v0, v4

    .line 435
    .local v2, file:Ljava/lang/String;
    const-string v6, "usage-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 434
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 438
    :cond_2
    const-string v6, ".bak"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 439
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 850
    const/4 v4, 0x0

    .line 851
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 852
    .local v1, avail:I
    new-array v2, v1, [B

    .line 854
    .local v2, data:[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 855
    .local v0, amt:I
    if-gtz v0, :cond_1

    .line 856
    return-object v2

    .line 858
    :cond_1
    add-int/2addr v4, v0

    .line 859
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 860
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    .line 861
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 862
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 863
    move-object v2, v3

    goto :goto_0
.end method

.method private readHistoryStatsFLOCK(Lcom/android/internal/os/AtomicFile;)V
    .locals 15
    .parameter "file"

    .prologue
    .line 363
    const/4 v4, 0x0

    .line 365
    .local v4, fis:Ljava/io/FileInputStream;
    :try_start_0
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v12}, Lcom/android/internal/os/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4

    .line 366
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v9

    .line 367
    .local v9, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v9, v4, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 368
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    .line 370
    .local v3, eventType:I
    :goto_0
    const/4 v12, 0x2

    if-eq v3, v12, :cond_0

    const/4 v12, 0x1

    if-eq v3, v12, :cond_0

    .line 372
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 374
    :cond_0
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 375
    .local v11, tagName:Ljava/lang/String;
    const-string v12, "usage-history"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 376
    const/4 v10, 0x0

    .line 378
    .local v10, pkg:Ljava/lang/String;
    :cond_1
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .line 379
    const/4 v12, 0x2

    if-ne v3, v12, :cond_7

    .line 380
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 381
    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 382
    .local v1, depth:I
    const-string v12, "pkg"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v12, 0x2

    if-ne v1, v12, :cond_5

    .line 383
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v10

    .line 407
    .end local v1           #depth:I
    :cond_2
    :goto_1
    const/4 v12, 0x1

    if-ne v3, v12, :cond_1

    .line 418
    .end local v10           #pkg:Ljava/lang/String;
    :cond_3
    if-eqz v4, :cond_4

    .line 420
    :try_start_1
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7

    .line 425
    .end local v3           #eventType:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #tagName:Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

    .line 384
    .restart local v1       #depth:I
    .restart local v3       #eventType:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v10       #pkg:Ljava/lang/String;
    .restart local v11       #tagName:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v12, "comp"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    const/4 v12, 0x3

    if-ne v1, v12, :cond_2

    if-eqz v10, :cond_2

    .line 385
    const/4 v12, 0x0

    const-string v13, "name"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, comp:Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "lrt"

    invoke-interface {v9, v12, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v7

    .line 387
    .local v7, lastResumeTimeStr:Ljava/lang/String;
    if-eqz v0, :cond_2

    if-eqz v7, :cond_2

    .line 389
    :try_start_3
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 390
    .local v5, lastResumeTime:J
    iget-object v13, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 391
    :try_start_4
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v12, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 392
    .local v8, lrt:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v8, :cond_6

    .line 393
    new-instance v8, Ljava/util/HashMap;

    .end local v8           #lrt:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 394
    .restart local v8       #lrt:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v12, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    :cond_6
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v8, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    monitor-exit v13

    goto :goto_1

    .end local v8           #lrt:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 398
    .end local v5           #lastResumeTime:J
    :catch_0
    move-exception v12

    goto :goto_1

    .line 402
    .end local v0           #comp:Ljava/lang/String;
    .end local v1           #depth:I
    .end local v7           #lastResumeTimeStr:Ljava/lang/String;
    :cond_7
    const/4 v12, 0x3

    if-ne v3, v12, :cond_2

    .line 403
    :try_start_6
    const-string v12, "pkg"

    invoke-interface {v9}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    move-result v12

    if-eqz v12, :cond_2

    .line 404
    const/4 v10, 0x0

    goto :goto_1

    .line 409
    .end local v3           #eventType:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #tagName:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 410
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_7
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 418
    if-eqz v4, :cond_4

    .line 420
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 421
    :catch_2
    move-exception v12

    goto :goto_2

    .line 411
    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v2

    .line 412
    .local v2, e:Ljava/io/IOException;
    :try_start_9
    const-string v12, "UsageStats"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Error reading history stats: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 418
    if-eqz v4, :cond_4

    .line 420
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    .line 421
    :catch_4
    move-exception v12

    goto/16 :goto_2

    .line 414
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 415
    .local v2, e:Ljava/lang/Exception;
    :try_start_b
    const-string v12, "UsageStats"

    const-string v13, "Unknown error reading history stats"

    invoke-static {v12, v13, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 418
    if-eqz v4, :cond_4

    .line 420
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    .line 421
    :catch_6
    move-exception v12

    goto/16 :goto_2

    .line 418
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    if-eqz v4, :cond_8

    .line 420
    :try_start_d
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 422
    :cond_8
    :goto_3
    throw v12

    .line 421
    .restart local v3       #eventType:I
    .restart local v9       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v11       #tagName:Ljava/lang/String;
    :catch_7
    move-exception v12

    goto/16 :goto_2

    .end local v3           #eventType:I
    .end local v9           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v11           #tagName:Ljava/lang/String;
    :catch_8
    move-exception v13

    goto :goto_3
.end method

.method private readHistoryStatsFromFile()V
    .locals 2

    .prologue
    .line 355
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v0}, Lcom/android/internal/os/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->readHistoryStatsFLOCK(Lcom/android/internal/os/AtomicFile;)V

    .line 359
    :cond_0
    monitor-exit v1

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .line 334
    .local v1, in:Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 335
    .local v4, vers:I
    const/16 v5, 0x3ef

    if-eq v4, v5, :cond_1

    .line 336
    const-string v5, "UsageStats"

    const-string v6, "Usage stats version changed; dropping"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    return-void

    .line 339
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 340
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 341
    add-int/lit8 v0, v0, -0x1

    .line 342
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 347
    new-instance v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 348
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v6

    .line 349
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private readStatsFromFile()V
    .locals 6

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 317
    .local v1, newFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v3

    .line 319
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    invoke-direct {p0, v1}, Lcom/android/server/am/UsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    return-void

    .line 323
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 324
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v2, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading data from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 329
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "args"
    .parameter "value"

    .prologue
    .line 1018
    if-eqz p0, :cond_1

    .line 1019
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1020
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1021
    const/4 v4, 0x1

    .line 1025
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 1019
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1025
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "args"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 1035
    if-eqz p0, :cond_0

    .line 1036
    array-length v0, p0

    .line 1037
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1038
    aget-object v3, p0, v1

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1039
    add-int/lit8 v1, v1, 0x1

    .line 1040
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 1044
    .end local v0           #N:I
    .end local v1           #i:I
    :cond_0
    return-object v2

    .line 1037
    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private writeHistoryStatsFLOCK(Lcom/android/internal/os/AtomicFile;)V
    .locals 11
    .parameter "historyFile"

    .prologue
    .line 614
    const/4 v2, 0x0

    .line 616
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 617
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 618
    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v7, "utf-8"

    invoke-interface {v5, v2, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 619
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 620
    const-string v7, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v8, 0x1

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 621
    const/4 v7, 0x0

    const-string v8, "usage-history"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 622
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :try_start_1
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 624
    .local v6, pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    const/4 v7, 0x0

    const-string v9, "pkg"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 625
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 626
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 627
    .local v0, compEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    const-string v9, "comp"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 628
    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v5, v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 629
    const/4 v9, 0x0

    const-string v10, "lrt"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v9, v10, v7}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 630
    const/4 v7, 0x0

    const-string v9, "comp"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 634
    .end local v0           #compEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 639
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v1

    .line 640
    .local v1, e:Ljava/io/IOException;
    const-string v7, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error writing history stats"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    if-eqz v2, :cond_0

    .line 642
    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 645
    .end local v1           #e:Ljava/io/IOException;
    :cond_0
    :goto_2
    return-void

    .line 632
    .restart local v4       #i$:Ljava/util/Iterator;
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6       #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1
    const/4 v7, 0x0

    :try_start_3
    const-string v9, "pkg"

    invoke-interface {v5, v7, v9}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 634
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #pkgEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_2
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 635
    const/4 v7, 0x0

    :try_start_4
    const-string v8, "usage-history"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 636
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 638
    invoke-virtual {p1, v2}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2
.end method

.method private writeStatsFLOCK(Ljava/io/File;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 571
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 573
    .local v1, stream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, out:Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    .line 575
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 576
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 579
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 580
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 582
    return-void

    .line 579
    .end local v0           #out:Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 580
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    throw v2
.end method

.method private writeStatsToFile(ZZ)V
    .locals 12
    .parameter "force"
    .parameter "forceWriteHistoryStats"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 484
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v8

    .line 485
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 486
    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 487
    .local v1, curDay:I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v8

    if-eq v1, v8, :cond_1

    move v4, v6

    .line 493
    .local v4, dayChanged:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 497
    .local v2, currElapsedTime:J
    if-nez p1, :cond_3

    .line 498
    if-nez v4, :cond_2

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    sub-long v8, v2, v8

    const-wide/32 v10, 0x1b7740

    cmp-long v8, v8, v10

    if-gez v8, :cond_2

    .line 568
    :cond_0
    :goto_1
    return-void

    .line 487
    .end local v1           #curDay:I
    .end local v2           #currElapsedTime:J
    .end local v4           #dayChanged:Z
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .restart local v1       #curDay:I
    :cond_1
    move v4, v7

    .line 488
    goto :goto_0

    .line 503
    .restart local v2       #currElapsedTime:J
    .restart local v4       #dayChanged:Z
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v7, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 504
    new-instance v6, Lcom/android/server/am/UsageStatsService$1;

    const-string v7, "UsageStatsService_DiskWriter"

    invoke-direct {v6, p0, v7}, Lcom/android/server/am/UsageStatsService$1;-><init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/UsageStatsService$1;->start()V

    goto :goto_1

    .line 519
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v7

    .line 521
    :try_start_2
    const-string v6, "usage-"

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 523
    const/4 v0, 0x0

    .line 524
    .local v0, backupFile:Ljava/io/File;
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 525
    new-instance v0, Ljava/io/File;

    .end local v0           #backupFile:Ljava/io/File;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".bak"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 526
    .restart local v0       #backupFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    .line 527
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 528
    const-string v6, "UsageStats"

    const-string v8, "Failed to persist new stats"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    monitor-exit v7

    goto :goto_1

    .line 566
    .end local v0           #backupFile:Ljava/io/File;
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 532
    .restart local v0       #backupFile:Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 538
    :cond_5
    :try_start_4
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeStatsFLOCK(Ljava/io/File;)V

    .line 539
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 540
    if-eqz v4, :cond_6

    .line 541
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 543
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    monitor-enter v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 544
    :try_start_5
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 545
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 546
    :try_start_6
    new-instance v6, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v6, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 547
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 550
    :cond_6
    if-nez v4, :cond_7

    if-eqz p2, :cond_8

    .line 552
    :cond_7
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mHistoryFile:Lcom/android/internal/os/AtomicFile;

    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->writeHistoryStatsFLOCK(Lcom/android/internal/os/AtomicFile;)V

    .line 556
    :cond_8
    if-eqz v0, :cond_9

    .line 557
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 566
    :cond_9
    :goto_2
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 545
    :catchall_2
    move-exception v6

    :try_start_8
    monitor-exit v8
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 559
    :catch_0
    move-exception v5

    .line 560
    .local v5, e:Ljava/io/IOException;
    :try_start_a
    const-string v6, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing stats to file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    if-eqz v0, :cond_9

    .line 562
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 563
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 585
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 586
    const/16 v4, 0x3ef

    :try_start_0
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 588
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 589
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 590
    .local v1, key:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 591
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 592
    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 594
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 595
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1052
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 1054
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump UsageStats from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " without permission "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    :goto_0
    return-void

    .line 1060
    :cond_0
    const-string v10, "--checkin"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 1061
    .local v3, isCheckinRequest:Z
    if-nez v3, :cond_1

    const-string v10, "-c"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_1
    const/4 v4, 0x1

    .line 1062
    .local v4, isCompactOutput:Z
    :goto_1
    if-nez v3, :cond_2

    const-string v10, "-d"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    :cond_2
    const/4 v1, 0x1

    .line 1063
    .local v1, deleteAfterPrint:Z
    :goto_2
    const-string v10, "--packages"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1068
    .local v9, rawPackages:Ljava/lang/String;
    if-nez v1, :cond_3

    .line 1069
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 1072
    :cond_3
    const/4 v8, 0x0

    .line 1073
    .local v8, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_7

    .line 1074
    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1076
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 1077
    .local v7, names:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_3
    if-ge v2, v5, :cond_8

    aget-object v6, v0, v2

    .line 1078
    .local v6, n:Ljava/lang/String;
    if-nez v8, :cond_4

    .line 1079
    new-instance v8, Ljava/util/HashSet;

    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1081
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_4
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1077
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1061
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #deleteAfterPrint:Z
    .end local v2           #i$:I
    .end local v4           #isCompactOutput:Z
    .end local v5           #len$:I
    .end local v6           #n:Ljava/lang/String;
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9           #rawPackages:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    .line 1062
    .restart local v4       #isCompactOutput:Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    .line 1084
    .restart local v1       #deleteAfterPrint:Z
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9       #rawPackages:Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    .line 1087
    const-string v10, "UsageStats"

    const-string v11, "Checkin without packages"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1091
    :cond_8
    iget-object v11, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v11

    .line 1092
    :try_start_0
    invoke-direct {p0, p2, v4, v1, v8}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V

    .line 1093
    monitor-exit v11

    goto :goto_0

    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10
.end method

.method public enforceCallingPermission()V
    .locals 5

    .prologue
    .line 795
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .locals 13

    .prologue
    const/4 v10, 0x0

    .line 823
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iget-object v12, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 826
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v11

    .line 827
    .local v11, size:I
    if-gtz v11, :cond_0

    .line 828
    monitor-exit v12

    .line 845
    :goto_0
    return-object v10

    .line 830
    :cond_0
    new-array v10, v11, [Lcom/android/internal/os/PkgUsageStats;

    .line 831
    .local v10, retArr:[Lcom/android/internal/os/PkgUsageStats;
    const/4 v7, 0x0

    .line 832
    .local v7, i:I
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 833
    .local v6, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 834
    .local v1, pkg:Ljava/lang/String;
    const-wide/16 v3, 0x0

    .line 835
    .local v3, usageTime:J
    const/4 v2, 0x0

    .line 837
    .local v2, launchCount:I
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 838
    .local v9, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v9, :cond_1

    .line 839
    iget-wide v3, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 840
    iget v2, v9, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 842
    :cond_1
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    aput-object v0, v10, v7

    .line 843
    add-int/lit8 v7, v7, 0x1

    .line 844
    goto :goto_1

    .line 845
    .end local v1           #pkg:Ljava/lang/String;
    .end local v2           #launchCount:I
    .end local v3           #usageTime:J
    .end local v6           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v9           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2
    monitor-exit v12

    goto :goto_0

    .line 846
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #retArr:[Lcom/android/internal/os/PkgUsageStats;
    .end local v11           #size:I
    :catchall_0
    move-exception v0

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;
    .locals 9
    .parameter "componentName"

    .prologue
    const/4 v0, 0x0

    .line 803
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 818
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 810
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 811
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 812
    .local v6, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 813
    .local v5, lastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v6, :cond_2

    if-nez v5, :cond_2

    .line 814
    monitor-exit v7

    goto :goto_0

    .line 819
    .end local v5           #lastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 816
    .restart local v5       #lastResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .restart local v6       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2
    if-eqz v6, :cond_3

    :try_start_1
    iget v2, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 817
    .local v2, launchCount:I
    :goto_1
    if-eqz v6, :cond_4

    iget-wide v3, v6, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 818
    .local v3, usageTime:J
    :goto_2
    new-instance v0, Lcom/android/internal/os/PkgUsageStats;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJLjava/util/Map;)V

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 816
    .end local v2           #launchCount:I
    .end local v3           #usageTime:J
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 817
    .restart local v2       #launchCount:I
    :cond_4
    const-wide/16 v3, 0x0

    goto :goto_2
.end method

.method public monitorPackages()V
    .locals 3

    .prologue
    .line 657
    new-instance v0, Lcom/android/server/am/UsageStatsService$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/UsageStatsService$2;-><init>(Lcom/android/server/am/UsageStatsService;)V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 665
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 666
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->filterHistoryStats()V

    .line 667
    return-void
.end method

.method public noteLaunchTime(Landroid/content/ComponentName;I)V
    .locals 4
    .parameter "componentName"
    .parameter "millis"

    .prologue
    const/4 v2, 0x0

    .line 776
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 778
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 792
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 784
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v2, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 786
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 787
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 788
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_2

    .line 789
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchTime(Ljava/lang/String;I)V

    .line 791
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 747
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v3

    .line 749
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 751
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    monitor-exit v3

    .line 773
    :goto_0
    return-void

    .line 753
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-nez v2, :cond_2

    .line 756
    monitor-exit v3

    goto :goto_0

    .line 769
    .end local v0           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 758
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 762
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 763
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_3

    .line 765
    const-string v2, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package stats for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    monitor-exit v3

    goto :goto_0

    .line 768
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 769
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 772
    invoke-direct {p0, v4, v4}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    goto :goto_0
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .locals 10
    .parameter "componentName"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 695
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 697
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 698
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 700
    .end local v1           #pkgName:Ljava/lang/String;
    :cond_0
    monitor-exit v7

    .line 742
    :goto_0
    return-void

    .line 703
    .restart local v1       #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 704
    .local v4, samePackage:Z
    iget-boolean v8, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-eqz v8, :cond_2

    .line 705
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v8, :cond_2

    .line 710
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 711
    .local v2, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v2, :cond_2

    .line 712
    invoke-virtual {v2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 717
    .end local v2           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2
    if-eqz v4, :cond_6

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v3, v5

    .line 720
    .local v3, sameComp:Z
    :goto_1
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 721
    iput-object v1, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    .line 722
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    .line 725
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 726
    .restart local v2       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v2, :cond_3

    .line 727
    new-instance v2, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .end local v2           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-direct {v2, p0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;)V

    .line 728
    .restart local v2       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    :cond_3
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    if-nez v4, :cond_7

    :goto_2
    invoke-virtual {v2, v8, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updateResume(Ljava/lang/String;Z)V

    .line 731
    if-nez v3, :cond_4

    .line 732
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchCount(Ljava/lang/String;)V

    .line 735
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 736
    .local v0, componentResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-nez v0, :cond_5

    .line 737
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #componentResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 738
    .restart local v0       #componentResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumeTimes:Ljava/util/Map;

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :cond_5
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 741
    monitor-exit v7

    goto :goto_0

    .end local v0           #componentResumeTimes:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v1           #pkgName:Ljava/lang/String;
    .end local v2           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .end local v3           #sameComp:Z
    .end local v4           #samePackage:Z
    :catchall_0
    move-exception v5

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #pkgName:Ljava/lang/String;
    .restart local v4       #samePackage:Z
    :cond_6
    move v3, v6

    .line 717
    goto :goto_1

    .restart local v2       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .restart local v3       #sameComp:Z
    :cond_7
    move v5, v6

    .line 730
    goto :goto_2
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    .line 649
    const-string v0, "usagestats"

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 650
    return-void
.end method

.method public shutdown()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 670
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    if-eqz v1, :cond_0

    .line 673
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 681
    :cond_0
    :goto_0
    const-string v1, "UsageStats"

    const-string v2, "Writing usage stats before shutdown..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    invoke-direct {p0, v5, v5}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(ZZ)V

    .line 683
    return-void

    .line 674
    :catch_0
    move-exception v0

    .line 676
    .local v0, e:Ljava/lang/IllegalStateException;
    :try_start_1
    const-string v1, "UsageStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregister PackageMonitor"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 678
    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    goto :goto_0

    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    throw v1
.end method
