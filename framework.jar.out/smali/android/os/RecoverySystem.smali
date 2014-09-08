.class public Landroid/os/RecoverySystem;
.super Ljava/lang/Object;
.source "RecoverySystem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RecoverySystem$ProgressListener;
    }
.end annotation


# static fields
.field private static final CACHE_PREFIX:Ljava/lang/String; = "CACHE:"

.field private static COMMAND_FILE:Ljava/io/File; = null

.field private static final DATA_PREFIX:Ljava/lang/String; = "DATA:"

.field private static final DEFAULT_KEYSTORE:Ljava/io/File; = null

.field private static final INTERNAL_SDCARD_PREFIX:Ljava/lang/String; = "INTERNALSDCARD:"

.field private static LAST_PREFIX:Ljava/lang/String; = null

.field private static LOG_FILE:Ljava/io/File; = null

.field private static LOG_FILE_MAX_LENGTH:I = 0x0

.field private static MECHA_KEY_FILE:Ljava/io/File; = null

.field private static final PUBLISH_PROGRESS_INTERVAL_MS:J = 0x1f4L

.field private static RECOVERY_DIR:Ljava/io/File; = null

.field private static final SDCARD_PREFIX:Ljava/lang/String; = "SDCARD:"

.field private static final TAG:Ljava/lang/String; = "RecoverySystem"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 79
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/otacerts.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/recovery"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    .line 87
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "command"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    .line 88
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string/jumbo v2, "log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    .line 89
    const-string v0, "last_"

    sput-object v0, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    .line 92
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    const-string v2, "dmkey"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Landroid/os/RecoverySystem;->MECHA_KEY_FILE:Ljava/io/File;

    .line 96
    const/high16 v0, 0x1

    sput v0, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 102
    return-void
.end method

.method private RecoverySystem()V
    .locals 0

    .prologue
    .line 674
    return-void
.end method

.method private static addPrefixForFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 642
    const/4 v0, 0x0

    .line 646
    .local v0, comparedPath:Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CACHE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 668
    :goto_0
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_0

    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result file name with prefix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    :cond_0
    return-object p0

    .line 649
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 650
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DATA:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 652
    :cond_2
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 653
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Landroid/os/Environment;->hasInternalFat()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 654
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTERNALSDCARD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 656
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDCARD:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 659
    :cond_5
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Must start with /cache, /data or external storage path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "String only contains directory, no file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static bootCommand(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "arg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 586
    sget-object v2, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 587
    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 588
    sget-object v2, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 590
    new-instance v0, Ljava/io/FileWriter;

    sget-object v2, Landroid/os/RecoverySystem;->COMMAND_FILE:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 592
    .local v0, command:Ljava/io/FileWriter;
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 593
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 599
    const-string/jumbo v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 600
    .local v1, pm:Landroid/os/PowerManager;
    const-string/jumbo v2, "recovery"

    invoke-virtual {v1, v2}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 602
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Reboot failed (no permissions?)"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 595
    .end local v1           #pm:Landroid/os/PowerManager;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    throw v2
.end method

