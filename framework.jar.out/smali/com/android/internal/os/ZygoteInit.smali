.class public Lcom/android/internal/os/ZygoteInit;
.super Ljava/lang/Object;
.source "ZygoteInit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
        Lcom/android/internal/os/ZygoteInit$MyRunnable;
    }
.end annotation


# static fields
.field private static final ANDROID_SOCKET_ENV:Ljava/lang/String; = "ANDROID_SOCKET_zygote"

.field static final GC_LOOP_COUNT:I = 0xa

.field private static final LOG_BOOT_PROGRESS_PRELOAD_END:I = 0xbd6

.field private static final LOG_BOOT_PROGRESS_PRELOAD_START:I = 0xbcc

.field private static final PRELOADED_CLASSES:Ljava/lang/String; = "preloaded-classes"

.field private static final PRELOAD_GC_THRESHOLD:I = 0xc350

.field private static final PRELOAD_RESOURCES:Z = true

.field private static final ROOT_GID:I = 0x0

.field private static final ROOT_UID:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Zygote"

#the value of this static final field might be set in the static constructor
.field static final THREAD:Z = false

.field private static final UNPRIVILEGED_GID:I = 0x270f

.field private static final UNPRIVILEGED_UID:I = 0x270f

.field public static final USAGE_STRING:Ljava/lang/String; = " <\"start-system-server\"|\"\" for startSystemServer>"

.field private static final ZYGOTE_FORK_MODE:Z

.field static isError:Z

.field static isParallelThreadRunning:Z

.field private static mResources:Landroid/content/res/Resources;

.field public static parallelThread:J

.field private static sServerSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 64
    const-string v2, "debug.zygotethread"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/internal/os/ZygoteInit;->THREAD:Z

    .line 107
    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 108
    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isError:Z

    .line 112
    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isError:Z

    .line 113
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 114
    return-void

    :cond_0
    move v0, v1

    .line 64
    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 968
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 969
    return-void
.end method

.method private static acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    .prologue
    .line 197
    :try_start_0
    new-instance v1, Lcom/android/internal/os/ZygoteConnection;

    sget-object v2, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 59
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    return-void
.end method

