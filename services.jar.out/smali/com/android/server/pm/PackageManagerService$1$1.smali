.class Lcom/android/server/pm/PackageManagerService$1$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService$1;

.field final synthetic val$SIZE:I

.field final synthetic val$_mSeparateProcesses:[Ljava/lang/String;

.field final synthetic val$parseFlags:I

.field final synthetic val$sysAppDir:Ljava/io/File;

.field final synthetic val$sysAppList:[Ljava/lang/String;

.field final synthetic val$threads:I

.field final synthetic val$tindex:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$1$1;->this$0:Lcom/android/server/pm/PackageManagerService$1;

    iput p2, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$tindex:I

    iput p3, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$SIZE:I

    iput p4, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$threads:I

    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$sysAppDir:Ljava/io/File;

    iput-object p6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$sysAppList:[Ljava/lang/String;

    iput-object p7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$_mSeparateProcesses:[Ljava/lang/String;

    iput p8, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 491
    const/4 v5, 0x0

    .line 493
    .local v5, scanPath:Ljava/lang/String;
    const/4 v1, 0x0

    .line 494
    .local v1, i:I
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$tindex:I

    add-int/lit8 v1, v6, -0x1

    :goto_0
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$SIZE:I

    if-ge v1, v6, :cond_0

    .line 496
    :try_start_0
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$208()I

    .line 497
    new-instance v4, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$sysAppDir:Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$sysAppList:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 498
    .local v4, scanFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 499
    new-instance v3, Landroid/content/pm/PackageParser;

    invoke-direct {v3, v5}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 500
    .local v3, pp:Landroid/content/pm/PackageParser;
    iget-object v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$_mSeparateProcesses:[Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 501
    const/4 v6, 0x0

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$parseFlags:I

    or-int/lit8 v7, v7, 0x4

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    .line 504
    .local v2, pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v6

    invoke-virtual {v6, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$210()I

    .line 494
    iget v6, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$threads:I

    add-int/2addr v1, v6

    goto :goto_0

    .line 505
    .end local v2           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v3           #pp:Landroid/content/pm/PackageParser;
    .end local v4           #scanFile:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 506
    .local v0, e:Ljava/lang/Exception;
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 507
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$210()I

    .line 508
    const-string v6, "PackageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Thread#thread_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/pm/PackageManagerService$1$1;->val$tindex:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " failed to preParsing package :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method
