.class public Lcom/htc/fragment/widget/CarouselWidget;
.super Lcom/htc/fragment/widget/Gallery;
.source "CarouselWidget.java"

# interfaces
.implements Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;
.implements Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;
.implements Lcom/htc/fragment/widget/DragSource;
.implements Lcom/htc/fragment/widget/DropTarget;
.implements Lcom/htc/fragment/widget/DragScroller;


# static fields
.field private static final LOCAL_LOGV:Z


# instance fields
.field final BOTTOM_SCROLL_SPEED:F

.field final LEFT_SCROLL_SPEED:F

.field final RIGHT_SCROLL_SPEED:F

.field final SCROLL_REGION:I

.field final TOP_SCROLL_SPEED:F

.field carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

.field private dividerPadding:I

.field private focusRect:Landroid/graphics/RectF;

.field private insertIndicator:Landroid/graphics/drawable/Drawable;

.field private isDrawIndicator:Z

.field private isDrawRect:Z

.field private isPortraitPreviousTime:Z

.field mAdapter:Lcom/htc/fragment/widget/BinAdapter;

.field private mCancelAnimation:Z

.field mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

.field private mColor:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field mDragId:J

.field private mDragItemPos:I

.field private mDragItemView:Landroid/view/View;

.field private mDragMode:I

.field private mDragMode3layout:Z

.field mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

.field private mIsDrop:Z

.field private mIsInit:Z

.field private mIsRemove:Z

.field private mIsSuccessful:Z

.field private mMemoryMode:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPoolFocusWidth:I

.field private mRectLeft:I

.field private mRectTop:I

.field mReorderUri:Landroid/net/Uri;

.field private mShowIndicator:Z

.field mTarget:Lcom/htc/fragment/widget/DropTarget;

.field mToPos:I

.field skipAnimationEnd:Z

