.class Lcom/htc/app/FilePickerCore$30;
.super Ljava/lang/Object;
.source "FilePickerCore.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/htc/app/FilePickerCore;->NotifyToDoTask(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/app/FilePickerCore;


# direct methods
.method constructor <init>(Lcom/htc/app/FilePickerCore;)V
    .locals 0
    .parameter

    .prologue
    .line 4278
    iput-object p1, p0, Lcom/htc/app/FilePickerCore$30;->this$0:Lcom/htc/app/FilePickerCore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4281
    iget-object v0, p0, Lcom/htc/app/FilePickerCore$30;->this$0:Lcom/htc/app/FilePickerCore;

    #calls: Lcom/htc/app/FilePickerCore;->performDoneButtonOnClickListenerClick()V
    invoke-static {v0}, Lcom/htc/app/FilePickerCore;->access$7700(Lcom/htc/app/FilePickerCore;)V

    .line 4282
    return-void
.end method
