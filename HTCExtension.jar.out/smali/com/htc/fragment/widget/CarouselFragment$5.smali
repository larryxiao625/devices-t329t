.class Lcom/htc/fragment/widget/CarouselFragment$5;
.super Ljava/lang/Object;
.source "CarouselFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/fragment/widget/CarouselFragment;->hideCarouselWithDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselFragment;


# direct methods
.method constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1440
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment$5;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 1442
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1443
    return-void
.end method
