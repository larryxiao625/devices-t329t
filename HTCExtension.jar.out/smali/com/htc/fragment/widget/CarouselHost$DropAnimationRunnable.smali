.class Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;
.super Ljava/lang/Object;
.source "CarouselHost.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DropAnimationRunnable"
.end annotation


# instance fields
.field private mAnimationDuration:I

.field private mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field private mIsRunning:Z

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselHost;


# direct methods
.method public constructor <init>(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 4
    .parameter

    .prologue
    .line 2510
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2500
    const/16 v1, 0x1f4

    iput v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    .line 2501
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    .line 2511
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 2512
    .local v0, interpreter:Landroid/view/animation/LinearInterpolator;
    new-instance v1, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/htc/fragment/widget/CarouselHost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2514
    const/4 v1, 0x1

    const/16 v2, 0x5dd

    const-string v3, "CAROUSEL_REARRANGE"

    invoke-static {v1, p1, v2, v3}, Lcom/htc/utils/perf/FramerateMonitor;->newFramerateMonitor(ILandroid/view/View;ILjava/lang/String;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 2515
    return-void
.end method

.method private endFling(Z)V
    .locals 2
    .parameter "scrollIntoSlots"

    .prologue
    .line 2559
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2560
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2561
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDragSource:Lcom/htc/fragment/widget/DragSource;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1700(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DragSource;

    move-result-object v1

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mDropTarget:Lcom/htc/fragment/widget/DropTarget;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1800(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/DropTarget;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-interface {v1, v0}, Lcom/htc/fragment/widget/DragSource;->onDropAnimationEnd(Landroid/view/View;)V

    .line 2563
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    .line 2566
    if-eqz p1, :cond_1

    .line 2567
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mCarousel:Lcom/htc/fragment/widget/CarouselFragment;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselHost;->access$1200(Lcom/htc/fragment/widget/CarouselHost;)Lcom/htc/fragment/widget/CarouselFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->executeQueuedActions()V

    .line 2571
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_2

    .line 2572
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 2574
    :cond_2
    return-void
.end method

.method private startCommon()V
    .locals 1

    .prologue
    .line 2519
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2520
    return-void
.end method


# virtual methods
.method public isStillRunning()Z
    .locals 1

    .prologue
    .line 2580
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    return v0
.end method

.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 2587
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v5, 0x0

    #setter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4, v5}, Lcom/htc/fragment/widget/CarouselHost;->access$1902(Lcom/htc/fragment/widget/CarouselHost;Z)Z

    .line 2588
    iput-boolean v7, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mIsRunning:Z

    .line 2590
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    .line 2591
    .local v1, scroller:Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    .line 2592
    .local v0, more:Z
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 2593
    .local v2, x:I
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 2595
    .local v3, y:I
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    int-to-float v5, v2

    int-to-float v6, v3

    #calls: Lcom/htc/fragment/widget/CarouselHost;->moveIndicator(FF)V
    invoke-static {v4, v5, v6}, Lcom/htc/fragment/widget/CarouselHost;->access$2000(Lcom/htc/fragment/widget/CarouselHost;FF)V

    .line 2597
    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    #getter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldStopFling:Z
    invoke-static {v4}, Lcom/htc/fragment/widget/CarouselHost;->access$1900(Lcom/htc/fragment/widget/CarouselHost;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2598
    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v4, p0}, Lcom/htc/fragment/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    .line 2602
    :goto_0
    return-void

    .line 2600
    :cond_0
    invoke-direct {p0, v7}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    goto :goto_0
.end method

.method public startUsingPositions(IIII)V
    .locals 6
    .parameter "source_x"
    .parameter "source_y"
    .parameter "dest_x"
    .parameter "dest_y"

    .prologue
    .line 2527
    if-ne p1, p3, :cond_0

    if-ne p2, p4, :cond_0

    .line 2528
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->stop(Z)V

    .line 2542
    :goto_0
    return-void

    .line 2533
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v0, :cond_1

    .line 2534
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mDropAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->startLogFps()Z

    .line 2537
    :cond_1
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->startCommon()V

    .line 2539
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mScroller:Landroid/widget/Scroller;

    sub-int v3, p3, p1

    sub-int v4, p4, p2

    iget v5, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->mAnimationDuration:I

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2540
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    const/4 v1, 0x1

    #setter for: Lcom/htc/fragment/widget/CarouselHost;->mShouldThrowEvent:Z
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/CarouselHost;->access$1602(Lcom/htc/fragment/widget/CarouselHost;Z)Z

    .line 2541
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 1
    .parameter "scrollIntoSlots"

    .prologue
    .line 2549
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0, p0}, Lcom/htc/fragment/widget/CarouselHost;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2550
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->endFling(Z)V

    .line 2551
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselHost$DropAnimationRunnable;->this$0:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 2552
    return-void
.end method