.method private static checkAndRestoreMiscRadioConfig()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 531
    const-string v7, "RecoverySystem"

    const-string v8, "checkAndRestoreMiscRadioConfig (Mecha only)"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    const/4 v3, 0x0

    .line 534
    .local v3, readTempMisc:B
    const/4 v7, 0x1

    invoke-static {v7}, Landroid/os/RecoverySystem;->setupMechaKeyFile(I)V

    .line 537
    :try_start_0
    new-instance v4, Ljava/net/Socket;

    const-string v7, "127.0.0.1"

    const/16 v8, 0x2606

    invoke-direct {v4, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 538
    .local v4, server:Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 539
    .local v0, In:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 540
    .local v2, out:Ljava/io/OutputStream;
    const/4 v7, 0x3

    new-array v5, v7, [B

    fill-array-data v5, :array_0

    .line 541
    .local v5, setMisc8:[B
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 542
    const/16 v7, 0x80

    new-array v6, v7, [B

    .line 543
    .local v6, tempbyte:[B
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    .line 544
    const/4 v7, 0x2

    aget-byte v3, v6, v7

    .line 545
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    .end local v0           #In:Ljava/io/InputStream;
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v4           #server:Ljava/net/Socket;
    .end local v5           #setMisc8:[B
    .end local v6           #tempbyte:[B
    :goto_0
    if-eqz v3, :cond_0

    .line 554
    :try_start_1
    new-instance v4, Ljava/net/Socket;

    const-string v7, "127.0.0.1"

    const/16 v8, 0x2606

    invoke-direct {v4, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .line 555
    .restart local v4       #server:Ljava/net/Socket;
    invoke-virtual {v4}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 556
    .restart local v0       #In:Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 557
    .restart local v2       #out:Ljava/io/OutputStream;
    const/4 v7, 0x3

    new-array v5, v7, [B

    fill-array-data v5, :array_1

    .line 558
    .restart local v5       #setMisc8:[B
    invoke-virtual {v2, v5}, Ljava/io/OutputStream;->write([B)V

    .line 559
    const/16 v7, 0x80

    new-array v6, v7, [B

    .line 560
    .restart local v6       #tempbyte:[B
    invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I

    .line 561
    invoke-virtual {v4}, Ljava/net/Socket;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 568
    .end local v0           #In:Ljava/io/InputStream;
    .end local v2           #out:Ljava/io/OutputStream;
    .end local v4           #server:Ljava/net/Socket;
    .end local v5           #setMisc8:[B
    .end local v6           #tempbyte:[B
    :cond_0
    :goto_1
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/RecoverySystem;->setupMechaKeyFile(I)V

    .line 569
    return-void

    .line 547
    :catch_0
    move-exception v1

    .line 548
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Read MiscConfig "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 563
    .end local v1           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 564
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "RecoverySystem"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Erase MiscConfig "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 540
    :array_0
    .array-data 0x1
        0xect
        0x6t
        0x0t
    .end array-data

    .line 557
    :array_1
    .array-data 0x1
        0xect
        0x5t
        0x0t
    .end array-data
.end method

.method private static composeMultipleOTAPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "originalPath"

    .prologue
    .line 377
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 379
    .local v4, refineList:Ljava/lang/StringBuilder;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 380
    :cond_0
    const-string v5, "RecoverySystem"

    const-string v6, "The path of multiple path is not proper."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v5, ""

    .line 405
    :goto_0
    return-object v5

    .line 384
    :cond_1
    const/4 v2, 0x0

    .line 386
    .local v2, filename:Ljava/lang/String;
    :try_start_0
    const-string v5, ","

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, aryPath:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_3

    .line 388
    aget-object v2, v0, v3

    .line 392
    invoke-static {v2}, Landroid/os/RecoverySystem;->addPrefixForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 395
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_2

    .line 396
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 400
    .end local v0           #aryPath:[Ljava/lang/String;
    .end local v3           #i:I
    :catch_0
    move-exception v1

    .line 401
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in composeMultipleOTAPath. original path:["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], Err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #refineList:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .end local v1           #e:Ljava/lang/Exception;
    .restart local v4       #refineList:Ljava/lang/StringBuilder;
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private static getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;
    .locals 6
    .parameter "keystore"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/HashSet",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 117
    .local v3, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    if-nez p0, :cond_0

    .line 118
    sget-object p0, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .line 120
    :cond_0
    new-instance v4, Ljava/util/zip/ZipFile;

    invoke-direct {v4, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 122
    .local v4, zip:Ljava/util/zip/ZipFile;
    :try_start_0
    const-string v5, "X.509"

    invoke-static {v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 123
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v1

    .line 124
    .local v1, entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 125
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 126
    .local v2, entry:Ljava/util/zip/ZipEntry;
    invoke-virtual {v4, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 129
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    .end local v2           #entry:Ljava/util/zip/ZipEntry;
    :catchall_0
    move-exception v5

    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    throw v5

    .restart local v0       #cf:Ljava/security/cert/CertificateFactory;
    .restart local v1       #entries:Ljava/util/Enumeration;,"Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_1
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    .line 131
    return-object v3
.end method

.method public static handleAftermath()Ljava/lang/String;
    .locals 8

    .prologue
    .line 613
    const/4 v3, 0x0

    .line 615
    .local v3, log:Ljava/lang/String;
    :try_start_0
    sget-object v5, Landroid/os/RecoverySystem;->LOG_FILE:Ljava/io/File;

    sget v6, Landroid/os/RecoverySystem;->LOG_FILE_MAX_LENGTH:I

    neg-int v6, v6

    const-string v7, "...\n"

    invoke-static {v5, v6, v7}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 624
    :goto_0
    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 625
    .local v4, names:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-eqz v4, :cond_2

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 626
    aget-object v5, v4, v2

    sget-object v6, Landroid/os/RecoverySystem;->LAST_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 625
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 616
    .end local v2           #i:I
    .end local v4           #names:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 617
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v5, "RecoverySystem"

    const-string v6, "No recovery log file"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 618
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 619
    .local v0, e:Ljava/io/IOException;
    const-string v5, "RecoverySystem"

    const-string v6, "Error reading recovery log"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 627
    .end local v0           #e:Ljava/io/IOException;
    .restart local v2       #i:I
    .restart local v4       #names:[Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/File;

    sget-object v5, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 628
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v5

    if-nez v5, :cond_1

    .line 629
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Can\'t delete: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 631
    :cond_1
    const-string v5, "RecoverySystem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleted: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 635
    .end local v1           #f:Ljava/io/File;
    :cond_2
    return-object v3
.end method

.method public static installMultiplePackage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "filePathList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    invoke-static {p1}, Landroid/os/RecoverySystem;->composeMultipleOTAPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, refinedFileList:Ljava/lang/String;
    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL MULTIPLE PACKAGE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--multi-update="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, arg:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 367
    return-void
.end method

.method public static installPackage(Landroid/content/Context;Ljava/io/File;)V
    .locals 5
    .parameter "context"
    .parameter "packageFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .local v1, filename:Ljava/lang/String;
    invoke-static {v1}, Landroid/os/RecoverySystem;->addPrefixForFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecoverySystem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!! REBOOTING TO INSTALL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--update_package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, arg:Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public static rebootWipeCache(Landroid/content/Context;)V
    .locals 1
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 577
    const-string v0, "--wipe_cache"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method public static rebootWipeDataVzwHpst(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 478
    const-string v0, "RecoverySystem"

    const-string v1, "Execute \"--wipe_data_vzw_hpst\"! (VZW projects only)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 481
    invoke-static {}, Landroid/os/RecoverySystem;->checkAndRestoreMiscRadioConfig()V

    .line 483
    :cond_0
    const-string v0, "--wipe_data_vzw_hpst"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public static rebootWipeUserData(Landroid/content/Context;)V
    .locals 9
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 422
    new-instance v8, Landroid/os/ConditionVariable;

    invoke-direct {v8}, Landroid/os/ConditionVariable;-><init>()V

    .line 424
    .local v8, condition:Landroid/os/ConditionVariable;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MASTER_CLEAR_NOTIFICATION"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.permission.MASTER_CLEAR"

    new-instance v3, Landroid/os/RecoverySystem$1;

    invoke-direct {v3, v8}, Landroid/os/RecoverySystem$1;-><init>(Landroid/os/ConditionVariable;)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 434
    invoke-virtual {v8}, Landroid/os/ConditionVariable;->block()V

    .line 436
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v2, 0x61

    if-ne v0, v2, :cond_0

    .line 438
    invoke-static {}, Landroid/os/RecoverySystem;->checkAndRestoreMiscRadioConfig()V

    .line 440
    :cond_0
    const-string v0, "--wipe_data"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public static rebootWipeUserDataOMADMLAB(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 461
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 463
    invoke-static {}, Landroid/os/RecoverySystem;->checkAndRestoreMiscRadioConfig()V

    .line 465
    :cond_0
    const-string v0, "--wipe_data_omadm_lab"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 466
    return-void
.end method

.method public static rebootWipeUserData_KeepInternalSD(Landroid/content/Context;)V
    .locals 2
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 451
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x61

    if-ne v0, v1, :cond_0

    .line 453
    invoke-static {}, Landroid/os/RecoverySystem;->checkAndRestoreMiscRadioConfig()V

    .line 455
    :cond_0
    const-string v0, "--wipe_data_keep_internal_sd"

    invoke-static {p0, v0}, Landroid/os/RecoverySystem;->bootCommand(Landroid/content/Context;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method private static setupMechaKeyFile(I)V
    .locals 6
    .parameter "actions"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 497
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupMechaKeyFile: ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") (Mecha only)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    sget-object v3, Landroid/os/RecoverySystem;->RECOVERY_DIR:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 500
    const/4 v3, 0x1

    if-ne p0, v3, :cond_0

    .line 501
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    sget-object v3, Landroid/os/RecoverySystem;->MECHA_KEY_FILE:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 502
    .local v2, tmpKey:Ljava/io/FileWriter;
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    .local v1, tempout:Ljava/io/BufferedWriter;
    :try_start_1
    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 507
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 520
    .end local v1           #tempout:Ljava/io/BufferedWriter;
    .end local v2           #tmpKey:Ljava/io/FileWriter;
    :goto_0
    return-void

    .line 506
    .restart local v1       #tempout:Ljava/io/BufferedWriter;
    .restart local v2       #tmpKey:Ljava/io/FileWriter;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 507
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    .line 506
    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 517
    .end local v1           #tempout:Ljava/io/BufferedWriter;
    .end local v2           #tmpKey:Ljava/io/FileWriter;
    :catch_0
    move-exception v0

    .line 518
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupMechaKeyFile "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 510
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    if-nez p0, :cond_1

    .line 511
    :try_start_3
    sget-object v3, Landroid/os/RecoverySystem;->MECHA_KEY_FILE:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 514
    :cond_1
    const-string v3, "RecoverySystem"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setupMechaKeyFile has wrong actions value "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method public static verifyPackage(Ljava/io/File;Landroid/os/RecoverySystem$ProgressListener;Ljava/io/File;)V
    .locals 47
    .parameter "packageFile"
    .parameter "listener"
    .parameter "deviceCertsZipFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 165
    invoke-virtual/range {p0 .. p0}, Ljava/io/File;->length()J

    move-result-wide v13

    .line 167
    .local v13, fileLen:J
    new-instance v27, Ljava/io/RandomAccessFile;

    const-string/jumbo v42, "r"

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 169
    .local v27, raf:Ljava/io/RandomAccessFile;
    const/16 v21, 0x0

    .line 170
    .local v21, lastPercent:I
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 171
    .local v22, lastPublishTime:J
    if-eqz p1, :cond_0

    .line 172
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 175
    :cond_0
    const-wide/16 v42, 0x6

    sub-long v42, v13, v42

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 176
    const/16 v42, 0x6

    move/from16 v0, v42

    new-array v15, v0, [B

    .line 177
    .local v15, footer:[B
    move-object/from16 v0, v27

    invoke-virtual {v0, v15}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 179
    const/16 v42, 0x2

    aget-byte v42, v15, v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_1

    const/16 v42, 0x3

    aget-byte v42, v15, v42

    const/16 v43, -0x1

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_2

    .line 180
    :cond_1
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "no signature in file (no footer)"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    .end local v15           #footer:[B
    .end local v22           #lastPublishTime:J
    .end local p2
    :catchall_0
    move-exception v42

    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    throw v42

    .line 183
    .restart local v15       #footer:[B
    .restart local v22       #lastPublishTime:J
    .restart local p2
    :cond_2
    const/16 v42, 0x4

    :try_start_1
    aget-byte v42, v15, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    const/16 v43, 0x5

    aget-byte v43, v15, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    shl-int/lit8 v43, v43, 0x8

    or-int v8, v42, v43

    .line 184
    .local v8, commentSize:I
    const/16 v42, 0x0

    aget-byte v42, v15, v42

    move/from16 v0, v42

    and-int/lit16 v0, v0, 0xff

    move/from16 v42, v0

    const/16 v43, 0x1

    aget-byte v43, v15, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    shl-int/lit8 v43, v43, 0x8

    or-int v33, v42, v43

    .line 185
    .local v33, signatureStart:I
    const-string v42, "RecoverySystem"

    const-string v43, "comment size %d; signature start %d"

    const/16 v44, 0x2

    move/from16 v0, v44

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v44, v0

    const/16 v45, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    const/16 v45, 0x1

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v46

    aput-object v46, v44, v45

    invoke-static/range {v43 .. v44}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v42 .. v43}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    add-int/lit8 v42, v8, 0x16

    move/from16 v0, v42

    new-array v12, v0, [B

    .line 189
    .local v12, eocd:[B
    add-int/lit8 v42, v8, 0x16

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    sub-long v42, v13, v42

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 190
    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 194
    const/16 v42, 0x0

    aget-byte v42, v12, v42

    const/16 v43, 0x50

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x1

    aget-byte v42, v12, v42

    const/16 v43, 0x4b

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x2

    aget-byte v42, v12, v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_3

    const/16 v42, 0x3

    aget-byte v42, v12, v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-eq v0, v1, :cond_4

    .line 196
    :cond_3
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "no signature in file (bad footer)"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 199
    :cond_4
    const/16 v16, 0x4

    .local v16, i:I
    :goto_0
    array-length v0, v12

    move/from16 v42, v0

    add-int/lit8 v42, v42, -0x3

    move/from16 v0, v16

    move/from16 v1, v42

    if-ge v0, v1, :cond_6

    .line 200
    aget-byte v42, v12, v16

    const/16 v43, 0x50

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x1

    aget-byte v42, v12, v42

    const/16 v43, 0x4b

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x2

    aget-byte v42, v12, v42

    const/16 v43, 0x5

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    add-int/lit8 v42, v16, 0x3

    aget-byte v42, v12, v42

    const/16 v43, 0x6

    move/from16 v0, v42

    move/from16 v1, v43

    if-ne v0, v1, :cond_5

    .line 202
    new-instance v42, Ljava/security/SignatureException;

    const-string v43, "EOCD marker found after start of EOCD"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 199
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 212
    :cond_6
    new-instance v4, Lorg/apache/harmony/security/asn1/BerInputStream;

    new-instance v42, Ljava/io/ByteArrayInputStream;

    add-int/lit8 v43, v8, 0x16

    sub-int v43, v43, v33

    move-object/from16 v0, v42

    move/from16 v1, v43

    move/from16 v2, v33

    invoke-direct {v0, v12, v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    move-object/from16 v0, v42

    invoke-direct {v4, v0}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    .line 214
    .local v4, bis:Lorg/apache/harmony/security/asn1/BerInputStream;
    sget-object v42, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v42

    invoke-virtual {v0, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 215
    .local v18, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v34

    .line 216
    .local v34, signedData:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v34, :cond_7

    .line 217
    new-instance v42, Ljava/io/IOException;

    const-string/jumbo v43, "signedData is null"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 219
    :cond_7
    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v11

    .line 220
    .local v11, encCerts:Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v42

    if-eqz v42, :cond_8

    .line 221
    new-instance v42, Ljava/io/IOException;

    const-string v43, "encCerts is empty"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 225
    :cond_8
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .line 226
    .local v20, it:Ljava/util/Iterator;
    const/4 v7, 0x0

    .line 227
    .local v7, cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_c

    .line 228
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v7           #cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Lorg/apache/harmony/security/x509/Certificate;

    move-object/from16 v0, v42

    invoke-direct {v7, v0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    .line 233
    .restart local v7       #cert:Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v34 .. v34}, Lorg/apache/harmony/security/pkcs7/SignedData;->getSignerInfos()Ljava/util/List;

    move-result-object v31

    .line 235
    .local v31, sigInfos:Ljava/util/List;
    invoke-interface/range {v31 .. v31}, Ljava/util/List;->isEmpty()Z

    move-result v42

    if-nez v42, :cond_d

    .line 236
    const/16 v42, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/apache/harmony/security/pkcs7/SignerInfo;

    .line 244
    .local v30, sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    if-nez p2, :cond_9

    sget-object p2, Landroid/os/RecoverySystem;->DEFAULT_KEYSTORE:Ljava/io/File;

    .end local p2
    :cond_9
    invoke-static/range {p2 .. p2}, Landroid/os/RecoverySystem;->getTrustedCerts(Ljava/io/File;)Ljava/util/HashSet;

    move-result-object v40

    .line 247
    .local v40, trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v32

    .line 248
    .local v32, signatureKey:Ljava/security/PublicKey;
    const/16 v41, 0x0

    .line 249
    .local v41, verified:Z
    invoke-virtual/range {v40 .. v40}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, i$:Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v42

    if-eqz v42, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/Certificate;

    .line 250
    .local v6, c:Ljava/security/cert/Certificate;
    invoke-virtual {v6}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v42

    move-object/from16 v0, v42

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v42

    if-eqz v42, :cond_a

    .line 251
    const/16 v41, 0x1

    .line 255
    .end local v6           #c:Ljava/security/cert/Certificate;
    :cond_b
    if-nez v41, :cond_e

    .line 256
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature doesn\'t match any trusted key"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 230
    .end local v17           #i$:Ljava/util/Iterator;
    .end local v30           #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .end local v31           #sigInfos:Ljava/util/List;
    .end local v32           #signatureKey:Ljava/security/PublicKey;
    .end local v40           #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .end local v41           #verified:Z
    .restart local p2
    :cond_c
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature contains no certificates"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 238
    .restart local v31       #sigInfos:Ljava/util/List;
    :cond_d
    new-instance v42, Ljava/io/IOException;

    const-string/jumbo v43, "no signer infos!"

    invoke-direct/range {v42 .. v43}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 269
    .end local p2
    .restart local v17       #i$:Ljava/util/Iterator;
    .restart local v30       #sigInfo:Lorg/apache/harmony/security/pkcs7/SignerInfo;
    .restart local v32       #signatureKey:Ljava/security/PublicKey;
    .restart local v40       #trusted:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/security/cert/Certificate;>;"
    .restart local v41       #verified:Z
    :cond_e
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    .line 270
    .local v9, da:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getDigestEncryptionAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 271
    .local v10, dea:Ljava/lang/String;
    const/4 v3, 0x0

    .line 272
    .local v3, alg:Ljava/lang/String;
    if-eqz v9, :cond_f

    if-nez v10, :cond_13

    .line 275
    :cond_f
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v3

    .line 279
    :goto_1
    invoke-static {v3}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v29

    .line 280
    .local v29, sig:Ljava/security/Signature;
    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 284
    int-to-long v0, v8

    move-wide/from16 v42, v0

    sub-long v42, v13, v42

    const-wide/16 v44, 0x2

    sub-long v38, v42, v44

    .line 285
    .local v38, toRead:J
    const-wide/16 v36, 0x0

    .line 286
    .local v36, soFar:J
    const-wide/16 v42, 0x0

    move-object/from16 v0, v27

    move-wide/from16 v1, v42

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 287
    const/16 v42, 0x1000

    move/from16 v0, v42

    new-array v5, v0, [B

    .line 288
    .local v5, buffer:[B
    const/16 v19, 0x0

    .line 289
    .local v19, interrupted:Z
    :cond_10
    :goto_2
    cmp-long v42, v36, v38

    if-gez v42, :cond_11

    .line 290
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v19

    .line 291
    if-eqz v19, :cond_14

    .line 311
    :cond_11
    if-eqz p1, :cond_12

    .line 312
    const/16 v42, 0x64

    move-object/from16 v0, p1

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    .line 315
    :cond_12
    if-eqz v19, :cond_16

    .line 316
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "verification was interrupted"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42

    .line 277
    .end local v5           #buffer:[B
    .end local v19           #interrupted:Z
    .end local v29           #sig:Ljava/security/Signature;
    .end local v36           #soFar:J
    .end local v38           #toRead:J
    :cond_13
    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, "with"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 292
    .restart local v5       #buffer:[B
    .restart local v19       #interrupted:Z
    .restart local v29       #sig:Ljava/security/Signature;
    .restart local v36       #soFar:J
    .restart local v38       #toRead:J
    :cond_14
    array-length v0, v5

    move/from16 v35, v0

    .line 293
    .local v35, size:I
    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v42, v42, v36

    cmp-long v42, v42, v38

    if-lez v42, :cond_15

    .line 294
    sub-long v42, v38, v36

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v35, v0

    .line 296
    :cond_15
    const/16 v42, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v42

    move/from16 v2, v35

    invoke-virtual {v0, v5, v1, v2}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v28

    .line 297
    .local v28, read:I
    const/16 v42, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v42

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Ljava/security/Signature;->update([BII)V

    .line 298
    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v36, v36, v42

    .line 300
    if-eqz p1, :cond_10

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    .line 302
    .local v24, now:J
    const-wide/16 v42, 0x64

    mul-long v42, v42, v36

    div-long v42, v42, v38

    move-wide/from16 v0, v42

    long-to-int v0, v0

    move/from16 v26, v0

    .line 303
    .local v26, p:I
    move/from16 v0, v26

    move/from16 v1, v21

    if-le v0, v1, :cond_10

    sub-long v42, v24, v22

    const-wide/16 v44, 0x1f4

    cmp-long v42, v42, v44

    if-lez v42, :cond_10

    .line 305
    move/from16 v21, v26

    .line 306
    move-wide/from16 v22, v24

    .line 307
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/os/RecoverySystem$ProgressListener;->onProgress(I)V

    goto/16 :goto_2

    .line 319
    .end local v24           #now:J
    .end local v26           #p:I
    .end local v28           #read:I
    .end local v35           #size:I
    :cond_16
    invoke-virtual/range {v30 .. v30}, Lorg/apache/harmony/security/pkcs7/SignerInfo;->getEncryptedDigest()[B

    move-result-object v42

    move-object/from16 v0, v29

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v42

    if-nez v42, :cond_17

    .line 320
    new-instance v42, Ljava/security/SignatureException;

    const-string/jumbo v43, "signature digest verification failed"

    invoke-direct/range {v42 .. v43}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v42
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 323
    :cond_17
    invoke-virtual/range {v27 .. v27}, Ljava/io/RandomAccessFile;->close()V

    .line 325
    return-void
.end method
