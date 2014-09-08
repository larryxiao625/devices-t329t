.class Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;
.super Lcom/htc/widget/HtcAbsListView2$FlingRunnable;
.source "HBouncingListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/widget/HBouncingListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BouncingFlingRunnable"
.end annotation


# instance fields
.field private isNeedCheckOverBottom:Z

.field private isNeedCheckOverLeft:Z

.field private isNeedCheckOverRight:Z

.field private isNeedCheckOverTop:Z

.field final synthetic this$0:Lcom/htc/widget/HBouncingListView;


# direct methods
.method private constructor <init>(Lcom/htc/widget/HBouncingListView;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 380
    iput-object p1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;-><init>(Lcom/htc/widget/HtcAbsListView2;)V

    .line 382
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 383
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 386
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 387
    iput-boolean v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/widget/HBouncingListView;Lcom/htc/widget/HBouncingListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 380
    invoke-direct {p0, p1}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;-><init>(Lcom/htc/widget/HBouncingListView;)V

    return-void
.end method


# virtual methods
.method protected endFling()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 637
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 638
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 639
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 640
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 641
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    .line 683
    :goto_0
    return-void

    .line 642
    :cond_0
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverRightBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 643
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 645
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getRightBorderWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int v2, v5, v6

    .line 647
    .local v2, distanceToRight:I
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalWidth:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1700(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getLeftBorderWidth()I

    move-result v6

    add-int v1, v5, v6

    .line 650
    .local v1, distanceToLeft:I
    if-ge v1, v2, :cond_1

    move v4, v1

    .line 652
    .local v4, scrollDistance:I
    :goto_1
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto :goto_0

    .end local v4           #scrollDistance:I
    :cond_1
    move v4, v2

    .line 650
    goto :goto_1

    .line 654
    .end local v1           #distanceToLeft:I
    .end local v2           #distanceToRight:I
    :cond_2
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    .line 655
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    .line 656
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    .line 657
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto :goto_0

    .line 660
    :cond_3
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 661
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 662
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 663
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .line 664
    :cond_4
    iget-boolean v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverBottomBoundary()Z
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1800(Lcom/htc/widget/HBouncingListView;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 665
    iput-boolean v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 667
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getBottomBorderHeight()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int v0, v5, v6

    .line 669
    .local v0, distanceToBottom:I
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mChildrenTotalHeight:I
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$1900(Lcom/htc/widget/HBouncingListView;)I

    move-result v5

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v7}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v6, v6, Lcom/htc/widget/HBouncingListView;->mListPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v6}, Lcom/htc/widget/HBouncingListView;->getTopBorderHeight()I

    move-result v6

    add-int v3, v5, v6

    .line 672
    .local v3, distanceToTop:I
    if-ge v3, v0, :cond_5

    move v4, v3

    .line 674
    .restart local v4       #scrollDistance:I
    :goto_2
    neg-int v5, v4

    invoke-virtual {p0, v5}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->startByDistance(I)V

    goto/16 :goto_0

    .end local v4           #scrollDistance:I
    :cond_5
    move v4, v0

    .line 672
    goto :goto_2

    .line 676
    .end local v0           #distanceToBottom:I
    .end local v3           #distanceToTop:I
    :cond_6
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v7, v5, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    .line 677
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5, v6}, Lcom/htc/widget/HBouncingListView;->reportScrollStateChange(I)V

    .line 678
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v5}, Lcom/htc/widget/HBouncingListView;->clearScrollingCache()V

    .line 679
    iget-object v5, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v5}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    goto/16 :goto_0
.end method

