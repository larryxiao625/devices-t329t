.class Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;
.super Ljava/lang/Object;
.source "CarouselFragment.java"

# interfaces
.implements Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerOpenListener;
.implements Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerScrollListener;
.implements Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnDrawerCloseListener;
.implements Lcom/htc/fragment/widget/CarouselSlidingDrawer$OnEditModeDrawerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/fragment/widget/CarouselFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditModeDrawerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/fragment/widget/CarouselFragment;


# direct methods
.method private constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1270
    iput-object p1, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/fragment/widget/CarouselFragment;Lcom/htc/fragment/widget/CarouselFragment$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1270
    invoke-direct {p0, p1}, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;-><init>(Lcom/htc/fragment/widget/CarouselFragment;)V

    return-void
.end method


# virtual methods
.method public onDrawerAboutToOpen()V
    .locals 1

    .prologue
    .line 1318
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditDrawerAboutToOpen()V

    .line 1319
    return-void
.end method

.method public onDrawerClosed()V
    .locals 1

    .prologue
    .line 1307
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselFragment;->access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1308
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselFragment;->access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;->onExit()V

    .line 1309
    :cond_0
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditDrawerClosed()V

    .line 1310
    return-void
.end method

.method public onDrawerCompleteClose()V
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditDrawerCompleteClose()V

    .line 1328
    return-void
.end method

.method public onDrawerOpened()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditDrawerOpened()V

    .line 1281
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselFragment;->access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1282
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    #getter for: Lcom/htc/fragment/widget/CarouselFragment;->editModeListener:Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;
    invoke-static {v0}, Lcom/htc/fragment/widget/CarouselFragment;->access$400(Lcom/htc/fragment/widget/CarouselFragment;)Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/htc/fragment/widget/CarouselFragment$EditModeListener;->onEnter()V

    .line 1283
    :cond_0
    return-void
.end method

.method public onScrollEnded()V
    .locals 1

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditScrollEnded()V

    .line 1291
    return-void
.end method

.method public onScrollStarted()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/htc/fragment/widget/CarouselFragment$EditModeDrawerListener;->this$0:Lcom/htc/fragment/widget/CarouselFragment;

    invoke-virtual {v0}, Lcom/htc/fragment/widget/CarouselFragment;->onEditScrollStarted()V

    .line 1299
    return-void
.end method