.field private widgetSpace:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 276
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 32
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 36
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 38
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 40
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 42
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 47
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 67
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 70
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 74
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 75
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 77
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 80
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 212
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 418
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 419
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 428
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 681
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1175
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1415
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1416
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 277
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v4, -0x1

    const/high16 v3, 0x3f00

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 281
    invoke-direct {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/16 v0, 0x3c

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->SCROLL_REGION:I

    .line 36
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->TOP_SCROLL_SPEED:F

    .line 38
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->LEFT_SCROLL_SPEED:F

    .line 40
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->RIGHT_SCROLL_SPEED:F

    .line 42
    iput v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->BOTTOM_SCROLL_SPEED:F

    .line 47
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    .line 67
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 70
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 74
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 75
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 77
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    .line 80
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 212
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 418
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 419
    iput v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 428
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 681
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 1175
    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1415
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1416
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 282
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->gInit(Landroid/content/Context;)V

    .line 283
    return-void
.end method

.method private createGreenIndicator()V
    .locals 1

    .prologue
    .line 1021
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1022
    return-void
.end method

.method private drawDivider(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 431
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawPortraitDivider(Landroid/graphics/Canvas;)V

    .line 435
    :goto_0
    return-void

    .line 434
    :cond_0
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawLandscapeDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method private drawLandscapeDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 520
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-gtz v10, :cond_1

    .line 579
    :cond_0
    return-void

    .line 523
    :cond_1
    const/4 v8, 0x0

    .line 525
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 526
    .local v9, ypos:I
    const/4 v4, 0x1

    .line 527
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 528
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 529
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 530
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 532
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 533
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 535
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 536
    const/4 v9, -0x1

    .line 537
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 538
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 539
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 540
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 541
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 542
    add-int/lit8 v4, v4, 0x1

    .line 545
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 546
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 547
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 550
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 551
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 553
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 554
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 555
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 556
    if-eqz v8, :cond_7

    .line 560
    :cond_6
    if-eqz v8, :cond_0

    .line 561
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    .line 562
    :goto_2
    if-ltz v9, :cond_8

    .line 563
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 553
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 566
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 567
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 568
    int-to-float v10, v9

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 569
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 570
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v12, v10}, Landroid/graphics/Canvas;->translate(FF)V

    .line 573
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 574
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 575
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawPortraitDivider(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-gtz v10, :cond_1

    .line 517
    :cond_0
    return-void

    .line 460
    :cond_1
    const/4 v8, 0x0

    .line 462
    .local v8, view:Landroid/view/View;
    const/4 v9, -0x1

    .line 463
    .local v9, xpos:I
    const/4 v4, 0x1

    .line 464
    .local v4, index:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v0

    .line 465
    .local v0, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getReducedPosition()I

    move-result v6

    .line 466
    .local v6, reducedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v7

    .line 467
    .local v7, shrinkedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v1

    .line 469
    .local v1, expandedPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 470
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v10

    invoke-interface {v10}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    .line 472
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v10

    if-gt v0, v10, :cond_5

    .line 473
    const/4 v9, -0x1

    .line 474
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 475
    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    sub-int/2addr v10, v9

    const/4 v11, 0x6

    if-le v10, v11, :cond_3

    .line 476
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 477
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 478
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 479
    add-int/lit8 v4, v4, 0x1

    .line 482
    :cond_3
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 483
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 484
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_0

    .line 487
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    .line 488
    .local v2, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v5

    .line 490
    .local v5, lastVisPos:I
    move v3, v2

    .local v3, i:I
    :goto_1
    if-gt v3, v5, :cond_6

    .line 491
    if-eq v3, v7, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v6, :cond_7

    .line 492
    sub-int v10, v3, v2

    invoke-virtual {p0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 493
    if-eqz v8, :cond_7

    .line 498
    :cond_6
    if-eqz v8, :cond_0

    .line 499
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    .line 500
    :goto_2
    if-ltz v9, :cond_8

    .line 501
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    sub-int/2addr v9, v10

    goto :goto_2

    .line 490
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 504
    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-ge v9, v10, :cond_0

    .line 505
    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v10

    if-eq v9, v10, :cond_9

    .line 506
    int-to-float v10, v9

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 507
    iget-object v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 508
    neg-int v10, v9

    int-to-float v10, v10

    invoke-virtual {p1, v10, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 511
    :cond_9
    invoke-direct {p0, v9}, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect(I)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 512
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/CarouselWidget;->drawRect(Landroid/graphics/Canvas;I)V

    .line 513
    :cond_a
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v10

    add-int/2addr v9, v10

    goto :goto_3
.end method

.method private drawRect(Landroid/graphics/Canvas;I)V
    .locals 8
    .parameter "canvas"
    .parameter "xy"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 216
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawRect:Z

    if-eqz v2, :cond_4

    .line 217
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_0

    .line 218
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    .line 220
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    if-gez v2, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mContext:Landroid/content/Context;

    const-string v4, "app_selection_highlight"

    const v5, 0x2060033

    invoke-static {v3, v4, v5}, Lcom/htc/util/skin/HtcSkinUtil;->getColorResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    .line 224
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    if-gez v2, :cond_2

    .line 225
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x20e0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    .line 227
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 228
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 230
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 232
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    if-nez v2, :cond_3

    .line 233
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    .line 235
    :cond_3
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_8

    .line 236
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 237
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 239
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->top:F

    .line 240
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 249
    :goto_0
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 250
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 254
    :cond_4
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isDrawIndicator:Z

    if-eqz v2, :cond_7

    .line 255
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_5

    .line 256
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mContext:Landroid/content/Context;

    const/4 v3, -0x1

    const v4, 0x208019c

    const-string v5, "common_subnav_tab_rearrange"

    invoke-static {v2, v3, v4, v5}, Lcom/htc/fragment/widget/CarouselSkinUtil;->getDrawable(Landroid/content/Context;IILjava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_5
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v2, :cond_6

    .line 260
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x205006b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 262
    :cond_6
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_9

    .line 263
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .line 264
    .local v1, width:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v1

    add-int v4, p2, v1

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    invoke-virtual {v2, v3, v7, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 270
    .end local v1           #width:I
    :goto_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 271
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->invalidate()V

    .line 273
    :cond_7
    return-void

    .line 242
    :cond_8
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    int-to-float v3, p2

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 243
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    add-int/2addr v3, p2

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 245
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    iput v6, v2, Landroid/graphics/RectF;->left:F

    .line 246
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->focusRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mPoolFocusWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    goto :goto_0

    .line 266
    :cond_9
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .line 267
    .local v0, height:I
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    sub-int v3, p2, v0

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    add-int v5, p2, v0

    invoke-virtual {v2, v7, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private findInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 1
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 813
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 814
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v0

    .line 819
    :goto_0
    return v0

    .line 816
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 817
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0

    .line 819
    :cond_1
    invoke-direct/range {p0 .. p5}, Lcom/htc/fragment/widget/CarouselWidget;->findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v0

    goto :goto_0
.end method

.method private findLandscapeInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 922
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 923
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v14

    add-int v12, p3, v14

    .line 925
    .local v12, scrolledY:I
    if-gtz v2, :cond_1

    .line 926
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 927
    const/4 v7, 0x1

    .line 1017
    :cond_0
    :goto_0
    return v7

    .line 930
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 931
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 932
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 934
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 935
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 937
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 938
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 939
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 942
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 943
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getBottom()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 944
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 946
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 948
    if-eqz v8, :cond_4

    .line 949
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 939
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 950
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 951
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 953
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 956
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 957
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 959
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 960
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 962
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 964
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 965
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 966
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 968
    if-eqz v8, :cond_8

    .line 969
    if-ne v6, v4, :cond_7

    .line 970
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 973
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 974
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 976
    :cond_7
    if-le v6, v4, :cond_0

    .line 977
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 981
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 982
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 985
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 986
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 988
    :cond_9
    if-ne v6, v4, :cond_a

    .line 989
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 990
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 993
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 994
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 995
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 998
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 1000
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 1002
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 1003
    if-ge v7, v3, :cond_0

    .line 1004
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 959
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 1013
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1014
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 1015
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 1017
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private findPortraitInsertedPosition(Landroid/view/ViewGroup;IIII)I
    .locals 16
    .parameter "container"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"

    .prologue
    .line 823
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 824
    .local v2, count:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getScrollX()I

    move-result v14

    add-int v12, p2, v14

    .line 826
    .local v12, scrolledX:I
    if-gtz v2, :cond_1

    .line 827
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 828
    const/4 v7, 0x1

    .line 918
    :cond_0
    :goto_0
    return v7

    .line 831
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v13

    .line 832
    .local v13, shrinkedPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getExpandedPosition()I

    move-result v4

    .line 833
    .local v4, expandedPos:I
    const/4 v3, 0x0

    .line 835
    .local v3, dataCount:I
    const/4 v8, 0x0

    .line 836
    .local v8, isAdd:Z
    const/4 v9, 0x0

    .line 838
    .local v9, isLast:Z
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v14

    invoke-interface {v14}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    .line 840
    if-le v13, v3, :cond_3

    const/4 v8, 0x1

    .line 843
    :cond_2
    :goto_1
    add-int/lit8 v11, v2, -0x1

    .line 844
    .local v11, last_pos:I
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getRight()I

    move-result v14

    if-lt v12, v14, :cond_6

    .line 845
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 847
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 849
    if-eqz v8, :cond_4

    .line 850
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 840
    .end local v1           #child:Landroid/view/View;
    .end local v11           #last_pos:I
    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    .line 851
    .restart local v1       #child:Landroid/view/View;
    .restart local v11       #last_pos:I
    :cond_4
    if-eqz v9, :cond_5

    .line 852
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto :goto_0

    .line 854
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto :goto_0

    .line 857
    .end local v1           #child:Landroid/view/View;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v5

    .line 858
    .local v5, firstVisPos:I
    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLastVisiblePosition()I

    move-result v10

    .line 860
    .local v10, lastVisPos:I
    move v6, v5

    .local v6, i:I
    :goto_2
    if-gt v6, v10, :cond_f

    .line 861
    sub-int v14, v6, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 863
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 865
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v14

    if-gt v12, v14, :cond_e

    .line 866
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    .line 867
    .local v7, index:I
    const/4 v14, -0x1

    if-eq v13, v14, :cond_0

    .line 869
    if-eqz v8, :cond_8

    .line 870
    if-ne v6, v4, :cond_7

    .line 871
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 874
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 875
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 877
    :cond_7
    if-le v6, v4, :cond_0

    .line 878
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 882
    :cond_8
    if-ne v6, v4, :cond_9

    if-ge v4, v13, :cond_9

    .line 883
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-le v12, v14, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    invoke-virtual/range {p0 .. p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v15

    add-int/2addr v14, v15

    move-object/from16 v0, p0

    iput v14, v0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 887
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 889
    :cond_9
    if-ne v6, v4, :cond_a

    .line 890
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v14

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v15

    div-int/lit8 v15, v15, 0x2

    add-int/2addr v14, v15

    if-gt v12, v14, :cond_0

    .line 891
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 894
    :cond_a
    if-ge v6, v4, :cond_b

    if-le v6, v13, :cond_b

    .line 895
    const/4 v14, 0x1

    if-le v7, v14, :cond_0

    .line 896
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    .line 899
    :cond_b
    if-ge v6, v4, :cond_c

    if-lt v6, v13, :cond_0

    .line 901
    :cond_c
    if-le v6, v4, :cond_d

    if-gt v6, v13, :cond_0

    .line 903
    :cond_d
    if-le v6, v4, :cond_0

    if-ge v6, v13, :cond_0

    .line 904
    if-ge v7, v3, :cond_0

    .line 905
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 860
    .end local v7           #index:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 914
    .end local v1           #child:Landroid/view/View;
    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 915
    .restart local v1       #child:Landroid/view/View;
    if-eqz v8, :cond_10

    .line 916
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v14, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    add-int/lit8 v7, v14, 0x1

    goto/16 :goto_0

    .line 918
    :cond_10
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/htc/fragment/widget/TaskInfo;

    iget v7, v14, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    goto/16 :goto_0
.end method

.method private gInit(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 128
    iput-boolean v6, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 129
    const/16 v1, 0x3e9

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mState:I

    .line 131
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 133
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 135
    .local v0, resource:Landroid/content/res/Resources;
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    .line 137
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_0

    .line 138
    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 140
    :cond_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_2

    const v1, 0x2080036

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 142
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_1

    .line 143
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 145
    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    :goto_1
    return-void

    .line 140
    :cond_2
    const v1, 0x2080041

    goto :goto_0

    .line 148
    :cond_3
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1
.end method

.method private getLocationFromPos(I[I)V
    .locals 4
    .parameter "pos"
    .parameter "loc"

    .prologue
    const/4 v3, 0x0

    .line 738
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 740
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 741
    aget v0, p2, v3

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p2, v3

    .line 744
    :goto_0
    return-void

    .line 743
    :cond_0
    const/4 v0, 0x1

    aget v1, p2, v0

    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v3

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, p2, v0

    goto :goto_0
.end method

.method private initMember()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 311
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    if-ne v1, v2, :cond_0

    .line 321
    :goto_0
    return-void

    .line 315
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 316
    .local v0, view:Landroid/view/View;
    if-nez v0, :cond_1

    .line 317
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "There should be AT LEAST ONE element in the TAB."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 320
    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsInit:Z

    goto :goto_0
.end method

.method private isDrawRect(I)Z
    .locals 4
    .parameter "xy"

    .prologue
    const/4 v0, 0x1

    const/high16 v3, 0x3f00

    .line 438
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_2

    .line 439
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 453
    :cond_0
    :goto_0
    return v0

    .line 441
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 442
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    goto :goto_0

    .line 446
    :cond_2
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-lt p1, v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int v1, p1, v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 448
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    if-ge p1, v1, :cond_4

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_4

    .line 449
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    goto :goto_0

    .line 453
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveIndicator(II)V
    .locals 3
    .parameter "scrolledXY"
    .parameter "overlap_pos"

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1039
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 1040
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1042
    .local v1, shrinkedPos:I
    if-gt p2, v1, :cond_1

    .line 1043
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1044
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1045
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1051
    :goto_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 1071
    .end local v1           #shrinkedPos:I
    :cond_0
    :goto_1
    return-void

    .line 1047
    .restart local v1       #shrinkedPos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1048
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1049
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_0

    .line 1053
    .end local v1           #shrinkedPos:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    if-ne p2, v2, :cond_0

    .line 1054
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v2

    sub-int v2, p2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1055
    if-eqz v0, :cond_0

    .line 1056
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    if-eq v2, p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->isWaveRunnableRunning()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1057
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getShrinkedPosition()I

    move-result v1

    .line 1058
    .restart local v1       #shrinkedPos:I
    if-gt p2, v1, :cond_3

    .line 1059
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1060
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1061
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    .line 1067
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    goto :goto_1

    .line 1063
    :cond_3
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 1064
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getIndicatorIndex()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setLastIndicatorIndex(I)V

    .line 1065
    invoke-virtual {p0, p2}, Lcom/htc/fragment/widget/CarouselWidget;->setIndicatorIndex(I)V

    goto :goto_2
.end method

.method private removeIndicator()V
    .locals 1

    .prologue
    .line 1117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1118
    return-void
.end method

.method private startReduceCountAnimation()V
    .locals 3

    .prologue
    .line 1419
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1420
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v0

    .line 1422
    .local v0, orgWidthHeight:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setDragBinGridView(Z)V

    .line 1423
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidthWithNoAnimation()I

    move-result v1

    .line 1425
    .local v1, targetWidthHeight:I
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->startWidthHeightAnimation(II)V

    .line 1426
    return-void

    .line 1420
    .end local v0           #orgWidthHeight:I
    .end local v1           #targetWidthHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v0

    goto :goto_0

    .line 1423
    .restart local v0       #orgWidthHeight:I
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeightWithNoAnimation()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public acceptDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1136
    const/4 v0, 0x1

    return v0
.end method

.method cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1431
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 1432
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 1433
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mShowIndicator:Z

    .line 1434
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->cancelAnimation()V

    .line 1435
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 614
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 615
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    .line 620
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_1

    .line 621
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->draw(Landroid/graphics/Canvas;)V

    .line 623
    :cond_1
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 624
    return-void

    .line 616
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 617
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->drawDivider(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1273
    invoke-virtual {p1, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic dispatchSetSelected(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->dispatchSetSelected(Z)V

    return-void
.end method

.method doAnimationForDifferentTarget(Lcom/htc/fragment/widget/DropTarget;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 666
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 667
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 668
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    .line 674
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startWaveRunnable()V

    .line 676
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 583
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->draw(Landroid/graphics/Canvas;)V

    .line 585
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-eqz v3, :cond_0

    .line 586
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v3, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v3}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 587
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 590
    :cond_0
    sget-boolean v3, Lcom/htc/fragment/widget/FastScroller;->SCROLL_DEBUG:Z

    if-eqz v3, :cond_2

    .line 591
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v3, :cond_1

    .line 592
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 593
    .local v1, x:Ljava/lang/Integer;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    neg-int v4, v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 594
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 595
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    shr-int/lit8 v4, v4, 0x1

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    .line 598
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #x:Ljava/lang/Integer;
    :cond_1
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    iget-object v3, v3, Lcom/htc/fragment/widget/FastScroller;->ptList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 599
    .local v2, y:Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    neg-int v3, v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 600
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 601
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    shr-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 605
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #y:Ljava/lang/Integer;
    :cond_2
    return-void
.end method

.method public enableSecondBackground(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 1440
    return-void
.end method

.method public bridge synthetic forceStopPartialFling()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->forceStopPartialFling()V

    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 1
    .parameter "index"

    .prologue
    .line 1475
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 1463
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1446
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mItemCount:I

    return v0
.end method

.method getFragment()Lcom/htc/fragment/widget/CarouselFragment;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    return-object v0
.end method

.method getStateWidget()I
    .locals 1

    .prologue
    .line 1366
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mState:I

    return v0
.end method

.method public getWidgetHeight()I
    .locals 1

    .prologue
    .line 298
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getWidgetWidth()I
    .locals 1

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method initFlags()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 304
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 305
    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 307
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 308
    return-void
.end method

.method initLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 113
    const/high16 v0, 0x300

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setScrollBarStyle(I)V

    .line 115
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mContext:Landroid/content/Context;

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_0

    const-string v0, "common_app_bkg_down_src"

    :goto_0
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_1

    const v1, 0x2080039

    :goto_1
    invoke-static {v2, v0, v1}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {p0, v3, v3, v3, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 120
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->setSpacing(I)V

    .line 122
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusable(Z)V

    .line 123
    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/CarouselWidget;->setFocusableInTouchMode(Z)V

    .line 124
    return-void

    .line 115
    :cond_0
    const-string v0, "common_app_bkg_down_land_src"

    goto :goto_0

    :cond_1
    const v1, 0x2080148

    goto :goto_1
.end method

.method isBusy()Z
    .locals 1

    .prologue
    .line 1483
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1484
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isBusy()Z

    move-result v0

    .line 1486
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDragging()Z
    .locals 1

    .prologue
    .line 1371
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isDragging()Z

    move-result v0

    .line 1374
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 2
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v1, 0x0

    .line 327
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    if-eqz v0, :cond_0

    .line 328
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    .line 329
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->startReduceCountAnimation()V

    .line 331
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    .line 333
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    if-nez v0, :cond_1

    .line 334
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 335
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsRemove:Z

    .line 337
    :cond_1
    return-void
.end method

.method public bridge synthetic offsetChildrenTopAndBottom(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x1

    .line 687
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    if-eqz v1, :cond_0

    .line 688
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->skipAnimationEnd:Z

    .line 689
    const-string v1, "enable skipAnimationEnd"

    invoke-static {v1}, Lcom/htc/fragment/widget/CarouselLog;->i(Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v13

    check-cast v13, Lcom/htc/fragment/widget/BinAdapter;

    .line 698
    .local v13, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v13}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 699
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v1, v14, :cond_3

    .line 700
    if-eqz v0, :cond_2

    .line 701
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 702
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 703
    const/16 v1, 0x3e8

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 707
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    .line 731
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->realign()V

    .line 733
    const/4 v1, -0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    goto :goto_0

    .line 705
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 708
    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 709
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 710
    .restart local v4       #values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 711
    const-string v1, "task_order"

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 712
    if-eqz v0, :cond_4

    .line 713
    const/16 v7, 0x3ea

    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object v6, v0

    move-object v10, v4

    move-object v12, v5

    invoke-virtual/range {v6 .. v12}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 717
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsDrop:Z

    goto :goto_1

    .line 715
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 718
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 719
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    instance-of v1, v1, Lcom/htc/fragment/widget/BinGridView;

    if-eqz v1, :cond_1

    .line 721
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getCurrentTab()I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 722
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->setNextTab()V

    .line 723
    :cond_6
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mTarget:Lcom/htc/fragment/widget/DropTarget;

    check-cast v1, Lcom/htc/fragment/widget/BinGridView;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/BinGridView;->addtoDB()V

    .line 725
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    if-nez v1, :cond_1

    .line 726
    iput-boolean v14, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode3layout:Z

    goto/16 :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7
    .parameter "newConfig"

    .prologue
    const/4 v6, 0x0

    .line 159
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 161
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 164
    .local v0, resource:Landroid/content/res/Resources;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->insertIndicator:Landroid/graphics/drawable/Drawable;

    .line 167
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortraitPreviousTime:Z

    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eq v1, v2, :cond_0

    .line 168
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 191
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_3

    const-string v1, "common_app_bkg_down_src"

    :goto_0
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_4

    const v2, 0x2080039

    :goto_1
    invoke-static {v3, v1, v2}, Lcom/htc/util/skin/HtcSkinUtil;->getDrawableResIdentifier(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setBackgroundResource(I)V

    .line 194
    invoke-virtual {p0, v6, v6, v6, v6}, Lcom/htc/fragment/widget/CarouselWidget;->setPadding(IIII)V

    .line 196
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    if-gez v1, :cond_1

    .line 197
    const v1, 0x205006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    .line 199
    :cond_1
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_5

    const v1, 0x2080036

    :goto_2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 201
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    if-gez v1, :cond_2

    .line 202
    const v1, 0x2050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    .line 204
    :cond_2
    iget-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v1, :cond_6

    .line 205
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v4, v5

    invoke-virtual {v1, v6, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 209
    :goto_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 210
    return-void

    .line 191
    :cond_3
    const-string v1, "common_app_bkg_down_land_src"

    goto :goto_0

    :cond_4
    const v2, 0x2080148

    goto :goto_1

    .line 199
    :cond_5
    const v1, 0x2080041

    goto :goto_2

    .line 207
    :cond_6
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->widgetSpace:I

    iget v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->dividerPadding:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v1, v2, v6, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_3
.end method

.method public bridge synthetic onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onDown(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onDragEnter(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1031
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    .line 1032
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->createGreenIndicator()V

    .line 1033
    return-void
.end method

.method public onDragExit(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1127
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->removeIndicator()V

    .line 1128
    return-void
.end method

.method public onDragOver(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 11
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1078
    move-object v0, p0

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .line 1080
    .local v10, pos:I
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1081
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollX()I

    move-result v0

    add-int/2addr v0, p2

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1083
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLeft()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1084
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollRight()V

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 1085
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getRight()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1086
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1087
    .local v7, firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1089
    .local v8, lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1090
    .local v9, lastVisView:Landroid/view/View;
    if-eqz v9, :cond_2

    .line 1091
    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v6

    .line 1092
    .local v6, anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1095
    .end local v6           #anchor:I
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollLeft()V

    goto :goto_0

    .line 1098
    .end local v7           #firstVisPos:I
    .end local v8           #lastPos:I
    .end local v9           #lastVisView:Landroid/view/View;
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getScrollY()I

    move-result v0

    add-int/2addr v0, p3

    invoke-direct {p0, v0, v10}, Lcom/htc/fragment/widget/CarouselWidget;->moveIndicator(II)V

    .line 1100
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getTop()I

    move-result v0

    add-int/lit8 v0, v0, 0x3c

    if-ge p3, v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_4

    .line 1101
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBottom()V

    goto :goto_0

    .line 1102
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getBottom()I

    move-result v0

    add-int/lit8 v0, v0, -0x3c

    if-le p3, v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v7

    .line 1104
    .restart local v7       #firstVisPos:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .line 1106
    .restart local v8       #lastPos:I
    sub-int v0, v8, v7

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1107
    .restart local v9       #lastVisView:Landroid/view/View;
    if-eqz v9, :cond_5

    .line 1108
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v6

    .line 1109
    .restart local v6       #anchor:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    if-le v6, v0, :cond_0

    .line 1112
    .end local v6           #anchor:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->scrollTop()V

    goto/16 :goto_0
.end method

.method public onDrop(Lcom/htc/fragment/widget/DragSource;IIIILjava/lang/Object;)V
    .locals 14
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    move-object v0, p0

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 754
    invoke-direct/range {v0 .. v5}, Lcom/htc/fragment/widget/CarouselWidget;->findInsertedPosition(Landroid/view/ViewGroup;IIII)I

    move-result v10

    .local v10, pos:I
    move-object/from16 v8, p6

    .line 755
    check-cast v8, Lcom/htc/fragment/widget/TaskInfo;

    .line 756
    .local v8, info:Lcom/htc/fragment/widget/TaskInfo;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v7

    check-cast v7, Lcom/htc/fragment/widget/BinAdapter;

    .line 757
    .local v7, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getHandler()Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;

    move-result-object v0

    .line 758
    .local v0, handle:Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;
    invoke-virtual {v7}, Lcom/htc/fragment/widget/BinAdapter;->getUri()Landroid/net/Uri;

    move-result-object v11

    .line 759
    .local v11, uri:Landroid/net/Uri;
    iput-object v7, p0, Lcom/htc/fragment/widget/CarouselWidget;->mAdapter:Lcom/htc/fragment/widget/BinAdapter;

    .line 760
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 762
    .local v9, loc:[I
    check-cast p1, Lcom/htc/fragment/widget/DropTarget;

    .end local p1
    if-eq p0, p1, :cond_1

    .line 763
    iput-object v11, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 764
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 765
    iget-wide v1, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    iput-wide v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragId:J

    .line 766
    const/4 v1, 0x2

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 768
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 769
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 772
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 809
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 780
    .local v3, reorderUri:Landroid/net/Uri;
    const-string v1, "reorder_task"

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 781
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v8, Lcom/htc/fragment/widget/TaskInfo;->_id:J

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "from"

    iget v5, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "to"

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "gId"

    const-string v5, "gId"

    invoke-virtual {v11, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 786
    iput-object v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mReorderUri:Landroid/net/Uri;

    .line 787
    iput v10, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    .line 788
    const/4 v1, 0x1

    iput v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    .line 790
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-eq v1, v10, :cond_2

    .line 791
    invoke-direct {p0, v10, v9}, Lcom/htc/fragment/widget/CarouselWidget;->getLocationFromPos(I[I)V

    .line 792
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    const/4 v2, 0x0

    aget v2, v9, v2

    int-to-float v2, v2

    const/4 v5, 0x1

    aget v5, v9, v5

    int-to-float v5, v5

    invoke-virtual {v1, v2, v5}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 795
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->onAnimationEnd()V

    .line 798
    :cond_2
    if-eqz v0, :cond_3

    .line 799
    iget v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    if-ne v1, v10, :cond_0

    .line 800
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 801
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "is_host"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 802
    const/16 v1, 0x3e8

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/htc/fragment/content/NotifyingAsyncQueryHandler;->startUpdate(ILjava/lang/Object;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)V

    .line 803
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v1}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    goto/16 :goto_0

    .line 806
    .end local v4           #values:Landroid/content/ContentValues;
    :cond_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "hanlde is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDropAnimationEnd(Landroid/view/View;)V
    .locals 2
    .parameter "target"

    .prologue
    .line 632
    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    if-nez v0, :cond_1

    .line 633
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v0, Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselHost;->removeIndicator()V

    .line 638
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 640
    :cond_1
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Z)V
    .locals 5
    .parameter "target"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 647
    iput-boolean p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mIsSuccessful:Z

    .line 648
    if-nez p2, :cond_2

    .line 649
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 650
    .local v0, loc:[I
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 652
    iget-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    check-cast v1, Lcom/htc/fragment/widget/CarouselHost;

    aget v2, v0, v4

    int-to-float v2, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->doAnimationForDragIcon(FF)V

    .line 655
    :cond_0
    if-eqz p1, :cond_1

    .line 656
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x20401d4

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 662
    .end local v0           #loc:[I
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 659
    .restart local p1
    :cond_2
    check-cast p1, Lcom/htc/fragment/widget/DragSource;

    .end local p1
    if-eq p1, p0, :cond_3

    .line 660
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemLongClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;)V

    .line 345
    invoke-virtual {p0, p0}, Lcom/htc/fragment/widget/CarouselWidget;->setOnItemClickListener(Lcom/htc/fragment/widget/AdapterView$OnItemClickListener;)V

    .line 346
    return-void
.end method

.method public bridge synthetic onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public onItemClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1204
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    iget v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mState:I

    packed-switch v2, :pswitch_data_0

    .line 1220
    :goto_0
    return-void

    .line 1206
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    .line 1207
    .local v0, info:Lcom/htc/fragment/widget/TaskInfo;
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    iget-object v3, v0, Lcom/htc/fragment/widget/TaskInfo;->taskTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/htc/fragment/widget/CarouselHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 1210
    invoke-static {}, Lcom/htc/utils/ulog/ReusableULogData;->obtain()Lcom/htc/utils/ulog/ReusableULogData;

    move-result-object v1

    .line 1211
    .local v1, uLogData:Lcom/htc/utils/ulog/ReusableULogData;
    const-string v2, "system_server"

    invoke-virtual {v1, v2}, Lcom/htc/utils/ulog/ReusableULogData;->setAppId(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    invoke-interface {v2, v3}, Lcom/htc/utils/ulog/ULogDataWritable;->setCategory(Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    move-result-object v2

    const-string v3, "tab_index"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/utils/ulog/ULogDataWritable;->addData(Ljava/lang/String;Ljava/lang/String;)Lcom/htc/utils/ulog/ULogDataWritable;

    .line 1214
    invoke-static {v1}, Lcom/htc/utils/ulog/ULog;->log(Lcom/htc/utils/ulog/ULogData;)V

    .line 1215
    invoke-virtual {v1}, Lcom/htc/utils/ulog/ReusableULogData;->recycle()V

    goto :goto_0

    .line 1204
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method public onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/fragment/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Lcom/htc/fragment/widget/AdapterView;,"Lcom/htc/fragment/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 360
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    move v0, v2

    .line 385
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 364
    goto :goto_0

    .line 366
    :cond_2
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_3

    .line 367
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->openDrawer()V

    move v0, v2

    .line 368
    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/TaskInfo;

    iget v0, v0, Lcom/htc/fragment/widget/TaskInfo;->taskOrder:I

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    .line 372
    iput-object p2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    .line 374
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectTop:I

    .line 375
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mRectLeft:I

    .line 377
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setShrinkedPosition(I)V

    .line 378
    iget v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragItemPos:I

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/CarouselWidget;->setExpandedPosition(I)V

    .line 379
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    .line 381
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initFlags()V

    .line 382
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, p2, p0, v3, v1}, Lcom/htc/fragment/widget/DragController;->startDrag(Landroid/view/View;Lcom/htc/fragment/widget/DragSource;Ljava/lang/Object;I)V

    .line 383
    invoke-direct {p0}, Lcom/htc/fragment/widget/CarouselWidget;->initMember()V

    move v0, v2

    .line 385
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keycode"
    .parameter "event"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    .line 1284
    iget-boolean v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 1285
    sparse-switch p1, :sswitch_data_0

    .line 1312
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1313
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1315
    .local v0, content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1316
    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    .line 1317
    .local v1, handle:Z
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1361
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 1287
    :sswitch_1
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1288
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_1

    .line 1289
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1291
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1292
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1297
    :sswitch_2
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1298
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_2

    .line 1299
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1301
    :cond_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1302
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1323
    :cond_3
    sparse-switch p1, :sswitch_data_1

    .line 1350
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_6

    .line 1351
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/CarouselHost;->getTabContentView()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 1353
    .restart local v0       #content:Landroid/view/View;
    if-eqz v0, :cond_6

    .line 1354
    invoke-virtual {v0, v3}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    .line 1355
    .restart local v1       #handle:Z
    invoke-virtual {v0, p2}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 1356
    goto :goto_0

    .line 1325
    .end local v0           #content:Landroid/view/View;
    .end local v1           #handle:Z
    :sswitch_3
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1326
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_4

    .line 1327
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->movePrevious()Z

    .line 1329
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1330
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1335
    :sswitch_4
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    if-eqz v2, :cond_0

    .line 1336
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v2, :cond_5

    .line 1337
    iget-object v2, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/FastScroller;->moveNext()Z

    .line 1339
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1340
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestFocus()Z

    goto :goto_0

    .line 1361
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/htc/fragment/widget/Gallery;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 1285
    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 1323
    :sswitch_data_1
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public bridge synthetic onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public bridge synthetic onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method openDrawer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 390
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselSlidingDrawer;->open()V

    .line 394
    iput-boolean v1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCancelAnimation:Z

    .line 395
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/CarouselWidget;->setOrientationChangedFlag(Z)V

    .line 397
    :cond_0
    return-void
.end method

.method public bridge synthetic partialFling(III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/Gallery;->partialFling(III)V

    return-void
.end method

.method public bridge synthetic partialFling(IIIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 29
    invoke-super {p0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    return-void
.end method

.method realign()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 1379
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getMaxCapacity()I

    move-result v4

    if-le v3, v4, :cond_0

    .line 1385
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getFirstVisiblePosition()I

    move-result v0

    .line 1386
    .local v0, firstVisPos:I
    const/4 v1, -0x1

    .line 1388
    .local v1, lastPos:I
    const/4 v2, 0x0

    .line 1389
    .local v2, lastView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1390
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 1391
    sub-int v3, v1, v0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1394
    :cond_2
    iget-boolean v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->isPortrait:Z

    if-eqz v3, :cond_7

    .line 1395
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 1396
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_3

    .line 1397
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1398
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1399
    :cond_3
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_4

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1400
    :cond_4
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto :goto_0

    .line 1401
    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_6

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1402
    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1404
    :cond_7
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_a

    .line 1405
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v8, :cond_8

    .line 1406
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mToPos:I

    add-int/lit8 v4, v1, 0x2

    if-ne v3, v4, :cond_0

    .line 1407
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1408
    :cond_8
    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v5, :cond_9

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v7, :cond_0

    .line 1409
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0

    .line 1410
    :cond_a
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v4

    if-lt v3, v4, :cond_0

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-eq v3, v6, :cond_b

    iget v3, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragMode:I

    if-ne v3, v5, :cond_0

    .line 1411
    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getHeight()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v5

    sub-int/2addr v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/CarouselWidget;->scrollBy(I)V

    goto/16 :goto_0
.end method

.method public scrollBottom()V
    .locals 2

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1170
    return-void
.end method

.method public bridge synthetic scrollBy(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    return-void
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1146
    return-void
.end method

.method public scrollRight()V
    .locals 2

    .prologue
    .line 1153
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1154
    return-void
.end method

.method public scrollTop()V
    .locals 2

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getLayoutParamsHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f00

    mul-float/2addr v0, v1

    float-to-int v0, v0

    neg-int v0, v0

    invoke-super {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollBy(I)V

    .line 1162
    return-void
.end method

.method public bridge synthetic setAnimationDuration(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    return-void
.end method

.method public bridge synthetic setCallbackDuringFling(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackDuringFling(Z)V

    return-void
.end method

.method public bridge synthetic setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setCallbackOnUnselectedItemClick(Z)V

    return-void
.end method

.method setCarouselHost(Lcom/htc/fragment/widget/CarouselHost;)V
    .locals 0
    .parameter "host"

    .prologue
    .line 1196
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mCarouselHost:Lcom/htc/fragment/widget/CarouselHost;

    .line 1197
    return-void
.end method

.method setCountText(ILjava/lang/String;)V
    .locals 3
    .parameter "index"
    .parameter "text"

    .prologue
    .line 1232
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1233
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1234
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1236
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    const-string v2, "0"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1237
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/htc/fragment/widget/CarouselWidget;->setCountTextVisibility(II)V

    .line 1242
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1239
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method setCountTextVisibility(II)V
    .locals 4
    .parameter "index"
    .parameter "visibility"

    .prologue
    .line 1246
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1247
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 1248
    .local v0, child:Landroid/widget/FrameLayout;
    const v2, 0x2020062

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1250
    .local v1, count:Landroid/widget/TextView;
    if-eqz p2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1251
    :cond_0
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1256
    .end local v0           #child:Landroid/widget/FrameLayout;
    .end local v1           #count:Landroid/widget/TextView;
    :cond_1
    :goto_0
    return-void

    .line 1253
    .restart local v0       #child:Landroid/widget/FrameLayout;
    .restart local v1       #count:Landroid/widget/TextView;
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method setCurrentTabUtil(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 1179
    if-gez p1, :cond_0

    .line 1192
    :goto_0
    return-void

    .line 1185
    :cond_0
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->setNextSelectedPositionInt(I)V

    .line 1187
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/CarouselWidget;->calibrateThumb(I)V

    .line 1190
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->requestLayout()V

    goto :goto_0
.end method

.method setDragger(Lcom/htc/fragment/widget/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDragger:Lcom/htc/fragment/widget/DragController;

    .line 402
    return-void
.end method

.method setDrawer(Lcom/htc/fragment/widget/CarouselSlidingDrawer;)V
    .locals 0
    .parameter "drawer"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mDrawer:Lcom/htc/fragment/widget/CarouselSlidingDrawer;

    .line 407
    return-void
.end method

.method setEditorMode(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1261
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselWidget;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setEditorMode(Z)V

    .line 1263
    :cond_0
    return-void
.end method

.method setFragment(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0
    .parameter "carouselFragment"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->carouselFragment:Lcom/htc/fragment/widget/CarouselFragment;

    .line 416
    return-void
.end method

.method public bridge synthetic setGravity(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    return-void
.end method

.method setMemoryMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 350
    iput-boolean p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mMemoryMode:Z

    .line 351
    return-void
.end method

.method public bridge synthetic setSpacing(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    return-void
.end method

.method setStateMode(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1224
    iput p1, p0, Lcom/htc/fragment/widget/CarouselWidget;->mState:I

    .line 1225
    invoke-virtual {p0}, Lcom/htc/fragment/widget/CarouselWidget;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/BinAdapter;

    .line 1226
    .local v0, adapter:Lcom/htc/fragment/widget/BinAdapter;
    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/BinAdapter;->setStateMode(I)V

    .line 1227
    return-void
.end method

.method public bridge synthetic setUnselectedAlpha(F)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    return-void
.end method

.method public bridge synthetic showContextMenu()Z
    .locals 1

    .prologue
    .line 29
    invoke-super {p0}, Lcom/htc/fragment/widget/Gallery;->showContextMenu()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/Gallery;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
