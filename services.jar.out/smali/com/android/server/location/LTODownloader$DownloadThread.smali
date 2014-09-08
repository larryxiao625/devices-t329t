.class Lcom/android/server/location/LTODownloader$DownloadThread;
.super Ljava/lang/Thread;
.source "LTODownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LTODownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LTODownloader;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LTODownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LTODownloader;Lcom/android/server/location/LTODownloader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/server/location/LTODownloader$DownloadThread;-><init>(Lcom/android/server/location/LTODownloader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    .prologue
    .line 53
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    const-string v16, "LTO download thread is running"

    #calls: Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V

    .line 54
    const-wide/16 v1, 0x12c

    .line 57
    .local v1, DELAY_FOR_DOWNLOAD_FAIL:J
    const-wide/32 v3, 0x15180

    .line 59
    .local v3, DELAY_FOR_DOWNLOAD_SUCCESS:J
    const/4 v5, 0x3

    .line 60
    .local v5, MAX_ALLOWED_RETRY_TIMES:I
    const/4 v6, 0x0

    .line 61
    .local v6, current_retry_times:I
    const-wide/16 v10, 0x0

    .line 65
    .local v10, next_download_time:J
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    #calls: Lcom/android/server/location/LTODownloader;->waitForTrigger()V
    invoke-static {v15}, Lcom/android/server/location/LTODownloader;->access$300(Lcom/android/server/location/LTODownloader;)V

    .line 67
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 68
    .local v7, current_time:J
    const-wide/16 v12, 0x0

    .line 70
    .local v12, next_timeout:J
    cmp-long v15, v7, v10

    if-gez v15, :cond_0

    .line 71
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "current_time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", not exceed next download time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", wait again"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    .end local v7           #current_time:J
    .end local v12           #next_timeout:J
    :catch_0
    move-exception v9

    .line 105
    .local v9, e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    const-string v16, "interrupt occur when wait!!"

    #calls: Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V

    goto :goto_0

    .line 75
    .end local v9           #e:Ljava/lang/InterruptedException;
    .restart local v7       #current_time:J
    .restart local v12       #next_timeout:J
    :cond_0
    const/4 v14, 0x0

    .line 80
    .local v14, result:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/location/LTODownloader;->LTOlink:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/android/server/location/LTODownloader;->access$400(Lcom/android/server/location/LTODownloader;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "/data/gps"

    const-string v18, "lto.dat"

    #calls: Lcom/android/server/location/LTODownloader;->download(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static/range {v15 .. v18}, Lcom/android/server/location/LTODownloader;->access$500(Lcom/android/server/location/LTODownloader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v16, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "download "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-eqz v14, :cond_2

    const-string v15, "success!"

    :goto_1
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v17, " retry_times="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    #calls: Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    invoke-static {v0, v15}, Lcom/android/server/location/LTODownloader;->access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V

    .line 85
    const/4 v15, 0x1

    if-eq v14, v15, :cond_1

    const/4 v15, 0x3

    if-lt v6, v15, :cond_3

    .line 86
    :cond_1
    const/4 v6, 0x0

    .line 87
    const-wide/32 v12, 0x15180

    .line 88
    const-wide v15, 0x4e94914f0000L

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    add-long v10, v15, v17

    .line 90
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static/range {v16 .. v16}, Lcom/android/server/location/LTODownloader;->access$800(Lcom/android/server/location/LTODownloader;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/location/LTODownloader;->mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/LTODownloader;->access$700(Lcom/android/server/location/LTODownloader;)Lcom/android/server/location/LTODownloader$DownloadTrigger;

    move-result-object v17

    const-wide/32 v18, 0x15180

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v20}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v16

    #setter for: Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$602(Lcom/android/server/location/LTODownloader;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;

    .line 101
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "current time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " next_timeout="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "seconds"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " next_download_time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    #calls: Lcom/android/server/location/LTODownloader;->LOG(Ljava/lang/String;)V
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$200(Lcom/android/server/location/LTODownloader;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_2
    const-string v15, "fail!"

    goto/16 :goto_1

    .line 93
    :cond_3
    add-int/lit8 v6, v6, 0x1

    .line 94
    const-wide/16 v12, 0x12c

    .line 95
    const-wide v15, 0x45d964b800L

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v17

    add-long v10, v15, v17

    .line 97
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v16, v0

    #getter for: Lcom/android/server/location/LTODownloader;->mExec:Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    invoke-static/range {v16 .. v16}, Lcom/android/server/location/LTODownloader;->access$800(Lcom/android/server/location/LTODownloader;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/location/LTODownloader$DownloadThread;->this$0:Lcom/android/server/location/LTODownloader;

    move-object/from16 v17, v0

    #getter for: Lcom/android/server/location/LTODownloader;->mTriggerTask:Lcom/android/server/location/LTODownloader$DownloadTrigger;
    invoke-static/range {v17 .. v17}, Lcom/android/server/location/LTODownloader;->access$700(Lcom/android/server/location/LTODownloader;)Lcom/android/server/location/LTODownloader$DownloadTrigger;

    move-result-object v17

    const-wide/16 v18, 0x12c

    sget-object v20, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual/range {v16 .. v20}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v16

    #setter for: Lcom/android/server/location/LTODownloader;->mFuture:Ljava/util/concurrent/ScheduledFuture;
    invoke-static/range {v15 .. v16}, Lcom/android/server/location/LTODownloader;->access$602(Lcom/android/server/location/LTODownloader;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
