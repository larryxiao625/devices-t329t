.class final Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;
.super Ljava/lang/Object;
.source "FastScroller.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/FastScroller$CheckForTap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "scaleOutAnimationListener"
.end annotation


# instance fields
.field private dist:I

.field private end:I

.field private pos:I

.field final synthetic this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/FastScroller$CheckForTap;III)V
    .locals 0
    .parameter
    .parameter "dist"
    .parameter "end"
    .parameter "pos"

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    iput p2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->dist:I

    .line 1456
    iput p3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->end:I

    .line 1457
    iput p4, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->pos:I

    .line 1458
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4
    .parameter "anim"

    .prologue
    const/4 v1, 0x0

    .line 1477
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1000(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1478
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->carouselView:Lcom/htc/fragment/widget/CarouselTextView;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$1000(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/fragment/widget/CarouselTextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselTextView;->enableClickMultiply(Z)V

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$900(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1482
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    #getter for: Lcom/htc/fragment/widget/FastScroller$CheckForTap;->mClickAniMonitor:Lcom/htc/utils/perf/FramerateMonitor;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->access$900(Lcom/htc/fragment/widget/FastScroller$CheckForTap;)Lcom/htc/utils/perf/FramerateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/utils/perf/FramerateMonitor;->stopLogFps()V

    .line 1484
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #setter for: Lcom/htc/fragment/widget/FastScroller;->isScaleAnimation:Z
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->access$1202(Lcom/htc/fragment/widget/FastScroller;Z)Z

    .line 1485
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->isSkipAnimation:Z
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$1100(Lcom/htc/fragment/widget/FastScroller;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1486
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->setState(I)V

    .line 1487
    iget-object v0, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->this$1:Lcom/htc/fragment/widget/FastScroller$CheckForTap;

    iget-object v0, v0, Lcom/htc/fragment/widget/FastScroller$CheckForTap;->this$0:Lcom/htc/fragment/widget/FastScroller;

    #getter for: Lcom/htc/fragment/widget/FastScroller;->mFlingRunnable:Lcom/htc/fragment/widget/FastScroller$FlingRunnable;
    invoke-static {v0}, Lcom/htc/fragment/widget/FastScroller;->access$1500(Lcom/htc/fragment/widget/FastScroller;)Lcom/htc/fragment/widget/FastScroller$FlingRunnable;

    move-result-object v0

    iget v1, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->dist:I

    iget v2, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->end:I

    iget v3, p0, Lcom/htc/fragment/widget/FastScroller$CheckForTap$scaleOutAnimationListener;->pos:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/fragment/widget/FastScroller$FlingRunnable;->startUsingDistance(III)V

    .line 1489
    :cond_2
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1472
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "anim"

    .prologue
    .line 1465
    return-void
.end method