.method static native capgetPermitted(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static closeServerSocket()V
    .locals 3

    .prologue
    .line 210
    :try_start_0
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    .local v0, ex:Ljava/io/IOException;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-object v1, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 218
    return-void

    .line 213
    .end local v0           #ex:Ljava/io/IOException;
    :catch_0
    move-exception v0

    .line 214
    .restart local v0       #ex:Ljava/io/IOException;
    const-string v1, "Zygote"

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static native createFileDescriptor(I)Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static gc()V
    .locals 1

    .prologue
    .line 614
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    .line 619
    .local v0, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 620
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 621
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 622
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 623
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 624
    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 625
    return-void
.end method

.method static native getpgid(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V
    .locals 5
    .parameter "parsedArgs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 634
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 637
    const/16 v0, 0x3f

    invoke-static {v0}, Landroid/os/FileUtils;->setUMask(I)I

    .line 639
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 643
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 644
    iget-object v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->invokeWith:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->niceName:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/os/WrapperInit;->execApplication(Ljava/lang/String;Ljava/lang/String;ILjava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 655
    :goto_0
    return-void

    .line 651
    :cond_1
    iget v0, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->targetSdkVersion:I

    iget-object v1, p0, Lcom/android/internal/os/ZygoteConnection$Arguments;->remainingArgs:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/os/RuntimeInit;->zygoteInit(I[Ljava/lang/String;)V

    goto :goto_0
.end method

.method static invokeStaticMain(Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .parameter "loader"
    .parameter "className"
    .parameter "argv"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 132
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 141
    .local v0, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_1
    const-string/jumbo v4, "main"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    .line 150
    .local v2, m:Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 151
    .local v3, modifiers:I
    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 152
    :cond_0
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Main method is not public and static on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 133
    .end local v0           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #m:Ljava/lang/reflect/Method;
    .end local v3           #modifiers:I
    :catch_0
    move-exception v1

    .line 134
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing class when invoking static main "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 142
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    .restart local v0       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_1
    move-exception v1

    .line 143
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Missing static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 145
    .end local v1           #ex:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v1

    .line 146
    .local v1, ex:Ljava/lang/SecurityException;
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Problem getting static main on "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 162
    .end local v1           #ex:Ljava/lang/SecurityException;
    .restart local v2       #m:Ljava/lang/reflect/Method;
    .restart local v3       #modifiers:I
    :cond_1
    new-instance v4, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;

    invoke-direct {v4, v2, p2}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;-><init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V

    throw v4
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .parameter "argv"

    .prologue
    .line 704
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 706
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->registerZygoteSocket()V

    .line 707
    const/16 v3, 0xbcc

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 709
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preload()V

    .line 710
    const/16 v3, 0xbd6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 714
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->writeZygoteSnapshot()V

    .line 717
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 720
    array-length v3, p0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 721
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 757
    :catch_0
    move-exception v0

    .line 758
    .local v0, caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;->run()V

    .line 764
    .end local v0           #caller:Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
    :goto_0
    return-void

    .line 731
    :cond_0
    const-wide/16 v3, 0xa

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 737
    :goto_1
    :try_start_2
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 738
    const-string v3, "Zygote"

    const-string v4, "!@waiting for 10 ms for loop thread to finish."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_1
    sget-boolean v3, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/internal/os/ZygoteInit;->isError:Z

    if-eqz v3, :cond_0

    .line 742
    :cond_2
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const-string/jumbo v4, "start-system-server"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 743
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->startSystemServer()Z

    .line 748
    :cond_3
    const-string v3, "Zygote"

    const-string v4, "Accepting command socket connections"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->runSelectLoopMode()V

    .line 756
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V
    :try_end_2
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 759
    :catch_1
    move-exception v1

    .line 760
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v3, "Zygote"

    const-string v4, "Zygote died with exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 761
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->closeServerSocket()V

    .line 762
    throw v1

    .line 733
    .end local v1           #ex:Ljava/lang/RuntimeException;
    :catch_2
    move-exception v2

    .line 735
    .local v2, interruptedexception:Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    .line 744
    .end local v2           #interruptedexception:Ljava/lang/InterruptedException;
    :cond_4
    const/4 v3, 0x1

    aget-object v3, p0, v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 745
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " <\"start-system-server\"|\"\" for startSystemServer>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_3
    .catch Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method private static parallelpreloadClasses()V
    .locals 24

    .prologue
    .line 332
    const-class v1, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string/jumbo v2, "preloaded-classes"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v14

    .line 334
    .local v14, is:Ljava/io/InputStream;
    if-nez v14, :cond_0

    .line 335
    const-string v1, "Zygote"

    const-string v2, "Couldn\'t find preloaded-classes."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :goto_0
    return-void

    .line 337
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 338
    .local v6, runtime:Ldalvik/system/VMRuntime;
    const/16 v1, 0xbb8

    new-array v7, v1, [Ljava/lang/String;

    .line 340
    .local v7, array:[Ljava/lang/String;
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 341
    const-string v1, "Zygote"

    const-string v2, "Preloading classes..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_1
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v10

    .line 345
    .local v10, defaultUtilization:F
    const v1, 0x3f4ccccd

    invoke-virtual {v6, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 348
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 349
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 350
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 353
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v2, 0x100

    invoke-direct {v8, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 354
    .local v8, br:Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 356
    .local v9, count:I
    const/4 v12, 0x0

    .line 357
    .local v12, i:I
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v17

    .local v17, line:Ljava/lang/String;
    if-eqz v17, :cond_3

    .line 358
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 359
    const-string v1, "#"

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 362
    aput-object v17, v7, v12

    .line 363
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 365
    :cond_3
    move v4, v12

    .line 366
    .local v4, len:I
    move-object v5, v7

    .line 367
    .local v5, as:[Ljava/lang/String;
    if-lez v4, :cond_9

    .line 368
    new-instance v18, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$MyRunnable;

    const/4 v2, 0x0

    div-int/lit8 v3, v4, 0x2

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/os/ZygoteInit$MyRunnable;-><init>(III[Ljava/lang/String;Ldalvik/system/VMRuntime;)V

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 369
    .local v18, localThread:Ljava/lang/Thread;
    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    const-wide/16 v22, 0x1

    add-long v1, v1, v22

    sput-wide v1, Lcom/android/internal/os/ZygoteInit;->parallelThread:J

    .line 370
    const/16 v1, 0xa

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 371
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    .line 373
    div-int/lit8 v21, v4, 0x2

    .line 374
    .local v21, x:I
    :goto_2
    move/from16 v0, v21

    if-ge v0, v4, :cond_8

    .line 375
    aget-object v19, v5, v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 376
    .local v19, s:Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 378
    :try_start_1
    invoke-static/range {v19 .. v19}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 379
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v1

    const v2, 0xc350

    if-le v1, v2, :cond_4

    .line 380
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 381
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 382
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 393
    :cond_4
    :goto_3
    add-int/lit8 v21, v21, 0x1

    .line 394
    goto :goto_2

    .line 384
    :catch_0
    move-exception v11

    .line 385
    .local v11, e:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class not found for preloading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 412
    .end local v4           #len:I
    .end local v5           #as:[Ljava/lang/String;
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v9           #count:I
    .end local v11           #e:Ljava/lang/ClassNotFoundException;
    .end local v12           #i:I
    .end local v17           #line:Ljava/lang/String;
    .end local v18           #localThread:Ljava/lang/Thread;
    .end local v19           #s:Ljava/lang/String;
    .end local v21           #x:I
    :catch_1
    move-exception v11

    .line 413
    .local v11, e:Ljava/io/IOException;
    :try_start_3
    const-string v1, "Zygote"

    const-string v2, "Error reading preloaded-classes."

    invoke-static {v1, v2, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 415
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 418
    .end local v11           #e:Ljava/io/IOException;
    :goto_4
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    goto/16 :goto_0

    .line 386
    .restart local v4       #len:I
    .restart local v5       #as:[Ljava/lang/String;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v17       #line:Ljava/lang/String;
    .restart local v18       #localThread:Ljava/lang/Thread;
    .restart local v19       #s:Ljava/lang/String;
    .restart local v21       #x:I
    :catch_2
    move-exception v20

    .line 387
    .local v20, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error preloading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 388
    move-object/from16 v0, v20

    instance-of v1, v0, Ljava/lang/Error;

    if-eqz v1, :cond_5

    check-cast v20, Ljava/lang/Error;

    .end local v20           #t:Ljava/lang/Throwable;
    throw v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 415
    .end local v4           #len:I
    .end local v5           #as:[Ljava/lang/String;
    .end local v8           #br:Ljava/io/BufferedReader;
    .end local v9           #count:I
    .end local v12           #i:I
    .end local v17           #line:Ljava/lang/String;
    .end local v18           #localThread:Ljava/lang/Thread;
    .end local v19           #s:Ljava/lang/String;
    .end local v21           #x:I
    :catchall_0
    move-exception v1

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 418
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 415
    throw v1

    .line 389
    .restart local v4       #len:I
    .restart local v5       #as:[Ljava/lang/String;
    .restart local v8       #br:Ljava/io/BufferedReader;
    .restart local v9       #count:I
    .restart local v12       #i:I
    .restart local v17       #line:Ljava/lang/String;
    .restart local v18       #localThread:Ljava/lang/Thread;
    .restart local v19       #s:Ljava/lang/String;
    .restart local v20       #t:Ljava/lang/Throwable;
    .restart local v21       #x:I
    :cond_5
    :try_start_5
    move-object/from16 v0, v20

    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_6

    check-cast v20, Ljava/lang/RuntimeException;

    .end local v20           #t:Ljava/lang/Throwable;
    throw v20

    .line 390
    .restart local v20       #t:Ljava/lang/Throwable;
    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    move-object/from16 v0, v20

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 402
    .end local v19           #s:Ljava/lang/String;
    .end local v20           #t:Ljava/lang/Throwable;
    .local v15, l:J
    :cond_7
    const-wide/16 v1, 0xa

    :try_start_6
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 408
    :goto_5
    :try_start_7
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_8

    .line 409
    const-string v1, "Zygote"

    const-string v2, "Waiting for PC Thread to complete loading"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v15           #l:J
    :cond_8
    sget-wide v15, Lcom/android/internal/os/ZygoteInit;->parallelThread:J
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 398
    .restart local v15       #l:J
    const-wide/16 v1, 0x0

    cmp-long v1, v15, v1

    if-gtz v1, :cond_7

    .line 415
    .end local v15           #l:J
    .end local v18           #localThread:Ljava/lang/Thread;
    .end local v21           #x:I
    :cond_9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 417
    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    goto :goto_4

    .line 404
    .restart local v15       #l:J
    .restart local v18       #localThread:Ljava/lang/Thread;
    .restart local v21       #x:I
    :catch_3
    move-exception v13

    .line 406
    .local v13, interruptedexception:Ljava/lang/InterruptedException;
    :try_start_8
    invoke-virtual {v13}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5
.end method

.method static preload()V
    .locals 4

    .prologue
    const/16 v2, 0x270f

    const/4 v3, 0x0

    .line 248
    sget-boolean v1, Lcom/android/internal/os/ZygoteInit;->THREAD:Z

    if-nez v1, :cond_2

    .line 249
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_0

    .line 250
    const-string v1, "Zygote"

    const-string/jumbo v2, "preload before preloadClasses()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :cond_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadClasses()V

    .line 252
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->preloadResources()V

    .line 253
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_1

    .line 254
    const-string v1, "Zygote"

    const-string/jumbo v2, "preload end"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .local v0, localThread:Ljava/lang/Thread;
    :cond_1
    :goto_0
    return-void

    .line 257
    .end local v0           #localThread:Ljava/lang/Thread;
    :cond_2
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/os/ZygoteInit;->isParallelThreadRunning:Z

    .line 258
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/os/ZygoteInit$1;

    invoke-direct {v1}, Lcom/android/internal/os/ZygoteInit$1;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 277
    .restart local v0       #localThread:Ljava/lang/Thread;
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 278
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 280
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 281
    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 282
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_3

    .line 283
    const-string v1, "Zygote"

    const-string/jumbo v2, "preload before parallelpreloadClasses()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_3
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->parallelpreloadClasses()V

    .line 285
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v1, :cond_4

    .line 286
    const-string v1, "Zygote"

    const-string/jumbo v2, "preload parallelpreloadClasses()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_4
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 288
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto :goto_0
.end method

.method private static preloadClasses()V
    .locals 15

    .prologue
    const/16 v12, 0x270f

    const/4 v14, 0x0

    .line 433
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    .line 435
    .local v6, runtime:Ldalvik/system/VMRuntime;
    const-class v10, Lcom/android/internal/os/ZygoteInit;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string/jumbo v11, "preloaded-classes"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 437
    .local v4, is:Ljava/io/InputStream;
    if-nez v4, :cond_0

    .line 438
    const-string v10, "Zygote"

    const-string v11, "Couldn\'t find preloaded-classes."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 440
    :cond_0
    const-string v10, "Zygote"

    const-string v11, "Preloading classes..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 444
    .local v7, startTime:J
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 445
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 449
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->getTargetHeapUtilization()F

    move-result v2

    .line 450
    .local v2, defaultUtilization:F
    const v10, 0x3f4ccccd

    invoke-virtual {v6, v10}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 453
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 454
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 455
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 458
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v11, 0x100

    invoke-direct {v0, v10, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 461
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 463
    .local v1, count:I
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .local v5, line:Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 465
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 466
    const-string v10, "#"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    if-nez v10, :cond_1

    .line 474
    :try_start_1
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 475
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v10

    const v11, 0xc350

    if-le v10, v11, :cond_2

    .line 480
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 481
    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 482
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 484
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 485
    :catch_0
    move-exception v3

    .line 486
    .local v3, e:Ljava/lang/ClassNotFoundException;
    :try_start_2
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Class not found for preloading: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 501
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v3           #e:Ljava/lang/ClassNotFoundException;
    .end local v5           #line:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 502
    .local v3, e:Ljava/io/IOException;
    :try_start_3
    const-string v10, "Zygote"

    const-string v11, "Error reading preloaded-classes."

    invoke-static {v10, v11, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 504
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 506
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 508
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 511
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 512
    .end local v3           #e:Ljava/io/IOException;
    :goto_2
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    goto/16 :goto_0

    .line 487
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    :catch_2
    move-exception v9

    .line 488
    .local v9, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error preloading "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 489
    instance-of v10, v9, Ljava/lang/Error;

    if-eqz v10, :cond_3

    .line 490
    check-cast v9, Ljava/lang/Error;

    .end local v9           #t:Ljava/lang/Throwable;
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 504
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v1           #count:I
    .end local v5           #line:Ljava/lang/String;
    :catchall_0
    move-exception v10

    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 506
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 508
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 511
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    .line 512
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveGroup(I)V

    .line 504
    throw v10

    .line 492
    .restart local v0       #br:Ljava/io/BufferedReader;
    .restart local v1       #count:I
    .restart local v5       #line:Ljava/lang/String;
    .restart local v9       #t:Ljava/lang/Throwable;
    :cond_3
    :try_start_5
    instance-of v10, v9, Ljava/lang/RuntimeException;

    if-eqz v10, :cond_4

    .line 493
    check-cast v9, Ljava/lang/RuntimeException;

    .end local v9           #t:Ljava/lang/Throwable;
    throw v9

    .line 495
    .restart local v9       #t:Ljava/lang/Throwable;
    :cond_4
    new-instance v10, Ljava/lang/RuntimeException;

    invoke-direct {v10, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v10

    .line 499
    .end local v9           #t:Ljava/lang/Throwable;
    :cond_5
    const-string v10, "Zygote"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "...preloaded "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " classes in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v7

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "ms."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 504
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 506
    invoke-virtual {v6, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 508
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 511
    invoke-static {v14}, Lcom/android/internal/os/ZygoteInit;->setEffectiveUser(I)V

    goto/16 :goto_2
.end method

.method private static preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 5
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 560
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 561
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v3

    const v4, 0xc350

    if-le v3, v4, :cond_0

    .line 565
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 566
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 567
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 569
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 573
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 574
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 560
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    .end local v2           #id:I
    :cond_2
    return v0
.end method

.method private static preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I
    .locals 7
    .parameter "runtime"
    .parameter "ar"

    .prologue
    .line 582
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 583
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 584
    invoke-static {}, Landroid/os/Debug;->getGlobalAllocSize()I

    move-result v4

    const v5, 0xc350

    if-le v4, v5, :cond_0

    .line 588
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 589
    invoke-virtual {p0}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 590
    invoke-static {}, Landroid/os/Debug;->resetGlobalAllocSize()V

    .line 592
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 596
    .local v3, id:I
    if-eqz v3, :cond_1

    .line 597
    sget-object v4, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 598
    .local v1, dr:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    const v5, -0x40000001

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 599
    const-string v4, "Zygote"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Preloaded drawable resource #0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") that varies with configuration!!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    .end local v1           #dr:Landroid/graphics/drawable/Drawable;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 605
    .end local v3           #id:I
    :cond_2
    return v0
.end method

.method private static preloadResources()V
    .locals 10

    .prologue
    .line 525
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    .line 527
    .local v3, runtime:Ldalvik/system/VMRuntime;
    invoke-static {}, Landroid/os/Debug;->startAllocCounting()V

    .line 529
    :try_start_0
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 530
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->runFinalizationSync()V

    .line 531
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    sput-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    .line 532
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->startPreloading()V

    .line 534
    const-string v6, "Zygote"

    const-string v7, "Preloading resources..."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 537
    .local v4, startTime:J
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070005

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 539
    .local v1, ar:Landroid/content/res/TypedArray;
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadDrawables(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 540
    .local v0, N:I
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 544
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    const v7, 0x1070006

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 546
    invoke-static {v3, v1}, Lcom/android/internal/os/ZygoteInit;->preloadColorStateLists(Ldalvik/system/VMRuntime;Landroid/content/res/TypedArray;)I

    move-result v0

    .line 547
    const-string v6, "Zygote"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "...preloaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " resources in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "ms."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    sget-object v6, Lcom/android/internal/os/ZygoteInit;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->finishPreloading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    .end local v0           #N:I
    .end local v1           #ar:Landroid/content/res/TypedArray;
    .end local v4           #startTime:J
    :goto_0
    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    .line 556
    return-void

    .line 551
    :catch_0
    move-exception v2

    .line 552
    .local v2, e:Ljava/lang/RuntimeException;
    :try_start_1
    const-string v6, "Zygote"

    const-string v7, "Failure preloading resources"

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 554
    .end local v2           #e:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v6

    invoke-static {}, Landroid/os/Debug;->stopAllocCounting()V

    throw v6
.end method

.method private static registerZygoteSocket()V
    .locals 6

    .prologue
    .line 171
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    if-nez v3, :cond_0

    .line 174
    :try_start_0
    const-string v3, "ANDROID_SOCKET_zygote"

    invoke-static {v3}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, env:Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 182
    .local v2, fileDesc:I
    :try_start_1
    new-instance v3, Landroid/net/LocalServerSocket;

    invoke-static {v2}, Lcom/android/internal/os/ZygoteInit;->createFileDescriptor(I)Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/LocalServerSocket;-><init>(Ljava/io/FileDescriptor;)V

    sput-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 189
    :cond_0
    return-void

    .line 176
    .end local v2           #fileDesc:I
    :catch_0
    move-exception v1

    .line 177
    .local v1, ex:Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "ANDROID_SOCKET_zygote unset or invalid"

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 184
    .end local v1           #ex:Ljava/lang/RuntimeException;
    .restart local v2       #fileDesc:I
    :catch_1
    move-exception v1

    .line 185
    .local v1, ex:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error binding to local socket \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method static native reopenStdio(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static runForkMode()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 776
    .local v1, peer:Lcom/android/internal/os/ZygoteConnection;
    .local v2, pid:I
    :goto_0
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v1

    .line 780
    invoke-static {}, Ldalvik/system/Zygote;->fork()I

    .end local v2           #pid:I
    move-result v2

    .line 782
    .restart local v2       #pid:I
    if-nez v2, :cond_0

    .line 787
    :try_start_0
    sget-object v3, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v3}, Landroid/net/LocalServerSocket;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 791
    :goto_1
    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    .line 794
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->run()V

    .line 802
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    .local v0, ex:Ljava/io/IOException;
    :try_start_1
    const-string v3, "Zygote"

    const-string v4, "Zygote Child: error closing sockets"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 791
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    sput-object v5, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    throw v3

    .line 796
    :cond_0
    if-lez v2, :cond_1

    .line 797
    invoke-virtual {v1}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    goto :goto_0

    .line 799
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error invoking fork()"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static runSelectLoopMode()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;
        }
    .end annotation

    .prologue
    .line 813
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v4, fds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/io/FileDescriptor;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 815
    .local v8, peers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/os/ZygoteConnection;>;"
    const/4 v9, 0x4

    new-array v3, v9, [Ljava/io/FileDescriptor;

    .line 817
    .local v3, fdArray:[Ljava/io/FileDescriptor;
    sget-object v9, Lcom/android/internal/os/ZygoteInit;->sServerSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v9}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 818
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    const/16 v6, 0xa

    .line 833
    .local v6, loopCount:I
    :cond_0
    :goto_0
    if-gtz v6, :cond_1

    .line 834
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->gc()V

    .line 835
    const/16 v6, 0xa

    .line 842
    :goto_1
    :try_start_0
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, [Ljava/io/FileDescriptor;

    move-object v3, v0

    .line 843
    invoke-static {v3}, Lcom/android/internal/os/ZygoteInit;->selectReadable([Ljava/io/FileDescriptor;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 848
    .local v5, index:I
    if-gez v5, :cond_2

    .line 849
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 837
    .end local v5           #index:I
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 844
    :catch_0
    move-exception v2

    .line 845
    .local v2, ex:Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error in select()"

    invoke-direct {v9, v10, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 850
    .end local v2           #ex:Ljava/io/IOException;
    .restart local v5       #index:I
    :cond_2
    if-nez v5, :cond_3

    .line 851
    invoke-static {}, Lcom/android/internal/os/ZygoteInit;->acceptCommandPeer()Lcom/android/internal/os/ZygoteConnection;

    move-result-object v7

    .line 852
    .local v7, newPeer:Lcom/android/internal/os/ZygoteConnection;
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-virtual {v7}, Lcom/android/internal/os/ZygoteConnection;->getFileDesciptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 856
    .end local v7           #newPeer:Lcom/android/internal/os/ZygoteConnection;
    :cond_3
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v9}, Lcom/android/internal/os/ZygoteConnection;->runOnce()Z

    move-result v1

    .line 858
    .local v1, done:Z
    if-eqz v1, :cond_0

    .line 859
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 860
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method static native selectReadable([Ljava/io/FileDescriptor;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCapabilities(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setCloseOnExec(Ljava/io/FileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static setEffectiveGroup(I)V
    .locals 4
    .parameter "gid"

    .prologue
    .line 240
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setregid(II)I

    move-result v0

    .line 241
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 242
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setregid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_0
    return-void
.end method

.method private static setEffectiveUser(I)V
    .locals 4
    .parameter "uid"

    .prologue
    .line 230
    const/4 v1, 0x0

    invoke-static {v1, p0}, Lcom/android/internal/os/ZygoteInit;->setreuid(II)I

    move-result v0

    .line 231
    .local v0, errno:I
    if-eqz v0, :cond_0

    .line 232
    const-string v1, "Zygote"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setreuid() failed. errno: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_0
    return-void
.end method

.method static native setpgid(II)I
.end method

.method static native setregid(II)I
.end method

.method static native setreuid(II)I
.end method

.method private static startSystemServer()Z
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/ZygoteInit$MethodAndArgsCaller;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v14, 0x1

    .line 663
    const/4 v0, 0x7

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "--setuid=1000"

    aput-object v1, v9, v0

    const-string v0, "--setgid=1000"

    aput-object v0, v9, v14

    const/4 v0, 0x2

    const-string v1, "--setgroups=1001,1002,1003,1004,1005,1006,1007,1008,1009,1010,1018,1021,3001,3002,3003,3004,3006,3007,3008,5001"

    aput-object v1, v9, v0

    const/4 v0, 0x3

    const-string v1, "--capabilities=130104352,130104352"

    aput-object v1, v9, v0

    const/4 v0, 0x4

    const-string v1, "--runtime-init"

    aput-object v1, v9, v0

    const/4 v0, 0x5

    const-string v1, "--nice-name=system_server"

    aput-object v1, v9, v0

    const/4 v0, 0x6

    const-string v1, "com.android.server.SystemServer"

    aput-object v1, v9, v0

    .line 672
    .local v9, args:[Ljava/lang/String;
    const/4 v11, 0x0

    .line 677
    .local v11, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_0
    new-instance v12, Lcom/android/internal/os/ZygoteConnection$Arguments;

    invoke-direct {v12, v9}, Lcom/android/internal/os/ZygoteConnection$Arguments;-><init>([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    .end local v11           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .local v12, parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :try_start_1
    invoke-static {v12}, Lcom/android/internal/os/ZygoteConnection;->applyDebuggerSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 679
    invoke-static {v12}, Lcom/android/internal/os/ZygoteConnection;->applyInvokeWithSystemProperty(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 682
    iget v0, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->uid:I

    iget v1, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->gid:I

    iget-object v2, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->gids:[I

    iget v3, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->debugFlags:I

    const/4 v4, 0x0

    check-cast v4, [[I

    iget-wide v5, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->permittedCapabilities:J

    iget-wide v7, v12, Lcom/android/internal/os/ZygoteConnection$Arguments;->effectiveCapabilities:J

    invoke-static/range {v0 .. v8}, Ldalvik/system/Zygote;->forkSystemServer(II[II[[IJJ)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 694
    .local v13, pid:I
    if-nez v13, :cond_0

    .line 695
    invoke-static {v12}, Lcom/android/internal/os/ZygoteInit;->handleSystemServerProcess(Lcom/android/internal/os/ZygoteConnection$Arguments;)V

    .line 698
    :cond_0
    return v14

    .line 689
    .end local v12           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .end local v13           #pid:I
    .restart local v11       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_0
    move-exception v10

    .line 690
    .local v10, ex:Ljava/lang/IllegalArgumentException;
    :goto_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 689
    .end local v10           #ex:Ljava/lang/IllegalArgumentException;
    .end local v11           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v12       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    :catch_1
    move-exception v10

    move-object v11, v12

    .end local v12           #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    .restart local v11       #parsedArgs:Lcom/android/internal/os/ZygoteConnection$Arguments;
    goto :goto_0
.end method