.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 491
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_0

    .line 629
    :goto_0
    return-void

    .line 495
    :cond_0
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v9, v9, Lcom/htc/widget/HBouncingListView;->mItemCount:I

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    if-nez v9, :cond_2

    .line 496
    :cond_1
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto :goto_0

    .line 501
    :cond_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 502
    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    if-nez v9, :cond_3

    .line 503
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverLeftBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$600(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    .line 515
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    .line 516
    .local v6, scroller:Lcom/htc/widget/HtcScroller;
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->computeScrollOffset()Z

    move-result v3

    .line 518
    .local v3, more:Z
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrY()I

    move-result v8

    .line 519
    .local v8, y:I
    invoke-virtual {v6}, Lcom/htc/widget/HtcScroller;->getCurrX()I

    move-result v7

    .line 521
    .local v7, x:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 526
    iget v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    sub-int v0, v9, v7

    .line 529
    .local v0, delta:I
    if-lez v0, :cond_6

    .line 532
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    .line 533
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 534
    .local v1, firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionViewOriginalLeft:I

    .line 537
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$800(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$900(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 554
    .end local v1           #firstView:Landroid/view/View;
    :goto_2
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    .line 557
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 558
    .local v4, motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 561
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mMotionViewNewLeft:I

    if-eq v9, v10, :cond_4

    .line 562
    const/4 v3, 0x0

    .line 611
    :cond_4
    :goto_3
    if-eqz v3, :cond_a

    .line 613
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 614
    iput v7, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 619
    :goto_4
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 508
    .end local v0           #delta:I
    .end local v3           #more:Z
    .end local v4           #motionView:Landroid/view/View;
    .end local v6           #scroller:Lcom/htc/widget/HtcScroller;
    .end local v7           #x:I
    .end local v8           #y:I
    :cond_5
    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    if-eqz v9, :cond_3

    iget-boolean v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    if-nez v9, :cond_3

    .line 509
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->isOverTopBoundary()Z
    invoke-static {v9}, Lcom/htc/widget/HBouncingListView;->access$700(Lcom/htc/widget/HBouncingListView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 510
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_1

    .line 542
    .restart local v0       #delta:I
    .restart local v3       #more:Z
    .restart local v6       #scroller:Lcom/htc/widget/HtcScroller;
    .restart local v7       #x:I
    .restart local v8       #y:I
    :cond_6
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 543
    .local v5, offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    .line 545
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 546
    .local v2, lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionViewOriginalLeft:I

    .line 549
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingRight:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1000(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingLeft:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1100(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto/16 :goto_2

    .line 570
    .end local v0           #delta:I
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    :cond_7
    iget v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    sub-int v0, v9, v8

    .line 573
    .restart local v0       #delta:I
    if-lez v0, :cond_8

    .line 576
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    .line 577
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v11}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 578
    .restart local v1       #firstView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionViewOriginalTop:I

    .line 581
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1200(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1300(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 598
    .end local v1           #firstView:Landroid/view/View;
    :goto_5
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v0, v0}, Lcom/htc/widget/HBouncingListView;->trackMotionScroll(II)V

    .line 601
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    iget-object v11, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v11, v11, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 602
    .restart local v4       #motionView:Landroid/view/View;
    if-eqz v4, :cond_4

    .line 605
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mMotionViewNewTop:I

    if-eq v9, v10, :cond_4

    .line 606
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 586
    .end local v4           #motionView:Landroid/view/View;
    :cond_8
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getChildCount()I

    move-result v9

    add-int/lit8 v5, v9, -0x1

    .line 587
    .restart local v5       #offsetToLast:I
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iget v10, v10, Lcom/htc/widget/HBouncingListView;->mFirstPosition:I

    add-int/2addr v10, v5

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionPosition:I

    .line 589
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9, v5}, Lcom/htc/widget/HBouncingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 590
    .restart local v2       #lastView:Landroid/view/View;
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v10

    iput v10, v9, Lcom/htc/widget/HBouncingListView;->mMotionViewOriginalTop:I

    .line 593
    iget-object v9, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v9}, Lcom/htc/widget/HBouncingListView;->getHeight()I

    move-result v9

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingBottom:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1400(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #getter for: Lcom/htc/widget/HBouncingListView;->mPaddingTop:I
    invoke-static {v10}, Lcom/htc/widget/HBouncingListView;->access$1500(Lcom/htc/widget/HBouncingListView;)I

    move-result v10

    sub-int/2addr v9, v10

    add-int/lit8 v9, v9, -0x1

    neg-int v9, v9

    invoke-static {v9, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    .line 616
    .end local v2           #lastView:Landroid/view/View;
    .end local v5           #offsetToLast:I
    .restart local v4       #motionView:Landroid/view/View;
    :cond_9
    iput v8, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    goto/16 :goto_4

    .line 621
    :cond_a
    invoke-virtual {p0}, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->endFling()V

    goto/16 :goto_0
.end method

.method public start(I)V
    .locals 2
    .parameter "initialVelocity"

    .prologue
    const/4 v1, 0x1

    .line 474
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 476
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 482
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->disableScrollOverBoundary()V
    invoke-static {v0}, Lcom/htc/widget/HBouncingListView;->access$500(Lcom/htc/widget/HBouncingListView;)V

    .line 483
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAbsListView2$FlingRunnable;->start(I)V

    .line 484
    return-void

    .line 478
    :cond_0
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 479
    iput-boolean v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_0
.end method

.method public startByDistance(I)V
    .locals 14
    .parameter "distance"

    .prologue
    const/16 v5, 0x1f4

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 397
    if-ltz p1, :cond_1

    .line 398
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 399
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    .line 404
    :goto_0
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    iput v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 407
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 408
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    .line 409
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverLeftBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$100(Lcom/htc/widget/HBouncingListView;Z)V

    .line 410
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverRightBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$200(Lcom/htc/widget/HBouncingListView;Z)V

    .line 428
    :goto_1
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 436
    return-void

    .line 401
    :cond_1
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverLeft:Z

    .line 402
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverRight:Z

    goto :goto_0

    .line 412
    :cond_2
    if-ltz p1, :cond_4

    .line 413
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 414
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    .line 419
    :goto_2
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 420
    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startByDistance("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :cond_3
    iput v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    .line 422
    iget-object v6, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v8, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    move v7, v2

    move v9, v2

    move v10, p1

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lcom/htc/widget/HtcScroller;->startScroll(IIIII)V

    .line 423
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    iput v13, v0, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    .line 424
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverTopBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$300(Lcom/htc/widget/HBouncingListView;Z)V

    .line 425
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    #calls: Lcom/htc/widget/HBouncingListView;->enableScrollOverBottomBoundary(Z)V
    invoke-static {v0, v12}, Lcom/htc/widget/HBouncingListView;->access$400(Lcom/htc/widget/HBouncingListView;Z)V

    goto :goto_1

    .line 416
    :cond_4
    iput-boolean v12, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverTop:Z

    .line 417
    iput-boolean v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->isNeedCheckOverBottom:Z

    goto :goto_2
.end method

.method public startByDistanceAndVelocity(II)V
    .locals 8
    .parameter "distance"
    .parameter "velocity"

    .prologue
    const/4 v2, 0x0

    .line 445
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0}, Lcom/htc/widget/HBouncingListView;->isHorizontalStyle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    iput v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    .line 447
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingX:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    mul-int/lit8 v5, v3, 0x2

    new-instance v6, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v6}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v3, p1

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    .line 456
    :goto_0
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    const/4 v1, 0x4

    iput v1, v0, Lcom/htc/widget/HBouncingListView;->mTouchMode:I

    .line 457
    iget-object v0, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->this$0:Lcom/htc/widget/HBouncingListView;

    invoke-virtual {v0, p0}, Lcom/htc/widget/HBouncingListView;->post(Ljava/lang/Runnable;)Z

    .line 465
    return-void

    .line 450
    :cond_1
    iput v2, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    .line 451
    invoke-static {}, Lcom/htc/widget/HBouncingListView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "HtcBouncingList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "distance = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mScroller:Lcom/htc/widget/HtcScroller;

    iget v3, p0, Lcom/htc/widget/HBouncingListView$BouncingFlingRunnable;->mLastFlingY:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-instance v7, Lcom/htc/widget/EaseOutCubic;

    invoke-direct {v7}, Lcom/htc/widget/EaseOutCubic;-><init>()V

    move v4, v2

    move v5, p1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/widget/HtcScroller;->startScroll(IIIIILcom/htc/widget/EasingFunction;)V

    goto :goto_0
.end method
