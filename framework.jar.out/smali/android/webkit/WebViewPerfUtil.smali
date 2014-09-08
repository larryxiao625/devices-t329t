.class public Landroid/webkit/WebViewPerfUtil;
.super Ljava/lang/Object;
.source "WebViewPerfUtil.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "WebViewPerfUtil"

.field private static final POWERMANAGER_CPU_PERF_WAKE_LOCK:I = 0x40

.field public static final WebSite_Enable_Perf:[Ljava/lang/String;

.field private static bEnablePerf:Z

.field private static bEnableScrollPerf:Z

.field private static bInPerfWebSite:Z

.field private static bIsUsePerf:Z

.field private static mPerf:Lorg/codeaurora/Performance;

.field public static wl:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 14
    sput-boolean v0, Landroid/webkit/WebViewPerfUtil;->bEnablePerf:Z

    .line 15
    sput-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 16
    sput-boolean v0, Landroid/webkit/WebViewPerfUtil;->bEnableScrollPerf:Z

    .line 20
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "http://www.webkit.org/perf/sunspider-0.9.1/sunspider-0.9.1/driver.html"

    aput-object v3, v2, v0

    const-string v3, "http://www.webkit.org/perf/sunspider-0.9/sunspider-driver.html"

    aput-object v3, v2, v1

    const/4 v3, 0x2

    const-string v4, "http://browsermark.rightware.com/browsermark/"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "http://v8.googlecode.com/svn/data/benchmarks/"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "http://www.craftymind.com/factory/"

    aput-object v4, v2, v3

    sput-object v2, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    .line 28
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x26

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x2aa

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x54

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v3, 0x56

    if-ne v2, v3, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    sput-boolean v0, Landroid/webkit/WebViewPerfUtil;->bIsUsePerf:Z

    .line 39
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPerfWebSite(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 6
    .parameter "v"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    sget-object v4, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    array-length v1, v4

    .line 44
    .local v1, nLen:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 45
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/webkit/WebViewPerfUtil;->WebSite_Enable_Perf:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    .line 46
    const-string v3, "WebViewPerfUtil"

    const-string v4, "Perf WebSite Detect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    .line 53
    .end local v0           #i:I
    .end local v1           #nLen:I
    :goto_1
    return v2

    .line 44
    .restart local v0       #i:I
    .restart local v1       #nLen:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    .end local v0           #i:I
    .end local v1           #nLen:I
    :cond_1
    sput-boolean v3, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    move v2, v3

    .line 53
    goto :goto_1
.end method

.method public static disablePerfWakeLock(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 104
    invoke-static {p0}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bEnablePerf:Z

    if-eqz v0, :cond_0

    .line 106
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_3

    .line 107
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 109
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 111
    :cond_2
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    .line 115
    :cond_3
    sput-boolean v1, Landroid/webkit/WebViewPerfUtil;->bEnablePerf:Z

    .line 116
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setInPerf(Z)V

    goto :goto_0
.end method

.method public static disableScrollPerfWakeLock(Landroid/webkit/WebView;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bEnableScrollPerf:Z

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    invoke-virtual {v0, v1, v1}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 132
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 133
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 134
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bEnableScrollPerf:Z

    .line 136
    :cond_0
    return-void
.end method

.method public static enablePerfWakeLock(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "context"
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 92
    invoke-static {p1}, Landroid/webkit/WebViewPerfUtil;->isNeedPerf(Landroid/webkit/WebView;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    sget-boolean v1, Landroid/webkit/WebViewPerfUtil;->bEnablePerf:Z

    if-nez v1, :cond_0

    .line 94
    const-string/jumbo v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 95
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v1, 0x40

    const-string v2, "browser"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    .line 97
    sget-object v1, Landroid/webkit/WebViewPerfUtil;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 98
    sput-boolean v3, Landroid/webkit/WebViewPerfUtil;->bEnablePerf:Z

    .line 99
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setInPerf(Z)V

    goto :goto_0
.end method

.method public static enableScrollPerfWakeLock(Landroid/webkit/WebView;)V
    .locals 4
    .parameter "v"

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x1

    .line 121
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bEnableScrollPerf:Z

    if-nez v0, :cond_0

    .line 122
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 123
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v3}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 124
    sget-object v0, Landroid/webkit/WebViewPerfUtil;->mPerf:Lorg/codeaurora/Performance;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v3}, Lorg/codeaurora/Performance;->cpuSetOptions(II)I

    .line 125
    sput-boolean v2, Landroid/webkit/WebViewPerfUtil;->bEnableScrollPerf:Z

    .line 127
    :cond_0
    return-void
.end method

.method public static isInPerfWebSite()Z
    .locals 1

    .prologue
    .line 58
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bInPerfWebSite:Z

    return v0
.end method

.method public static isNeedPerf(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 66
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bIsUsePerf:Z

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isWatchLaterWebView()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->isReadLaterWebView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUsePerf()Z
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Landroid/webkit/WebViewPerfUtil;->bIsUsePerf:Z

    return v0
.end method
