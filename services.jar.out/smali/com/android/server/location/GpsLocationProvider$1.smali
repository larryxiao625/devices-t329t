.class Lcom/android/server/location/GpsLocationProvider$1;
.super Landroid/location/IGpsStatusProvider$Stub;
.source "GpsLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsLocationProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 331
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {p0}, Landroid/location/IGpsStatusProvider$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 10
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    new-instance v5, Ljava/lang/NullPointerException;

    const-string v6, "listener is null in addGpsStatusListener"

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    :cond_0
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 338
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 339
    .local v0, binder:Landroid/os/IBinder;
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 340
    .local v3, size:I
    const-string v5, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LPS] addGpsStatusListener: +++++     size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 343
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 344
    .local v4, test:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v5, v4, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v5}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 346
    monitor-exit v6

    .line 372
    .end local v4           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :goto_1
    return-void

    .line 342
    .restart local v4       #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    .end local v4           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_2
    new-instance v2, Lcom/android/server/location/GpsLocationProvider$Listener;

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    invoke-direct {v2, v5, p1}, Lcom/android/server/location/GpsLocationProvider$Listener;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/location/IGpsStatusListener;)V

    .line 352
    .local v2, l:Lcom/android/server/location/GpsLocationProvider$Listener;
    const-string v5, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[LPS] addGpsStatusListener: Listener = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->access$100()Z

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_3

    .line 355
    const-string v5, "GpsLocationProvider"

    const-string v7, "[LPS] disable_backdoor_gps_listener."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$102(Z)Z

    .line 359
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :try_start_1
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    const-string v5, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LPS] ### addGpsStatusListener: mAllowHTCListeners = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v5, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LPS] ### addGpsStatusListener: mAllowHTCListeners.size() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v9}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    :cond_3
    const/4 v5, 0x0

    :try_start_2
    invoke-interface {v0, v2, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 369
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    const-string v5, "GpsLocationProvider"

    const-string v7, "[LPS] addGpsStatusListener: ----- "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    monitor-exit v6

    goto/16 :goto_1

    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 364
    .restart local v0       #binder:Landroid/os/IBinder;
    .restart local v1       #i:I
    .restart local v2       #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .restart local v3       #size:I
    :catchall_1
    move-exception v5

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public removeGpsStatusListener(Landroid/location/IGpsStatusListener;)V
    .locals 11
    .parameter "listener"

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "listener is null in removeGpsStatusListener"

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 379
    :cond_0
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v7

    monitor-enter v7

    .line 380
    :try_start_0
    invoke-interface {p1}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 381
    .local v0, binder:Landroid/os/IBinder;
    const/4 v2, 0x0

    .line 382
    .local v2, l:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 384
    .local v3, size:I
    const-string v6, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[LPS] removeGpsStatusListener: +++++     size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_2

    if-nez v2, :cond_2

    .line 387
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/location/GpsLocationProvider$Listener;

    .line 388
    .local v5, test:Lcom/android/server/location/GpsLocationProvider$Listener;
    iget-object v6, v5, Lcom/android/server/location/GpsLocationProvider$Listener;->mListener:Landroid/location/IGpsStatusListener;

    invoke-interface {v6}, Landroid/location/IGpsStatusListener;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 389
    move-object v2, v5

    .line 386
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v5           #test:Lcom/android/server/location/GpsLocationProvider$Listener;
    :cond_2
    if-eqz v2, :cond_4

    .line 397
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 399
    :try_start_1
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 400
    .local v4, sizeAllow:I
    if-lez v4, :cond_3

    .line 402
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 404
    const-string v6, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LPS] ### removeGpsStatusListener: mAllowHTCListeners = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v6, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[LPS] ### removeGpsStatusListener: mAllowHTCListeners.size() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mAllowHTCListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$200(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 413
    :cond_3
    :goto_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    :try_start_2
    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider$1;->this$0:Lcom/android/server/location/GpsLocationProvider;

    #getter for: Lcom/android/server/location/GpsLocationProvider;->mListeners:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/location/GpsLocationProvider;->access$000(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 418
    const/4 v6, 0x0

    invoke-interface {v0, v2, v6}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 421
    .end local v4           #sizeAllow:I
    :cond_4
    const-string v6, "GpsLocationProvider"

    const-string v8, "[LPS] addGpsStatusListener: ----- "

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 423
    return-void

    .line 410
    .restart local v4       #sizeAllow:I
    :cond_5
    :try_start_3
    const-string v6, "GpsLocationProvider"

    const-string v9, "[LPS] ### removeGpsStatusListener: It\'s not find from mAllowHTCListeners array"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 413
    .end local v4           #sizeAllow:I
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v6

    .line 422
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v2           #l:Lcom/android/server/location/GpsLocationProvider$Listener;
    .end local v3           #size:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
