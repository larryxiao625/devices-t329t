.class Lcom/htc/fragment/widget/Gallery;
.super Lcom/htc/fragment/widget/AbsSpinner;
.source "Gallery.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/fragment/widget/Gallery$LayoutParams;,
        Lcom/htc/fragment/widget/Gallery$FlingRunnable;
    }
.end annotation


# static fields
.field static final MODE_ACTIVITY:I = 0x3e9

.field static final MODE_EDITOR:I = 0x3ea

.field private static final SCROLL_TO_FLING_UNCERTAINTY_TIMEOUT:I = 0xfa

.field private static final localLOGV:Z


# instance fields
.field private iconPadding:I

.field private mAnimationDuration:I

.field private mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

.field mDetachCounter:I

.field private mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

.field private mDownTouchPosition:I

.field private mDownTouchView:Landroid/view/View;

.field protected mDragger:Lcom/htc/fragment/widget/DragController;

.field private mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGravity:I

.field private mHighMost:I

.field private mIsFirstScroll:Z

.field private mIsForceStop:Z

.field private mLowMost:I

.field mNeedModify:Z

.field private mOrientationChangedFlag:Z

.field mReorderFrom:I

.field mReorderTo:I

.field private mSelectedChild:Landroid/view/View;

.field private mShouldCallbackDuringFling:Z

.field private mShouldCallbackOnUnselectedItemClick:Z

.field private mShouldStopFling:Z

.field private mSpacing:I

.field protected mState:I

.field private mSuppressSelectionChanged:Z

