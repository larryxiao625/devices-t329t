.class Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;
.super Ljava/lang/Object;
.source "FilePickerListAdapter.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/app/FilePickerListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FlatModeMultiChoiceModeCallback"
.end annotation


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mcount:I

.field final synthetic this$0:Lcom/htc/app/FilePickerListAdapter;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerListAdapter;)V
    .locals 1
    .parameter

    .prologue
    .line 1573
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1574
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1599
    const/4 v0, 0x0

    iput v0, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mcount:I

    return-void
.end method


# virtual methods
.method getActionMode()Landroid/view/ActionMode;
    .locals 1

    .prologue
    .line 1577
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method getSelectedItemCount()I
    .locals 3

    .prologue
    .line 1591
    const/4 v0, 0x0

    .line 1592
    .local v0, count:I
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerListAdapter;

    invoke-virtual {v2}, Lcom/htc/app/FilePickerListAdapter;->getSelectItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 1593
    .local v1, itemlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/htc/app/ItemInfo;>;"
    if-eqz v1, :cond_0

    .line 1594
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1596
    :cond_0
    return v0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"
    .parameter "menuItem"

    .prologue
    .line 1637
    const/4 v0, 0x0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 1625
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1626
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->updateActionModeTitleForCount()V

    .line 1627
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .parameter "actionMode"

    .prologue
    .line 1647
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 1648
    .local v0, count:I
    if-lez v0, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mFilePickerUtil:Lcom/htc/app/FilePickerUtil;
    invoke-static {v1}, Lcom/htc/app/FilePickerListAdapter;->access$1800(Lcom/htc/app/FilePickerListAdapter;)Lcom/htc/app/FilePickerUtil;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/htc/app/FilePickerUtil;->notifyToDoTaskEvent(I)V

    .line 1654
    :goto_0
    return-void

    .line 1652
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    goto :goto_0
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "actionMode"
    .parameter "menu"

    .prologue
    .line 1663
    const/4 v0, 0x1

    return v0
.end method

.method setActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "actionMode"

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 1582
    return-void
.end method

.method setActionModeTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1585
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1586
    iget-object v0, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 1588
    :cond_0
    return-void
.end method

.method updateActionModeTitleForCount()V
    .locals 5

    .prologue
    .line 1602
    invoke-virtual {p0}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->getSelectedItemCount()I

    move-result v0

    .line 1603
    .local v0, count:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1604
    .local v1, title:Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/app/FilePickerListAdapter;->access$1700(Lcom/htc/app/FilePickerListAdapter;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->this$0:Lcom/htc/app/FilePickerListAdapter;

    #getter for: Lcom/htc/app/FilePickerListAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/htc/app/FilePickerListAdapter;->access$1700(Lcom/htc/app/FilePickerListAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x20403e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1610
    :cond_0
    invoke-virtual {p0, v1}, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->setActionModeTitle(Ljava/lang/String;)V

    .line 1611
    if-nez v0, :cond_1

    .line 1612
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v2, :cond_1

    .line 1613
    iget-object v2, p0, Lcom/htc/app/FilePickerListAdapter$FlatModeMultiChoiceModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v2}, Landroid/view/ActionMode;->finish()V

    .line 1616
    :cond_1
    return-void
.end method
