.class public interface abstract Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;
.super Ljava/lang/Object;
.source "HtcWrapDrmStore.java"

# interfaces
.implements Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Columns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/wrap/android/provider/HtcWrapDrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Video"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 345
    const-string v0, "content://drm/video"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/htc/wrap/android/provider/HtcWrapDrmStore$Video;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