.field private mUnselectedAlpha:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 159
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 162
    const v0, 0x1010070

    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 163
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput v5, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 61
    const/16 v4, 0x190

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    .line 91
    new-instance v4, Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-direct {v4, p0}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;-><init>(Lcom/htc/fragment/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    .line 97
    new-instance v4, Lcom/htc/fragment/widget/Gallery$1;

    invoke-direct {v4, p0}, Lcom/htc/fragment/widget/Gallery$1;-><init>(Lcom/htc/fragment/widget/Gallery;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    .line 121
    iput-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 126
    iput-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 155
    const/16 v4, 0x3e9

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    .line 763
    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 1765
    iput v7, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    .line 1830
    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    .line 168
    new-instance v4, Landroid/view/GestureDetector;

    invoke-direct {v4, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    .line 169
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, v6}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 171
    sget-object v4, Lcom/android/internal/R$styleable;->Gallery:[I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 174
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 175
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 176
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->setGravity(I)V

    .line 179
    :cond_0
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 181
    .local v1, animationDuration:I
    if-lez v1, :cond_1

    .line 182
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery;->setAnimationDuration(I)V

    .line 185
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 187
    .local v3, spacing:I
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->setSpacing(I)V

    .line 189
    const/high16 v4, 0x3f80

    invoke-virtual {p0, v4}, Lcom/htc/fragment/widget/Gallery;->setUnselectedAlpha(F)V

    .line 191
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 193
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x400

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    .line 194
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    or-int/lit16 v4, v4, 0x800

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mGroupFlags:I

    .line 196
    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setFastScrollEnabled(Z)V

    .line 197
    return-void
.end method

.method static synthetic access$002(Lcom/htc/fragment/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$1100(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$1200(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$1300(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    return v0
.end method

.method static synthetic access$200(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    return v0
.end method

.method static synthetic access$300(Lcom/htc/fragment/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/htc/fragment/widget/Gallery;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    return v0
.end method

.method static synthetic access$402(Lcom/htc/fragment/widget/Gallery;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    return p1
.end method

.method static synthetic access$502(Lcom/htc/fragment/widget/Gallery;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    return v0
.end method

.method static synthetic access$700(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    return v0
.end method

.method static synthetic access$800(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    return v0
.end method

.method static synthetic access$900(Lcom/htc/fragment/widget/Gallery;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    return v0
.end method

.method private calculateLeft(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1077
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getMeasuredWidth()I

    move-result v2

    .line 1078
    .local v2, myWidth:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1080
    .local v1, childWidth:I
    :goto_1
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    div-int/lit8 v4, v4, 0x2

    add-int v0, v3, v4

    .line 1082
    .local v0, childLeft:I
    return v0

    .line 1077
    .end local v0           #childLeft:I
    .end local v1           #childWidth:I
    .end local v2           #myWidth:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v2

    goto :goto_0

    .line 1078
    .restart local v2       #myWidth:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    goto :goto_1
.end method

.method private calculateTop(Landroid/view/View;Z)I
    .locals 6
    .parameter "child"
    .parameter "duringLayout"

    .prologue
    .line 1068
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getMeasuredHeight()I

    move-result v2

    .line 1069
    .local v2, myHeight:I
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 1071
    .local v0, childHeight:I
    :goto_1
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    sub-int v4, v2, v4

    iget-object v5, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .line 1073
    .local v1, childTop:I
    return v1

    .line 1068
    .end local v0           #childHeight:I
    .end local v1           #childTop:I
    .end local v2           #myHeight:I
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v2

    goto :goto_0

    .line 1069
    .restart local v2       #myHeight:I
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private detachOffScreenChildren(Z)V
    .locals 12
    .parameter "toLowEnd"

    .prologue
    .line 660
    const/4 v9, 0x0

    .line 661
    .local v9, start:I
    const/4 v1, 0x0

    .line 663
    .local v1, count:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v8

    .line 664
    .local v8, numChildren:I
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    .line 666
    .local v2, firstPosition:I
    if-eqz p1, :cond_4

    .line 667
    iget-boolean v10, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_3

    .line 668
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    .line 669
    .local v4, galleryLeft:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v8, :cond_0

    .line 670
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 672
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v10

    if-le v10, v4, :cond_2

    .line 722
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    :cond_0
    invoke-virtual {p0, v9, v1}, Lcom/htc/fragment/widget/Gallery;->detachViewsFromParent(II)V

    .line 724
    if-eqz p1, :cond_1

    .line 725
    iget v10, p0, Lcom/htc/fragment/widget/Gallery;->mDetachCounter:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/fragment/widget/Gallery;->mDetachCounter:I

    .line 726
    iget v10, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    add-int/2addr v10, v1

    iput v10, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    .line 728
    :cond_1
    return-void

    .line 675
    .restart local v0       #child:Landroid/view/View;
    .restart local v4       #galleryLeft:I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 676
    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 669
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 680
    .end local v0           #child:Landroid/view/View;
    .end local v4           #galleryLeft:I
    .end local v7           #i:I
    :cond_3
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    .line 681
    .local v6, galleryTop:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_1
    if-ge v7, v8, :cond_0

    .line 682
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 684
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v10

    if-gt v10, v6, :cond_0

    .line 687
    add-int/lit8 v1, v1, 0x1

    .line 688
    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 681
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 693
    .end local v0           #child:Landroid/view/View;
    .end local v6           #galleryTop:I
    .end local v7           #i:I
    :cond_4
    iget-boolean v10, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v10, :cond_5

    .line 694
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v10

    iget v11, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    sub-int v5, v10, v11

    .line 695
    .local v5, galleryRight:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_0

    .line 696
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 698
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v10

    if-lt v10, v5, :cond_0

    .line 701
    move v9, v7

    .line 702
    add-int/lit8 v1, v1, 0x1

    .line 703
    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 695
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 707
    .end local v0           #child:Landroid/view/View;
    .end local v5           #galleryRight:I
    .end local v7           #i:I
    :cond_5
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v10

    iget v11, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    sub-int v3, v10, v11

    .line 708
    .local v3, galleryBottom:I
    add-int/lit8 v7, v8, -0x1

    .restart local v7       #i:I
    :goto_3
    if-ltz v7, :cond_0

    .line 709
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 711
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    if-lt v10, v3, :cond_0

    .line 714
    move v9, v7

    .line 715
    add-int/lit8 v1, v1, 0x1

    .line 716
    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    add-int v11, v2, v7

    invoke-virtual {v10, v11, v0}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 708
    add-int/lit8 v7, v7, -0x1

    goto :goto_3
.end method

.method private dispatchLongPress(Landroid/view/View;IJ)Z
    .locals 7
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1372
    const/4 v6, 0x0

    .line 1374
    .local v6, handled:Z
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    if-eqz v0, :cond_0

    .line 1375
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mOnItemLongClickListener:Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;

    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    move-object v1, p0

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/htc/fragment/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Lcom/htc/fragment/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result v6

    .line 1379
    :cond_0
    if-nez v6, :cond_1

    .line 1380
    new-instance v0, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;-><init>(Landroid/view/View;IJ)V

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    .line 1381
    invoke-super {p0, p0}, Lcom/htc/fragment/widget/AbsSpinner;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v6

    .line 1384
    :cond_1
    if-eqz v6, :cond_2

    .line 1385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->performHapticFeedback(I)Z

    .line 1388
    :cond_2
    return v6
.end method

.method private dispatchUnpress()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1297
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 1298
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1297
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1301
    :cond_0
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->setPressed(Z)V

    .line 1302
    return-void
.end method

.method private fillToGalleryHighEnd()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 919
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mItemCount:I

    .line 920
    .local v5, numItems:I
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 921
    .local v3, itemSpacing:I
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v4

    .line 922
    .local v4, numChildren:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_0

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mRight:I

    iget v8, p0, Lcom/htc/fragment/widget/Gallery;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    sub-int v2, v7, v8

    .line 926
    .local v2, galleryHighEnd:I
    :goto_0
    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 928
    .local v6, prevIterationView:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 929
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    add-int v1, v7, v4

    .line 930
    .local v1, curPosition:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_1

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 937
    .local v0, curLowEndEdge:I
    :goto_1
    if-ge v0, v2, :cond_5

    if-ge v1, v5, :cond_5

    .line 938
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    sub-int v7, v1, v7

    invoke-direct {p0, v1, v7, v0, v9}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v6

    .line 939
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v7

    add-int v0, v7, v3

    .line 940
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 922
    .end local v0           #curLowEndEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryHighEnd:I
    .end local v6           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mBottom:I

    iget v8, p0, Lcom/htc/fragment/widget/Gallery;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    sub-int v2, v7, v8

    goto :goto_0

    .line 930
    .restart local v1       #curPosition:I
    .restart local v2       #galleryHighEnd:I
    .restart local v6       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_1

    .line 932
    .end local v1           #curPosition:I
    :cond_2
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mItemCount:I

    add-int/lit8 v1, v7, -0x1

    .restart local v1       #curPosition:I
    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    .line 933
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    .line 934
    .restart local v0       #curLowEndEdge:I
    :goto_3
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 933
    .end local v0           #curLowEndEdge:I
    :cond_3
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    goto :goto_3

    .line 939
    .restart local v0       #curLowEndEdge:I
    :cond_4
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int v0, v7, v3

    goto :goto_2

    .line 942
    :cond_5
    return-void
.end method

.method private fillToGalleryLowEnd()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 893
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 894
    .local v3, itemSpacing:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    .line 896
    .local v2, galleryLowEnd:I
    :goto_0
    invoke-virtual {p0, v7}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 900
    .local v4, prevIterationView:Landroid/view/View;
    if-eqz v4, :cond_2

    .line 901
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    add-int/lit8 v1, v5, -0x1

    .line 902
    .local v1, curPosition:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 909
    .local v0, curHighEdge:I
    :goto_1
    if-le v0, v2, :cond_5

    if-ltz v1, :cond_5

    .line 910
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    sub-int v5, v1, v5

    invoke-direct {p0, v1, v5, v0, v7}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v4

    .line 911
    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    .line 913
    iget-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int v0, v5, v3

    .line 914
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 894
    .end local v0           #curHighEdge:I
    .end local v1           #curPosition:I
    .end local v2           #galleryLowEnd:I
    .end local v4           #prevIterationView:Landroid/view/View;
    :cond_0
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    goto :goto_0

    .line 902
    .restart local v1       #curPosition:I
    .restart local v2       #galleryLowEnd:I
    .restart local v4       #prevIterationView:Landroid/view/View;
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_1

    .line 904
    .end local v1           #curPosition:I
    :cond_2
    const/4 v1, 0x0

    .line 905
    .restart local v1       #curPosition:I
    iget-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mRight:I

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mLeft:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    sub-int v0, v5, v6

    .line 906
    .restart local v0       #curHighEdge:I
    :goto_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->mShouldStopFling:Z

    goto :goto_1

    .line 905
    .end local v0           #curHighEdge:I
    :cond_3
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mBottom:I

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mTop:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    sub-int v0, v5, v6

    goto :goto_3

    .line 913
    .restart local v0       #curHighEdge:I
    :cond_4
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    sub-int v0, v5, v3

    goto :goto_2

    .line 916
    :cond_5
    return-void
.end method

.method private getHighEndOfGallery()I
    .locals 2

    .prologue
    .line 633
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingRight:I

    sub-int/2addr v0, v1

    .line 636
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingBottom:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private getHighEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 650
    if-nez p1, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 656
    :goto_0
    return v0

    .line 653
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 654
    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    goto :goto_0

    .line 656
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    goto :goto_0
.end method

.method private getLowEndOfGallery()I
    .locals 1

    .prologue
    .line 626
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 627
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    .line 629
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    goto :goto_0
.end method

.method private getLowEndOfView(Landroid/view/View;)I
    .locals 1
    .parameter "view"

    .prologue
    .line 640
    if-nez p1, :cond_0

    .line 641
    const/4 v0, 0x0

    .line 646
    :goto_0
    return v0

    .line 643
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 644
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    goto :goto_0

    .line 646
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_0
.end method

.method private makeAndAddView(IIIZ)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    .line 987
    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->mDataChanged:Z

    if-nez v4, :cond_2

    .line 988
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 989
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 990
    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 992
    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    .line 993
    .local v2, childLowEnd:I
    :goto_0
    iget-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 995
    .local v3, length:I
    :goto_1
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    add-int v5, v2, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    .line 996
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    .line 997
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    move-object v1, v0

    .line 1012
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    .end local v3           #length:I
    .local v1, child:Landroid/view/View;
    :goto_2
    return-object v1

    .line 992
    .end local v1           #child:Landroid/view/View;
    .restart local v0       #child:Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    .line 993
    .restart local v2       #childLowEnd:I
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    goto :goto_1

    .line 1003
    .end local v0           #child:Landroid/view/View;
    .end local v2           #childLowEnd:I
    :cond_2
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1005
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, p1, v0}, Lcom/htc/fragment/widget/Gallery;->setChildLayoutParams(ILandroid/view/View;)V

    .line 1006
    invoke-direct {p0, v0, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery;->setUpChild(Landroid/view/View;IIZ)V

    .line 1008
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    if-ne p1, v4, :cond_3

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v5, 0x3ea

    if-eq v4, v5, :cond_3

    .line 1009
    const v4, 0x2020061

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/htc/fragment/widget/CarouselTextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/htc/fragment/widget/CarouselTextView;->enableBrightScreen(Z)V

    :cond_3
    move-object v1, v0

    .line 1012
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_2
.end method

.method private offsetChildrenLeftAndRight(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 596
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 597
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 596
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 598
    :cond_0
    return-void
.end method

.method private offsetChildrenLowEndAndHighEnd(III)V
    .locals 3
    .parameter "from"
    .parameter "to"
    .parameter "offset"

    .prologue
    .line 611
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p2, v2

    .line 612
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr p1, v2

    .line 614
    add-int/lit8 v1, p2, -0x1

    .local v1, i:I
    :goto_0
    if-lt v1, p1, :cond_2

    .line 615
    invoke-virtual {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 616
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 617
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_1

    .line 618
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 614
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {v0, p3}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_1

    .line 623
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private onFinishedMovement()V
    .locals 1

    .prologue
    .line 775
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_0

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 779
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 781
    :cond_0
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 782
    return-void
.end method

.method private putGalleryThumb()V
    .locals 2

    .prologue
    .line 945
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/FastScroller;->makeThumbView(Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->setUpThumb(Landroid/view/View;)V

    .line 947
    :cond_0
    return-void
.end method

.method private scrollToChild(I)Z
    .locals 1
    .parameter "childPosition"

    .prologue
    .line 1392
    const/4 v0, 0x0

    return v0
.end method

.method private setChildLayoutParams(ILandroid/view/View;)V
    .locals 5
    .parameter "position"
    .parameter "child"

    .prologue
    const/4 v3, 0x1

    .line 1768
    if-nez p2, :cond_0

    .line 1823
    :goto_0
    return-void

    .line 1772
    :cond_0
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    if-gez v1, :cond_1

    .line 1773
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    .line 1775
    :cond_1
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mShrinkedPos:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    .line 1776
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mReducedPos:I

    if-ne p1, v1, :cond_5

    .line 1777
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1778
    .local v0, lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->generateReducedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1780
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1783
    :cond_2
    iget-boolean v1, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    :goto_2
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    goto :goto_1

    :cond_4
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_2

    .line 1788
    .end local v0           #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_5
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mShrinkedPos:I

    if-ne p1, v1, :cond_7

    .line 1789
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1790
    .restart local v0       #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->generateShrinkedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1792
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1795
    :cond_6
    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1796
    .end local v0           #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_7
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mExpandedPos:I

    if-ne p1, v1, :cond_b

    .line 1797
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1798
    .restart local v0       #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->generateExpandedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1800
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1802
    :cond_8
    iget-boolean v1, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v2

    sub-int/2addr v1, v2

    :goto_3
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_a

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    :goto_4
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    :cond_9
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    goto :goto_3

    :cond_a
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedHeight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_4

    .line 1808
    .end local v0           #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1809
    .restart local v0       #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1811
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1813
    :cond_c
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0

    .line 1816
    .end local v0           #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1817
    .restart local v0       #lp:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1819
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1821
    :cond_e
    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->iconPadding:I

    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private setUpChild(Landroid/view/View;IIZ)V
    .locals 11
    .parameter "child"
    .parameter "offset"
    .parameter "xy"
    .parameter "fromLowEnd"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1016
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1018
    .local v6, lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 1019
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 1021
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_0
    if-eqz p4, :cond_2

    const/4 v7, -0x1

    :goto_0
    invoke-virtual {p0, p1, v7, v6}, Lcom/htc/fragment/widget/Gallery;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 1022
    if-nez p2, :cond_1

    move v8, v9

    :cond_1
    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 1024
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v10

    iget v10, v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 1026
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v10

    iget v10, v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    invoke-static {v7, v8, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 1029
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1034
    if-eqz p4, :cond_4

    .line 1035
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_3

    .line 1036
    move v2, p3

    .line 1037
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1039
    .local v3, childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1040
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 1064
    .local v0, childBottom:I
    :goto_1
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 1065
    return-void

    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    :cond_2
    move v7, v8

    .line 1021
    goto :goto_0

    .line 1042
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    :cond_3
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1043
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1045
    .restart local v3       #childRight:I
    move v4, p3

    .line 1046
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1049
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_4
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_5

    .line 1050
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v2, p3, v7

    .line 1051
    .restart local v2       #childLeft:I
    move v3, p3

    .line 1053
    .restart local v3       #childRight:I
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 1054
    .restart local v4       #childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .restart local v0       #childBottom:I
    goto :goto_1

    .line 1056
    .end local v0           #childBottom:I
    .end local v2           #childLeft:I
    .end local v3           #childRight:I
    .end local v4           #childTop:I
    :cond_5
    invoke-direct {p0, p1, v9}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 1057
    .restart local v2       #childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 1059
    .restart local v3       #childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v4, p3, v7

    .line 1060
    .restart local v4       #childTop:I
    move v0, p3

    .restart local v0       #childBottom:I
    goto :goto_1
.end method

.method private updateSelectedItemMetadata()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1405
    iget-object v1, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1407
    .local v1, oldSelectedChild:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    .line 1408
    .local v0, child:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1431
    :cond_0
    :goto_0
    return-void

    .line 1412
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 1413
    invoke-virtual {v0, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 1415
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1416
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 1421
    :cond_2
    if-eqz v1, :cond_0

    .line 1424
    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1428
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method calibrateThumb(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 980
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->isEditorMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->calibrateThumb(I)V

    .line 982
    :cond_0
    return-void
.end method

.method cancelAnimation()V
    .locals 0

    .prologue
    .line 1827
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->cancelAnimation()V

    .line 1828
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 325
    instance-of v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    return v0
.end method

.method protected computeHorizontalScrollExtent()I
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 316
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mItemCount:I

    return v0
.end method

.method protected dispatchSetPressed(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1326
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setPressed(Z)V

    .line 1328
    :cond_0
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 1315
    return-void
.end method

.method public forceStopPartialFling()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 769
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 770
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 771
    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery;->mIsForceStop:Z

    .line 772
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 353
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 354
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 356
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 396
    if-nez p1, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 404
    .restart local p1
    :goto_0
    return v4

    .line 400
    :cond_0
    iget v1, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 401
    .local v1, w:I
    iget v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 402
    .local v0, h:I
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v2

    :goto_1
    iput v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 403
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    :goto_2
    iput v3, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 404
    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    if-eq v0, v2, :cond_4

    :cond_1
    move v2, v4

    :goto_3
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 402
    goto :goto_1

    .line 403
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v3

    goto :goto_2

    .line 404
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 375
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 376
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateExpandedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 422
    if-nez p1, :cond_0

    .line 423
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateExpandedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 430
    .restart local p1
    :goto_0
    return v4

    .line 426
    :cond_0
    iget v1, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 427
    .local v1, w:I
    iget v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 428
    .local v0, h:I
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedWidth()I

    move-result v2

    :goto_1
    iput v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 429
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    :goto_2
    iput v3, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 430
    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    if-eq v0, v2, :cond_4

    :cond_1
    move v2, v4

    :goto_3
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 428
    goto :goto_1

    .line 429
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getExpandedHeight()I

    move-result v3

    goto :goto_2

    .line 430
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 343
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 334
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-direct {v0, p1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 386
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 389
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateReducedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 435
    if-nez p1, :cond_0

    .line 436
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateReducedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 443
    .restart local p1
    :goto_0
    return v4

    .line 439
    :cond_0
    iget v1, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 440
    .local v1, w:I
    iget v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 441
    .local v0, h:I
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedWidth()I

    move-result v2

    :goto_1
    iput v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 442
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    :goto_2
    iput v3, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 443
    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    if-eq v0, v2, :cond_4

    :cond_1
    move v2, v4

    :goto_3
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 441
    goto :goto_1

    .line 442
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getReducedHeight()I

    move-result v3

    goto :goto_2

    .line 443
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 364
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedWidth()I

    move-result v1

    invoke-direct {v0, v1, v2}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    .line 367
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedHeight()I

    move-result v1

    invoke-direct {v0, v2, v1}, Lcom/htc/fragment/widget/Gallery$LayoutParams;-><init>(II)V

    goto :goto_0
.end method

.method protected generateShrinkedLayoutParams(Lcom/htc/fragment/widget/Gallery$LayoutParams;)Z
    .locals 5
    .parameter "lp"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 409
    if-nez p1, :cond_0

    .line 410
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateShrinkedLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 417
    .restart local p1
    :goto_0
    return v4

    .line 413
    :cond_0
    iget v1, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 414
    .local v1, w:I
    iget v0, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 415
    .local v0, h:I
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedWidth()I

    move-result v2

    :goto_1
    iput v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    .line 416
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    :goto_2
    iput v3, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    .line 417
    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    if-ne v1, v2, :cond_1

    iget v2, p1, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    if-eq v0, v2, :cond_4

    :cond_1
    move v2, v4

    :goto_3
    move v4, v2

    goto :goto_0

    :cond_2
    move v2, v3

    .line 415
    goto :goto_1

    .line 416
    :cond_3
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getShrinkedHeight()I

    move-result v3

    goto :goto_2

    .line 417
    :cond_4
    const/4 v2, 0x0

    goto :goto_3
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 1457
    return p2
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 467
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 1
    .parameter "child"
    .parameter "t"

    .prologue
    .line 283
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 284
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f80

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 286
    const/4 v0, 0x1

    return v0

    .line 284
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mUnselectedAlpha:F

    goto :goto_0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .parameter "child"

    .prologue
    .line 472
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mContextMenuInfo:Lcom/htc/fragment/widget/AdapterView$AdapterContextMenuInfo;

    return-object v0
.end method

.method getLimitedMotionScrollAmount(ZI)I
    .locals 8
    .parameter "motionToLowEnd"
    .parameter "delta"

    .prologue
    const/4 v5, 0x0

    .line 561
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->isPartialFling()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    move v5, p2

    .line 588
    :cond_0
    :goto_0
    return v5

    .line 564
    :cond_1
    if-eqz p1, :cond_2

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mItemCount:I

    add-int/lit8 v3, v6, -0x1

    .line 565
    .local v3, extremeItemPosition:I
    :goto_1
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int v6, v3, v6

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 567
    .local v1, extremeChild:Landroid/view/View;
    if-nez v1, :cond_3

    move v5, p2

    .line 568
    goto :goto_0

    .end local v1           #extremeChild:Landroid/view/View;
    .end local v3           #extremeItemPosition:I
    :cond_2
    move v3, v5

    .line 564
    goto :goto_1

    .line 571
    .restart local v1       #extremeChild:Landroid/view/View;
    .restart local v3       #extremeItemPosition:I
    :cond_3
    if-eqz p1, :cond_5

    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfView(Landroid/view/View;)I

    move-result v2

    .line 573
    .local v2, extremeChildBound:I
    :goto_2
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getDragBinGridView()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 574
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfGallery()I

    move-result v7

    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsWidth()I

    move-result v6

    :goto_3
    sub-int v4, v7, v6

    .line 578
    .local v4, galleryBound:I
    :goto_4
    if-eqz p1, :cond_a

    .line 579
    if-le v2, v4, :cond_0

    .line 586
    :cond_4
    sub-int v0, v4, v2

    .line 588
    .local v0, boundDifference:I
    if-eqz p1, :cond_b

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_0

    .line 571
    .end local v0           #boundDifference:I
    .end local v2           #extremeChildBound:I
    .end local v4           #galleryBound:I
    :cond_5
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfView(Landroid/view/View;)I

    move-result v2

    goto :goto_2

    .line 574
    .restart local v2       #extremeChildBound:I
    :cond_6
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getLayoutParamsHeight()I

    move-result v6

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfGallery()I

    move-result v4

    goto :goto_4

    .line 576
    :cond_8
    if-eqz p1, :cond_9

    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getHighEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mHighBorder:I

    sub-int v4, v6, v7

    .restart local v4       #galleryBound:I
    :goto_5
    goto :goto_4

    .end local v4           #galleryBound:I
    :cond_9
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->getLowEndOfGallery()I

    move-result v6

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mLowBorder:I

    add-int v4, v6, v7

    goto :goto_5

    .line 582
    .restart local v4       #galleryBound:I
    :cond_a
    if-lt v2, v4, :cond_4

    goto :goto_0

    .line 588
    .restart local v0       #boundDifference:I
    :cond_b
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    goto :goto_0
.end method

.method layout(IZ)V
    .locals 10
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v9, 0x0

    .line 795
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1

    .line 796
    const/4 v5, 0x0

    .line 797
    .local v5, width:I
    const/4 v2, 0x0

    .line 800
    .local v2, height:I
    invoke-virtual {p0, v9}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 802
    .local v1, firstChild:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_3

    .line 803
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mLowBorder:I

    add-int v0, v6, v7

    .line 804
    .local v0, childrenLow:I
    iput v0, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 811
    :goto_0
    if-eqz v1, :cond_6

    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    if-nez v6, :cond_6

    .line 812
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_4

    .line 813
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 817
    :goto_1
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 818
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 820
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_0

    .line 821
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_5

    .line 822
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 829
    :cond_0
    :goto_2
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_7

    .line 830
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    if-le v6, v0, :cond_1

    .line 831
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    sub-int/2addr v6, v5

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 838
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_1
    :goto_3
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->mDataChanged:Z

    if-eqz v6, :cond_2

    .line 839
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->handleDataChanged()V

    .line 841
    :cond_2
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mItemCount:I

    if-nez v6, :cond_8

    .line 842
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->resetList()V

    .line 890
    :goto_4
    return-void

    .line 806
    .restart local v1       #firstChild:Landroid/view/View;
    .restart local v2       #height:I
    .restart local v5       #width:I
    :cond_3
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mLowBorder:I

    add-int v0, v6, v7

    .line 807
    .restart local v0       #childrenLow:I
    iput v0, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    goto :goto_0

    .line 815
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    goto :goto_1

    .line 824
    :cond_5
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    goto :goto_2

    .line 827
    :cond_6
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    goto :goto_2

    .line 833
    :cond_7
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    if-le v6, v0, :cond_1

    .line 834
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    sub-int/2addr v6, v2

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    goto :goto_3

    .line 846
    .end local v0           #childrenLow:I
    .end local v1           #firstChild:Landroid/view/View;
    .end local v2           #height:I
    .end local v5           #width:I
    :cond_8
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mNextSelectedPosition:I

    if-ltz v6, :cond_9

    .line 847
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mNextSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setSelectedPositionInt(I)V

    .line 849
    :cond_9
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->recycleAllViews()V

    .line 850
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->detachAllViewsFromParent()V

    .line 852
    iput v9, p0, Lcom/htc/fragment/widget/Gallery;->mLowMost:I

    .line 853
    iput v9, p0, Lcom/htc/fragment/widget/Gallery;->mHighMost:I

    .line 855
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v6, :cond_a

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mState:I

    const/16 v7, 0x3e9

    if-ne v6, v7, :cond_a

    .line 856
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisiblePosition()I

    move-result v6

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    .line 858
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_c

    .line 859
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 864
    :cond_a
    :goto_5
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    iget v8, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    sub-int/2addr v7, v8

    const/4 v8, 0x1

    invoke-direct {p0, v6, v7, v9, v8}, Lcom/htc/fragment/widget/Gallery;->makeAndAddView(IIIZ)Landroid/view/View;

    move-result-object v3

    .line 866
    .local v3, sel:Landroid/view/View;
    iget-boolean v6, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v6, :cond_d

    .line 867
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemX:I

    .line 868
    .local v4, selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 874
    :goto_6
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 875
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    .line 876
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 878
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 879
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v6, :cond_b

    .line 880
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->clearCache()V

    .line 882
    :cond_b
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 883
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->checkSelectionChanged()V

    .line 885
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mNeedSync:Z

    .line 886
    iput-boolean v9, p0, Lcom/htc/fragment/widget/Gallery;->mDataChanged:Z

    .line 887
    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    invoke-virtual {p0, v6}, Lcom/htc/fragment/widget/Gallery;->setNextSelectedPositionInt(I)V

    .line 889
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->updateSelectedItemMetadata()V

    goto/16 :goto_4

    .line 861
    .end local v3           #sel:Landroid/view/View;
    .end local v4           #selectedOffset:I
    :cond_c
    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mLowBorder:I

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v7}, Lcom/htc/fragment/widget/FastScroller;->getFirstVisibleOffset()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    goto :goto_5

    .line 870
    .restart local v3       #sel:Landroid/view/View;
    :cond_d
    iget v4, p0, Lcom/htc/fragment/widget/Gallery;->mFirstItemY:I

    .line 871
    .restart local v4       #selectedOffset:I
    invoke-virtual {v3, v4}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6
.end method

.method public offsetChildrenTopAndBottom(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 606
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 605
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 607
    :cond_0
    return-void
.end method

.method protected onAnimationEnd()V
    .locals 0

    .prologue
    .line 593
    return-void
.end method

.method onCancel()V
    .locals 0

    .prologue
    .line 1240
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onUp()V

    .line 1241
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1200
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, v3}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->stop(Z)V

    .line 1203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/htc/fragment/widget/Gallery;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    .line 1205
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_1

    .line 1206
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1208
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1211
    :cond_0
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1212
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 1213
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1217
    :cond_1
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    .line 1220
    return v2
.end method

.method onDrawerClosed(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 1752
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1753
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/FastScroller;->setCurrentThumb(I)V

    .line 1754
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->showThumb()V

    .line 1756
    :cond_0
    return-void
.end method

.method onDrawerOpened()V
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/FastScroller;->closeThumb()V

    .line 1762
    :cond_0
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x1

    .line 1144
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_0

    .line 1145
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1147
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1148
    iput-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1151
    :cond_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_1

    .line 1152
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    neg-float v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    .line 1156
    :goto_0
    return v2

    .line 1154
    :cond_1
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    neg-float v1, p4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingVelocity(I)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1466
    invoke-super {p0, p1, p2, p3}, Lcom/htc/fragment/widget/AbsSpinner;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1473
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1474
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedChild:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 1477
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 453
    invoke-super/range {p0 .. p5}, Lcom/htc/fragment/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 459
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mInLayout:Z

    .line 460
    invoke-virtual {p0, v1, v1}, Lcom/htc/fragment/widget/Gallery;->layout(IZ)V

    .line 461
    iput-boolean v1, p0, Lcom/htc/fragment/widget/Gallery;->mInLayout:Z

    .line 462
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "e"

    .prologue
    .line 1252
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-gez v0, :cond_0

    .line 1261
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1164
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1166
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    if-nez v0, :cond_2

    .line 1167
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    if-eqz v0, :cond_1

    .line 1168
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 1169
    iput-boolean v3, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDisableSuppressSelectionChangedRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa

    invoke-virtual {p0, v0, v1, v2}, Lcom/htc/fragment/widget/Gallery;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1178
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v0, :cond_3

    .line 1179
    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    .line 1183
    :goto_1
    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->mIsFirstScroll:Z

    .line 1185
    return v3

    .line 1174
    :cond_2
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-eqz v0, :cond_1

    .line 1175
    iput-boolean v4, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    goto :goto_0

    .line 1181
    :cond_3
    neg-float v0, p4

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "e"

    .prologue
    const/4 v3, 0x0

    .line 1274
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-gez v2, :cond_0

    .line 1293
    :goto_0
    return-void

    .line 1278
    :cond_0
    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->performHapticFeedback(I)Z

    .line 1279
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 1282
    .local v0, id:J
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1283
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 1284
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1285
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1287
    :cond_1
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    .line 1288
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setPressed(Z)V

    .line 1289
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    .line 1291
    :cond_2
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-direct {p0, v2, v3, v0, v1}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "e"

    .prologue
    .line 1121
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    if-ltz v0, :cond_2

    .line 1124
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery;->scrollToChild(I)Z

    .line 1127
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    if-ne v0, v1, :cond_1

    .line 1128
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    iget v1, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchPosition:I

    invoke-interface {v2, v3}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/htc/fragment/widget/Gallery;->performItemClick(Landroid/view/View;IJ)Z

    .line 1132
    :cond_1
    const/4 v0, 0x1

    .line 1135
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 1092
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    if-eqz v4, :cond_1

    .line 1093
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v4, p1}, Lcom/htc/fragment/widget/FastScroller;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 1094
    .local v1, intercepted:Z
    if-eqz v1, :cond_1

    move v2, v3

    .line 1109
    .end local v1           #intercepted:Z
    :cond_0
    :goto_0
    return v2

    .line 1099
    :cond_1
    iget-object v4, p0, Lcom/htc/fragment/widget/Gallery;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 1101
    .local v2, retValue:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1102
    .local v0, action:I
    if-ne v0, v3, :cond_2

    .line 1104
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onUp()V

    goto :goto_0

    .line 1105
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->onCancel()V

    goto :goto_0
.end method

.method onUp()V
    .locals 2

    .prologue
    .line 1228
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 1230
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mDownTouchView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 1233
    :cond_0
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->dispatchUnpress()V

    .line 1234
    return-void
.end method

.method public partialFling(III)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"

    .prologue
    .line 760
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/htc/fragment/widget/Gallery;->partialFling(IIIZ)V

    .line 761
    return-void
.end method

.method public partialFling(IIIZ)V
    .locals 1
    .parameter "from"
    .parameter "to"
    .parameter "scrollAmount"
    .parameter "isRequiredFill"

    .prologue
    .line 750
    if-eqz p3, :cond_0

    .line 751
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startPartialUsingDistance(IIIZ)V

    .line 753
    :cond_0
    return-void
.end method

.method public scrollBy(I)V
    .locals 1
    .parameter "scrollAmount"

    .prologue
    .line 740
    if-eqz p1, :cond_0

    .line 741
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    invoke-virtual {v0, p1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->startUsingDistance(I)V

    .line 743
    :cond_0
    return-void
.end method

.method scrollTo(I)V
    .locals 7
    .parameter "delta"

    .prologue
    .line 484
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 487
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 489
    .local v0, firstChild:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 490
    iget-boolean v5, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v5, :cond_2

    .line 491
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 492
    .local v2, itemWidth:I
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    mul-int/2addr v5, v2

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingLeft:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v3, v5, v6

    .line 493
    .local v3, previousDeltax:I
    sub-int v5, v3, p1

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0

    .line 495
    .end local v2           #itemWidth:I
    .end local v3           #previousDeltax:I
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 496
    .local v1, itemHeight:I
    iget v5, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    mul-int/2addr v5, v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/htc/fragment/widget/Gallery;->mPaddingTop:I

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/htc/fragment/widget/Gallery;->mFastScroller:Lcom/htc/fragment/widget/FastScroller;

    invoke-virtual {v6}, Lcom/htc/fragment/widget/FastScroller;->getOffset()I

    move-result v6

    add-int v4, v5, v6

    .line 497
    .local v4, previousDeltay:I
    sub-int v5, v4, p1

    invoke-virtual {p0, v5}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    goto :goto_0
.end method

.method selectionChanged()V
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/htc/fragment/widget/Gallery;->mSuppressSelectionChanged:Z

    if-nez v0, :cond_0

    .line 787
    invoke-super {p0}, Lcom/htc/fragment/widget/AbsSpinner;->selectionChanged()V

    .line 789
    :cond_0
    return-void
.end method

.method public setAnimationDuration(I)V
    .locals 0
    .parameter "animationDurationMillis"

    .prologue
    .line 243
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mAnimationDuration:I

    .line 244
    return-void
.end method

.method public setCallbackDuringFling(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 213
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackDuringFling:Z

    .line 214
    return-void
.end method

.method public setCallbackOnUnselectedItemClick(Z)V
    .locals 0
    .parameter "shouldCallback"

    .prologue
    .line 226
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mShouldCallbackOnUnselectedItemClick:Z

    .line 227
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 1445
    iget v0, p0, Lcom/htc/fragment/widget/Gallery;->mGravity:I

    if-eq v0, p1, :cond_0

    .line 1446
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mGravity:I

    .line 1447
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->requestLayout()V

    .line 1449
    :cond_0
    return-void
.end method

.method setOrientationChangedFlag(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 1833
    iput-boolean p1, p0, Lcom/htc/fragment/widget/Gallery;->mOrientationChangedFlag:Z

    .line 1834
    return-void
.end method

.method setSelectedPositionInt(I)V
    .locals 0
    .parameter "position"

    .prologue
    .line 1397
    invoke-super {p0, p1}, Lcom/htc/fragment/widget/AbsSpinner;->setSelectedPositionInt(I)V

    .line 1400
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->updateSelectedItemMetadata()V

    .line 1401
    return-void
.end method

.method setSelectionFromTop(II)V
    .locals 5
    .parameter "position"
    .parameter "xy"

    .prologue
    .line 1481
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v3, :cond_0

    .line 1498
    :goto_0
    return-void

    .line 1484
    :cond_0
    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int v1, v3, p1

    .line 1486
    .local v1, delta:I
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1487
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1490
    iget-boolean v3, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v3, :cond_2

    .line 1491
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .line 1495
    .local v2, distance:I
    :goto_1
    invoke-virtual {p0, v2}, Lcom/htc/fragment/widget/Gallery;->trackMotionScroll(I)V

    .line 1497
    .end local v2           #distance:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery;->setSelection(I)V

    goto :goto_0

    .line 1493
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    mul-int v2, v1, v3

    .restart local v2       #distance:I
    goto :goto_1
.end method

.method public setSpacing(I)V
    .locals 0
    .parameter "spacing"

    .prologue
    .line 258
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mSpacing:I

    .line 259
    return-void
.end method

.method public setUnselectedAlpha(F)V
    .locals 0
    .parameter "unselectedAlpha"

    .prologue
    .line 273
    iput p1, p0, Lcom/htc/fragment/widget/Gallery;->mUnselectedAlpha:F

    .line 274
    return-void
.end method

.method setUpThumb(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 950
    if-eqz p1, :cond_1

    .line 951
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 953
    .local v6, lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    if-nez v6, :cond_0

    .line 954
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    check-cast v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;

    .line 956
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_0
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mHeightMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v8, v9

    iget v9, v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;->height:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 958
    .local v1, childHeightSpec:I
    iget v7, p0, Lcom/htc/fragment/widget/Gallery;->mWidthMeasureSpec:I

    iget-object v8, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/htc/fragment/widget/Gallery;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int/2addr v8, v9

    iget v9, v6, Lcom/htc/fragment/widget/Gallery$LayoutParams;->width:I

    invoke-static {v7, v8, v9}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 961
    .local v5, childWidthSpec:I
    iget-boolean v7, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v7, :cond_2

    .line 962
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 964
    invoke-direct {p0, p1, v11}, Lcom/htc/fragment/widget/Gallery;->calculateTop(Landroid/view/View;Z)I

    move-result v4

    .line 965
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int v0, v4, v7

    .line 966
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {p1, v10, v4, v7, v0}, Landroid/view/View;->layout(IIII)V

    .line 977
    .end local v0           #childBottom:I
    .end local v1           #childHeightSpec:I
    .end local v4           #childTop:I
    .end local v5           #childWidthSpec:I
    .end local v6           #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_1
    :goto_0
    return-void

    .line 968
    .restart local v1       #childHeightSpec:I
    .restart local v5       #childWidthSpec:I
    .restart local v6       #lparams:Lcom/htc/fragment/widget/Gallery$LayoutParams;
    :cond_2
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 970
    invoke-direct {p0, p1, v11}, Lcom/htc/fragment/widget/Gallery;->calculateLeft(Landroid/view/View;Z)I

    move-result v2

    .line 971
    .local v2, childLeft:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v3, v2, v7

    .line 972
    .local v3, childRight:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p1, v2, v10, v3, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public showContextMenu()Z
    .locals 5

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->isPressed()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    if-ltz v2, :cond_0

    .line 1363
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    iget v3, p0, Lcom/htc/fragment/widget/Gallery;->mFirstPosition:I

    sub-int v0, v2, v3

    .line 1364
    .local v0, index:I
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1365
    .local v1, v:Landroid/view/View;
    iget v2, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedPosition:I

    iget-wide v3, p0, Lcom/htc/fragment/widget/Gallery;->mSelectedRowId:J

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v2

    .line 1368
    .end local v0           #index:I
    .end local v1           #v:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 4
    .parameter "originalView"

    .prologue
    .line 1346
    invoke-virtual {p0, p1}, Lcom/htc/fragment/widget/Gallery;->getPositionForView(Landroid/view/View;)I

    move-result v2

    .line 1347
    .local v2, longPressPosition:I
    if-gez v2, :cond_0

    .line 1348
    const/4 v3, 0x0

    .line 1352
    :goto_0
    return v3

    .line 1351
    :cond_0
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3, v2}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    .line 1352
    .local v0, longPressId:J
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/htc/fragment/widget/Gallery;->dispatchLongPress(Landroid/view/View;IJ)Z

    move-result v3

    goto :goto_0
.end method

.method stopFlingRunnable()V
    .locals 2

    .prologue
    .line 478
    iget-object v0, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    const/4 v1, 0x0

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v0, v1}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 479
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 480
    return-void
.end method

.method trackMotionScroll(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const/4 v2, 0x0

    .line 503
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 531
    :goto_0
    return-void

    .line 506
    :cond_0
    if-gez p1, :cond_2

    const/4 v1, 0x1

    .line 508
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p1}, Lcom/htc/fragment/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 509
    .local v0, limitedDelta:I
    if-eq v0, p1, :cond_1

    .line 510
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 511
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 514
    :cond_1
    iget-boolean v2, p0, Lcom/htc/fragment/widget/Gallery;->isPortrait:Z

    if-eqz v2, :cond_3

    .line 515
    invoke-direct {p0, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenLeftAndRight(I)V

    .line 519
    :goto_2
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 521
    if-eqz v1, :cond_4

    .line 522
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 526
    :goto_3
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 528
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    .line 529
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 530
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invokeOnItemScrollListener()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_2
    move v1, v2

    .line 506
    goto :goto_1

    .line 517
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_3
    invoke-virtual {p0, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenTopAndBottom(I)V

    goto :goto_2

    .line 524
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_3
.end method

.method trackMotionScroll(IIIZ)V
    .locals 4
    .parameter "from"
    .parameter "to"
    .parameter "delta"
    .parameter "isRequiredFill"

    .prologue
    const/4 v2, 0x0

    .line 534
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 558
    :goto_0
    return-void

    .line 537
    :cond_0
    if-gez p3, :cond_3

    const/4 v1, 0x1

    .line 539
    .local v1, toLowEnd:Z
    :goto_1
    invoke-virtual {p0, v1, p3}, Lcom/htc/fragment/widget/Gallery;->getLimitedMotionScrollAmount(ZI)I

    move-result v0

    .line 540
    .local v0, limitedDelta:I
    if-eq v0, p3, :cond_1

    .line 541
    iget-object v3, p0, Lcom/htc/fragment/widget/Gallery;->mFlingRunnable:Lcom/htc/fragment/widget/Gallery$FlingRunnable;

    #calls: Lcom/htc/fragment/widget/Gallery$FlingRunnable;->endFling(Z)V
    invoke-static {v3, v2}, Lcom/htc/fragment/widget/Gallery$FlingRunnable;->access$100(Lcom/htc/fragment/widget/Gallery$FlingRunnable;Z)V

    .line 542
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->onFinishedMovement()V

    .line 545
    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/fragment/widget/Gallery;->offsetChildrenLowEndAndHighEnd(III)V

    .line 546
    invoke-direct {p0, v1}, Lcom/htc/fragment/widget/Gallery;->detachOffScreenChildren(Z)V

    .line 548
    if-eqz p4, :cond_2

    .line 549
    if-eqz v1, :cond_4

    .line 550
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryHighEnd()V

    .line 555
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->putGalleryThumb()V

    .line 556
    iget-object v2, p0, Lcom/htc/fragment/widget/Gallery;->mRecycler:Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2}, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->clear()V

    .line 557
    invoke-virtual {p0}, Lcom/htc/fragment/widget/Gallery;->invalidate()V

    goto :goto_0

    .end local v0           #limitedDelta:I
    .end local v1           #toLowEnd:Z
    :cond_3
    move v1, v2

    .line 537
    goto :goto_1

    .line 552
    .restart local v0       #limitedDelta:I
    .restart local v1       #toLowEnd:Z
    :cond_4
    invoke-direct {p0}, Lcom/htc/fragment/widget/Gallery;->fillToGalleryLowEnd()V

    goto :goto_2
.end method
