.class public Lcom/htc/fragment/widget/CarouselLog;
.super Ljava/lang/Object;
.source "CarouselLog.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGD:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGE:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGI:Z = false

.field private static final LOGT:Z = true

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

#the value of this static final field might be set in the static constructor
.field private static final LOGW:Z = false

.field public static final TAG:Ljava/lang/String; = "CarouselFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    const-string v0, "CarouselFragment"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGV:Z

    .line 13
    const-string v0, "CarouselFragment"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGD:Z

    .line 14
    const-string v0, "CarouselFragment"

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGI:Z

    .line 15
    const-string v0, "CarouselFragment"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGW:Z

    .line 16
    const-string v0, "CarouselFragment"

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    .line 18
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 25
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    return-void
.end method

.method public static final dd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 48
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGD:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    return-void
.end method

.method public static final de(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 60
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :cond_0
    return-void
.end method

.method public static final di(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 52
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGI:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    return-void
.end method

.method public static final dv(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 44
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGV:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static final dw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 56
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGW:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 37
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method public static final e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .parameter "msg"
    .parameter "tr"

    .prologue
    .line 40
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :cond_0
    return-void
.end method

.method public static final i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 29
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGI:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_0
    return-void
.end method

.method public static final stackTraceE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 64
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->DEBUD:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGE:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    return-void
.end method

.method public static final v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 21
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    return-void
.end method

.method public static final w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 33
    sget-boolean v0, Lcom/htc/fragment/widget/CarouselLog;->LOGW:Z

    if-eqz v0, :cond_0

    const-string v0, "CarouselFragment"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void
.end method
