.class Lcom/android/server/location/LTODownloader$DownloadTrigger;
.super Ljava/lang/Object;
.source "LTODownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LTODownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadTrigger"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LTODownloader;


# direct methods
.method private constructor <init>(Lcom/android/server/location/LTODownloader;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/server/location/LTODownloader$DownloadTrigger;->this$0:Lcom/android/server/location/LTODownloader;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/LTODownloader;Lcom/android/server/location/LTODownloader$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/location/LTODownloader$DownloadTrigger;-><init>(Lcom/android/server/location/LTODownloader;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/server/location/LTODownloader$DownloadTrigger;->this$0:Lcom/android/server/location/LTODownloader;

    #calls: Lcom/android/server/location/LTODownloader;->triggerDownload()V
    invoke-static {v0}, Lcom/android/server/location/LTODownloader;->access$100(Lcom/android/server/location/LTODownloader;)V

    .line 48
    return-void
.end method
