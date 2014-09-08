.class final Lcom/android/server/pm/PackageManagerService$1;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->preParsing()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 445
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 33

    .prologue
    .line 447
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 448
    .local v26, startTime:J
    const-string v3, "debug.prefetchthread"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 449
    .local v7, threads:I
    new-instance v8, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "app"

    invoke-direct {v8, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 450
    .local v8, sysAppDir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 451
    .local v9, sysAppList:[Ljava/lang/String;
    if-eqz v9, :cond_3

    array-length v6, v9

    .line 452
    .local v6, SIZE:I
    :goto_0
    if-gtz v6, :cond_0

    .line 453
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_0

    .line 454
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system app list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    const-string v3, "debug.separate_processes"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 457
    .local v25, separateProcesses:Ljava/lang/String;
    const/4 v12, 0x0

    .line 459
    .local v12, _mDefParseFlags:I
    if-eqz v25, :cond_5

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 460
    const-string v3, "*"

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 461
    const/16 v12, 0x8

    .line 462
    const/4 v10, 0x0

    .line 463
    .local v10, _mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 464
    const-string v3, "PackageManager"

    const-string v4, "Running with debug.separate_processes: * (ALL)"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    :goto_1
    or-int/lit8 v11, v12, 0x41

    .line 479
    .local v11, parseFlags:I
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_2

    .line 480
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Pre Parse Dir:"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v31, ", threads:"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_2
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$208()I

    .line 482
    const/4 v3, 0x1

    if-le v7, v3, :cond_6

    .line 483
    const/4 v15, 0x1

    .line 485
    .local v15, index:I
    :goto_2
    if-ge v15, v7, :cond_6

    .line 486
    move v5, v15

    .line 488
    .local v5, tindex:I
    new-instance v24, Ljava/lang/Thread;

    new-instance v3, Lcom/android/server/pm/PackageManagerService$1$1;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v11}, Lcom/android/server/pm/PackageManagerService$1$1;-><init>(Lcom/android/server/pm/PackageManagerService$1;IIILjava/io/File;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object/from16 v0, v24

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 515
    .local v24, secondary:Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preparse_thread_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 516
    const/16 v3, 0xa

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    .line 517
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Thread;->start()V

    .line 518
    add-int/lit8 v15, v15, 0x1

    .line 519
    goto :goto_2

    .line 451
    .end local v5           #tindex:I
    .end local v6           #SIZE:I
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    .end local v11           #parseFlags:I
    .end local v12           #_mDefParseFlags:I
    .end local v15           #index:I
    .end local v24           #secondary:Ljava/lang/Thread;
    .end local v25           #separateProcesses:Ljava/lang/String;
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 466
    .restart local v6       #SIZE:I
    .restart local v12       #_mDefParseFlags:I
    .restart local v25       #separateProcesses:Ljava/lang/String;
    :cond_4
    const/4 v12, 0x0

    .line 467
    const-string v3, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 468
    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_1

    .line 469
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Running with debug.separate_processes: "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 473
    .end local v10           #_mSeparateProcesses:[Ljava/lang/String;
    :cond_5
    const/4 v12, 0x0

    .line 474
    const/4 v10, 0x0

    .restart local v10       #_mSeparateProcesses:[Ljava/lang/String;
    goto/16 :goto_1

    .line 523
    .restart local v11       #parseFlags:I
    :cond_6
    const/16 v23, 0x0

    .line 526
    .local v23, scanPath:Ljava/lang/String;
    new-instance v28, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "framework"

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 527
    .local v28, sysFrameDir:Ljava/io/File;
    invoke-virtual/range {v28 .. v28}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v29

    .line 528
    .local v29, sysFrameList:[Ljava/lang/String;
    if-eqz v29, :cond_7

    move-object/from16 v0, v29

    array-length v0, v0

    move/from16 v30, v0

    .line 529
    .local v30, sysFrame_SIZE:I
    :goto_3
    const/4 v14, 0x0

    .line 530
    .local v14, i:I
    if-lez v30, :cond_a

    .line 531
    const/4 v14, 0x0

    :goto_4
    move/from16 v0, v30

    if-ge v14, v0, :cond_9

    .line 532
    aget-object v3, v29, v14

    #calls: Lcom/android/server/pm/PackageManagerService;->isPackageFilename(Ljava/lang/String;)Z
    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$500(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 531
    :goto_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 528
    .end local v14           #i:I
    .end local v30           #sysFrame_SIZE:I
    :cond_7
    const/16 v30, 0x0

    goto :goto_3

    .line 536
    .restart local v14       #i:I
    .restart local v30       #sysFrame_SIZE:I
    :cond_8
    :try_start_0
    new-instance v22, Ljava/io/File;

    aget-object v3, v29, v14

    move-object/from16 v0, v22

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 537
    .local v22, scanFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 538
    new-instance v18, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 539
    .local v18, pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 540
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 543
    .local v17, pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 544
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v22           #scanFile:Ljava/io/File;
    :catch_0
    move-exception v13

    .line 545
    .local v13, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 546
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 556
    .end local v13           #e:Ljava/lang/Exception;
    :cond_9
    :goto_6
    const/4 v14, 0x0

    .line 557
    add-int/lit8 v14, v7, -0x1

    :goto_7
    if-ge v14, v6, :cond_b

    .line 559
    :try_start_1
    new-instance v22, Ljava/io/File;

    aget-object v3, v9, v14

    move-object/from16 v0, v22

    invoke-direct {v0, v8, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 560
    .restart local v22       #scanFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 561
    new-instance v18, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 562
    .restart local v18       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 563
    const/4 v3, 0x0

    or-int/lit8 v4, v11, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 566
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    add-int/2addr v14, v7

    goto :goto_7

    .line 551
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v22           #scanFile:Ljava/io/File;
    :cond_a
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_9

    .line 552
    const-string v3, "PackageManager"

    const-string v4, "preParse Failed ! system framework list is null!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 567
    :catch_1
    move-exception v13

    .line 568
    .restart local v13       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 569
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 575
    .end local v13           #e:Ljava/lang/Exception;
    :cond_b
    new-instance v19, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    const-string v4, "preload"

    move-object/from16 v0, v19

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 576
    .local v19, preloadAPDir:Ljava/io/File;
    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v20

    .line 577
    .local v20, preloadAPList:[Ljava/lang/String;
    if-eqz v20, :cond_c

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    .line 578
    .local v21, preloadAP_SIZE:I
    :goto_8
    if-lez v21, :cond_e

    .line 579
    const/4 v14, 0x0

    .line 580
    or-int/lit16 v0, v12, 0x180

    move/from16 v16, v0

    .line 583
    .local v16, parseFlags_preload:I
    const/4 v14, 0x0

    :goto_9
    move/from16 v0, v21

    if-ge v14, v0, :cond_f

    .line 585
    :try_start_2
    new-instance v22, Ljava/io/File;

    aget-object v3, v20, v14

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 586
    .restart local v22       #scanFile:Ljava/io/File;
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 587
    new-instance v18, Landroid/content/pm/PackageParser;

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/pm/PackageParser;-><init>(Ljava/lang/String;)V

    .line 588
    .restart local v18       #pp:Landroid/content/pm/PackageParser;
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageParser;->setSeparateProcesses([Ljava/lang/String;)V

    .line 589
    const/4 v3, 0x0

    or-int/lit8 v4, v16, 0x4

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/pm/PackageParser;->parsePackage(Ljava/io/File;Ljava/lang/String;Landroid/util/DisplayMetrics;I)Landroid/content/pm/PackageParser$Package;

    move-result-object v17

    .line 592
    .restart local v17       #pkg:Landroid/content/pm/PackageParser$Package;
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$300()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 583
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 577
    .end local v16           #parseFlags_preload:I
    .end local v17           #pkg:Landroid/content/pm/PackageParser$Package;
    .end local v18           #pp:Landroid/content/pm/PackageParser;
    .end local v21           #preloadAP_SIZE:I
    .end local v22           #scanFile:Ljava/io/File;
    :cond_c
    const/16 v21, 0x0

    goto :goto_8

    .line 593
    .restart local v16       #parseFlags_preload:I
    .restart local v21       #preloadAP_SIZE:I
    :catch_2
    move-exception v13

    .line 594
    .restart local v13       #e:Ljava/lang/Exception;
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/pm/PackageManagerService;->access$402(Z)Z

    .line 595
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Thread#primary failed to preParsing package :"

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 617
    .end local v13           #e:Ljava/lang/Exception;
    .end local v16           #parseFlags_preload:I
    :cond_d
    :goto_a
    return-void

    .line 600
    :cond_e
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_f

    .line 601
    const-string v3, "PackageManager"

    const-string v4, "preParse data/preload folder failed."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    :cond_f
    :goto_b
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$200()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_11

    .line 604
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_10

    .line 605
    const-string v3, "PackageManager"

    const-string v4, "Waiting preparse thread finish 10ms"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    :cond_10
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$400()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 614
    :cond_11
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->access$210()I

    .line 615
    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v3, :cond_d

    .line 616
    const-string v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "preParsing package time: "

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v31

    sub-long v31, v31, v26

    move-wide/from16 v0, v31

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 609
    :cond_12
    const-wide/16 v3, 0xa

    :try_start_3
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    .line 610
    :catch_3
    move-exception v13

    .line 611
    .restart local v13       #e:Ljava/lang/Exception;
    invoke-virtual {v13}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method
