.class Landroid/widget/TextView$SelectionStartHandleView;
.super Landroid/widget/TextView$HandleView;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionStartHandleView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    .line 11215
    iput-object p1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    .line 11216
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView$HandleView;-><init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11217
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->mCursorType:I

    .line 11218
    return-void
.end method


# virtual methods
.method public getActionPopupWindow()Landroid/widget/TextView$ActionPopupWindow;
    .locals 1

    .prologue
    .line 11346
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    return-object v0
.end method

.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 11294
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    return v0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .parameter "drawable"
    .parameter "isRtlRun"

    .prologue
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method protected isVisible()Z
    .locals 6

    .prologue
    .line 11306
    iget v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionX:I

    .line 11307
    .local v1, positionX:I
    iget v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11309
    .local v2, positionY:I
    iget-object v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v5}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11310
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11311
    invoke-super {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v3

    .line 11313
    .local v3, result:Z
    iput v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionX:I

    .line 11314
    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11316
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 11373
    invoke-super {p0, p1}, Landroid/widget/TextView$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 11375
    .local v0, result:Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 11388
    :goto_0
    return v0

    .line 11377
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismissActionPopupWindow()V

    goto :goto_0

    .line 11380
    :pswitch_1
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    iget v2, p0, Landroid/widget/TextView$HandleView;->mCursorType:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView$ActionPopupWindow;->updatePositionFlag(I)V

    .line 11381
    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {p0, v1}, Landroid/widget/TextView$HandleView;->showActionPopupWindow(I)V

    goto :goto_0

    .line 11375
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)Z
    .locals 4
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    .line 11321
    invoke-super {p0, p1, p2}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11322
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mTextSelectHandleRes:I
    invoke-static {v3}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11323
    .local v0, handle:Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 11324
    .local v1, line:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11327
    iget v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    iget-object v3, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v3}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->mPositionY:I

    .line 11328
    const/4 v2, 0x1

    .line 11330
    .end local v0           #handle:Landroid/graphics/drawable/Drawable;
    .end local v1           #line:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 11336
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, p1, p2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v0

    .line 11339
    .local v0, offset:I
    iget-object v2, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 11340
    .local v1, selectionEnd:I
    if-lt v0, v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_0
    invoke-virtual {p0, v0, v3}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)Z

    return-void
.end method

.method public updateSelection(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 11299
    iget-object v0, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mText:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/widget/TextView;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/TextView$SelectionStartHandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 11300
    invoke-virtual {p0}, Landroid/widget/TextView$SelectionStartHandleView;->updateDrawable()V

    .line 11301
    return-void
.end method
