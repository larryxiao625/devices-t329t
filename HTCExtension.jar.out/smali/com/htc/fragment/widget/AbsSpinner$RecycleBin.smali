.class Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;
.super Ljava/lang/Object;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/AbsSpinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecycleBin"
.end annotation


# instance fields
.field private final mScrapHeap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/htc/fragment/widget/AbsSpinner;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/AbsSpinner;)V
    .locals 1
    .parameter

    .prologue
    .line 622
    iput-object p1, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 623
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 6

    .prologue
    .line 646
    iget-object v2, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    .line 647
    .local v2, scrapHeap:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/view/View;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 648
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 649
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 650
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 651
    iget-object v4, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->this$0:Lcom/htc/fragment/widget/AbsSpinner;

    const/4 v5, 0x1

    #calls: Lcom/htc/fragment/widget/AbsSpinner;->removeDetachedView(Landroid/view/View;Z)V
    invoke-static {v4, v3, v5}, Lcom/htc/fragment/widget/AbsSpinner;->access$100(Lcom/htc/fragment/widget/AbsSpinner;Landroid/view/View;Z)V

    .line 648
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v3           #view:Landroid/view/View;
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 655
    return-void
.end method

.method get(I)Landroid/view/View;
    .locals 2
    .parameter "position"

    .prologue
    .line 635
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 636
    .local v0, result:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 638
    iget-object v1, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 642
    :cond_0
    return-object v0
.end method

.method public put(ILandroid/view/View;)V
    .locals 1
    .parameter "position"
    .parameter "v"

    .prologue
    .line 630
    iget-object v0, p0, Lcom/htc/fragment/widget/AbsSpinner$RecycleBin;->mScrapHeap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 631
    return-void
.end method
