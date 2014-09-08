.class Landroid/webkit/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CallbackProxy$11;,
        Landroid/webkit/CallbackProxy$UploadFile;,
        Landroid/webkit/CallbackProxy$UploadFileMessageData;,
        Landroid/webkit/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final AUTO_LOGIN:I = 0x8c

.field private static final CLIENT_CERT_REQUEST:I = 0x8d

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final FEATURE_PERMISSIONS_HIDE_PROMPT:I = 0x92

.field private static final FEATURE_PERMISSIONS_SHOW_PROMPT:I = 0x91

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final JS_ALERT:I = 0x70

.field private static final JS_CONFIRM:I = 0x71

.field private static final JS_PROMPT:I = 0x72

.field private static final JS_TIMEOUT:I = 0x80

.field private static final JS_UNLOAD:I = 0x73

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFY:I = 0xc8

.field private static final NOTIFY_SEARCHBOX_LISTENERS:I = 0x8b

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PROCEEDED_AFTER_SSL_ERROR:I = 0x90

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SEARCHBOX_DISPATCH_COMPLETE_CALLBACK:I = 0x8f

.field private static final SEARCHBOX_IS_SUPPORTED_CALLBACK:I = 0x8e

.field private static final SET_INSTALLABLE_WEBAPP:I = 0x8a

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkit/WebBackForwardList;

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkit/DownloadListener;

.field private mIsonJsAlert:Z

.field private volatile mLatestProgress:I

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private final mWebView:Landroid/webkit/WebView;

.field private volatile mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "w"

    .prologue
    .line 164
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    .line 166
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    .line 167
    iput-object p2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    .line 168
    new-instance v0, Landroid/webkit/WebBackForwardList;

    invoke-direct {v0, p0}, Landroid/webkit/WebBackForwardList;-><init>(Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 169
    return-void
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 1035
    move-object v1, p1

    .line 1036
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1038
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040331

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1049
    :goto_0
    return-object v1

    .line 1041
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v0, aUrl:Ljava/net/URL;
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040330

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 1045
    .end local v0           #aUrl:Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 1780
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1790
    :goto_0
    return-void

    .line 1784
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1785
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1788
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1789
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method canShowAlertDialog()Z
    .locals 1

    .prologue
    .line 1905
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method public createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 10
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1426
    iget-object v8, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v8, :cond_1

    .line 1455
    :cond_0
    :goto_0
    return-object v5

    .line 1430
    :cond_1
    new-instance v3, Landroid/webkit/WebView$WebViewTransport;

    iget-object v8, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v8}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    .line 1431
    .local v3, transport:Landroid/webkit/WebView$WebViewTransport;
    const/16 v8, 0xc8

    invoke-virtual {p0, v8}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1432
    .local v2, msg:Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1433
    monitor-enter p0

    .line 1434
    const/16 v9, 0x6d

    if-eqz p1, :cond_2

    move v8, v6

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    :try_start_0
    invoke-virtual {p0, v9, v8, v6, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1437
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1443
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1445
    invoke-virtual {v3}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 1446
    .local v4, w:Landroid/webkit/WebView;
    if-eqz v4, :cond_0

    .line 1447
    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    .line 1450
    .local v0, core:Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_0

    .line 1451
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->initializeSubwindow()V

    .line 1452
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    goto :goto_0

    .end local v0           #core:Landroid/webkit/WebViewCore;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_2
    move v8, v7

    .line 1434
    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2

    .line 1438
    :catch_0
    move-exception v1

    .line 1439
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v6, "CallbackProxy"

    const-string v7, "Caught exception while waiting for createWindow"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    const-string v6, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1443
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v1, 0x0

    .line 1251
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1255
    :goto_0
    return-void

    .line 1254
    :cond_0
    const/16 v2, 0x6b

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v2, v0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    return-object v0
.end method

.method public getIsonJsAlert()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1812
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1818
    :goto_0
    return-void

    .line 1815
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1816
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1817
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 79
    .parameter "msg"

    .prologue
    .line 331
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 1018
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 333
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 334
    .local v71, startedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v71

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->onPageStarted(Ljava/lang/String;)V

    .line 335
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_1

    .line 336
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->RecoveryDefaultZoomUpperBound()V

    .line 337
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->RecoveryDefaultZoomLowerBound()V

    .line 339
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 340
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    move-object/from16 v0, v71

    invoke-virtual {v9, v10, v0, v4}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 345
    .end local v71           #startedUrl:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Ljava/lang/String;

    .line 346
    .local v47, finishedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/webkit/WebView;->onPageFinished(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v4, :cond_3

    .line 349
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->checkIsHeavyWebSite()V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    if-eqz v4, :cond_2

    sget-object v4, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getPluginState()Landroid/webkit/WebSettings$PluginState;

    move-result-object v9

    if-eq v4, v9, :cond_2

    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getZoomType()I

    move-result v9

    if-eq v4, v9, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v4

    const/16 v9, 0x10e

    const-wide/16 v13, 0x1f4

    move-object/from16 v0, v47

    invoke-virtual {v4, v9, v0, v13, v14}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 357
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v4

    const/4 v9, 0x1

    if-ne v4, v9, :cond_3

    .line 358
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->clearViewState()V

    .line 361
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 362
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v47

    invoke-virtual {v4, v9, v0}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .end local v47           #finishedUrl:Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 368
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 373
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 374
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v9, v14, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v10, v13, v4, v9}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 380
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 381
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 388
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v65, v0

    .line 389
    .local v65, reasonCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "description"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 390
    .local v41, description:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "failingUrl"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    .line 391
    .local v45, failUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move/from16 v0, v65

    move-object/from16 v1, v41

    move-object/from16 v2, v45

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    .end local v41           #description:Ljava/lang/String;
    .end local v45           #failUrl:Ljava/lang/String;
    .end local v65           #reasonCode:I
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "resend"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v66

    check-cast v66, Landroid/os/Message;

    .line 399
    .local v66, resend:Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "dontResend"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v42

    check-cast v42, Landroid/os/Message;

    .line 401
    .local v42, dontResend:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_5

    .line 402
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v42

    move-object/from16 v1, v66

    invoke-virtual {v4, v9, v0, v1}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 405
    :cond_5
    invoke-virtual/range {v42 .. v42}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 410
    .end local v42           #dontResend:Landroid/os/Message;
    .end local v66           #resend:Landroid/os/Message;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v62

    .line 411
    .local v62, overrideUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v61

    .line 412
    .local v61, override:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v67, v0

    check-cast v67, Landroid/webkit/CallbackProxy$ResultTransport;

    .line 414
    .local v67, result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 415
    :try_start_0
    invoke-static/range {v61 .. v61}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v0, v67

    invoke-virtual {v0, v4}, Landroid/webkit/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 416
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 417
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 421
    .end local v61           #override:Z
    .end local v62           #overrideUrl:Ljava/lang/String;
    .end local v67           #result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 422
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v48, v0

    check-cast v48, Landroid/webkit/HttpAuthHandler;

    .line 423
    .local v48, handler:Landroid/webkit/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "host"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 424
    .local v49, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 425
    .local v64, realm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v48

    move-object/from16 v1, v49

    move-object/from16 v2, v64

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 431
    .end local v48           #handler:Landroid/webkit/HttpAuthHandler;
    .end local v49           #host:Ljava/lang/String;
    .end local v64           #realm:Ljava/lang/String;
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 432
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 434
    .local v55, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    const-string v4, "handler"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/SslErrorHandler;

    const-string v9, "error"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/http/SslError;

    invoke-virtual {v10, v13, v4, v9}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 441
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 442
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslError;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onProceededAfterSslError(Landroid/webkit/WebView;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 448
    :pswitch_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 449
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 451
    .restart local v55       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    const-string v4, "handler"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/webkit/ClientCertRequestHandler;

    const-string v9, "host_and_port"

    move-object/from16 v0, v55

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v10, v13, v4, v9}, Landroid/webkit/WebViewClient;->onReceivedClientCertRequest(Landroid/webkit/WebView;Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_d
    monitor-enter p0

    .line 462
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_6

    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p0

    iget v10, v0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    invoke-virtual {v4, v9, v10}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 466
    :cond_6
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 467
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 471
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 472
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v9, v0, Landroid/os/Message;->arg1:I

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v10, v13, v4, v9}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 478
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 479
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 484
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-eqz v4, :cond_0

    .line 485
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 486
    .local v5, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "userAgent"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 487
    .local v6, userAgent:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "contentDisposition"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, contentDisposition:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "mimetype"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 490
    .local v8, mimetype:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "contentLength"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    .line 496
    .local v39, contentLength:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    instance-of v4, v4, Landroid/webkit/HTCDownloadListener;

    if-eqz v4, :cond_8

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "authHeaderName"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 499
    .local v11, authHeaderName:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "authHeaderValue"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 502
    .local v12, authHeaderValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    check-cast v4, Landroid/webkit/HTCDownloadListener;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface/range {v4 .. v12}, Landroid/webkit/HTCDownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 507
    .end local v11           #authHeaderName:Ljava/lang/String;
    .end local v12           #authHeaderValue:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    invoke-virtual/range {v39 .. v39}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-interface/range {v4 .. v10}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 515
    .end local v5           #url:Ljava/lang/String;
    .end local v6           #userAgent:Ljava/lang/String;
    .end local v7           #contentDisposition:Ljava/lang/String;
    .end local v8           #mimetype:Ljava/lang/String;
    .end local v39           #contentLength:Ljava/lang/Long;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 516
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v4, v9, :cond_a

    const/4 v4, 0x1

    move v9, v4

    :goto_3
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    const/4 v10, 0x1

    if-ne v4, v10, :cond_b

    const/4 v4, 0x1

    move v10, v4

    :goto_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    invoke-virtual {v13, v14, v9, v10, v4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 519
    monitor-enter p0

    .line 520
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 521
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 523
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->dismissZoomControl()V

    goto/16 :goto_0

    .line 516
    :cond_a
    const/4 v4, 0x0

    move v9, v4

    goto :goto_3

    :cond_b
    const/4 v4, 0x0

    move v10, v4

    goto :goto_4

    .line 521
    :catchall_2
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v4

    .line 528
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 529
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4, v9}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 534
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 535
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 540
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v36

    .line 541
    .local v36, bundle:Landroid/os/Bundle;
    const-string v4, "host"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 542
    .local v68, schemePlusHost:Ljava/lang/String;
    const-string/jumbo v4, "username"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 543
    .local v76, username:Ljava/lang/String;
    const-string/jumbo v4, "password"

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 546
    .local v63, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/Message;

    move-object/from16 v0, v68

    move-object/from16 v1, v76

    move-object/from16 v2, v63

    invoke-virtual {v9, v0, v1, v2, v4}, Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 548
    monitor-enter p0

    .line 549
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 550
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v4

    .line 555
    .end local v36           #bundle:Landroid/os/Bundle;
    .end local v63           #password:Ljava/lang/String;
    .end local v68           #schemePlusHost:Ljava/lang/String;
    .end local v76           #username:Ljava/lang/String;
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 556
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/KeyEvent;

    invoke-virtual {v9, v10, v4}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 562
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 563
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 565
    .restart local v55       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "databaseIdentifier"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 567
    .local v15, databaseIdentifier:Ljava/lang/String;
    const-string/jumbo v4, "url"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 568
    .restart local v5       #url:Ljava/lang/String;
    const-string v4, "currentQuota"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 570
    .local v16, currentQuota:J
    const-string/jumbo v4, "totalUsedQuota"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 572
    .local v20, totalUsedQuota:J
    const-string v4, "estimatedSize"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    .line 574
    .local v18, estimatedSize:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 577
    .local v22, quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v14, v5

    invoke-virtual/range {v13 .. v22}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 584
    .end local v5           #url:Ljava/lang/String;
    .end local v15           #databaseIdentifier:Ljava/lang/String;
    .end local v16           #currentQuota:J
    .end local v18           #estimatedSize:J
    .end local v20           #totalUsedQuota:J
    .end local v22           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 585
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 587
    .restart local v55       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "spaceNeeded"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    .line 589
    .local v24, spaceNeeded:J
    const-string/jumbo v4, "totalUsedQuota"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 591
    .restart local v20       #totalUsedQuota:J
    const-string/jumbo v4, "quotaUpdater"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 594
    .restart local v22       #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v23, v0

    move-wide/from16 v26, v20

    move-object/from16 v28, v22

    invoke-virtual/range {v23 .. v28}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 600
    .end local v20           #totalUsedQuota:J
    .end local v22           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v24           #spaceNeeded:J
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 603
    .restart local v55       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "origin"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v60

    check-cast v60, Ljava/lang/String;

    .line 604
    .local v60, origin:Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/webkit/GeolocationPermissions$Callback;

    .line 607
    .local v37, callback:Landroid/webkit/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v60

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 613
    .end local v37           #callback:Landroid/webkit/GeolocationPermissions$Callback;
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v60           #origin:Ljava/lang/String;
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 614
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 619
    :pswitch_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 620
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Ljava/util/HashMap;

    .line 622
    .restart local v55       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "features"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Ljava/util/Vector;

    .line 623
    .local v46, features:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const-string v4, "appid"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/String;

    .line 624
    .local v33, appid:Ljava/lang/String;
    const-string v4, "callback"

    move-object/from16 v0, v55

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/webkit/GeolocationPermissions$Callback;

    .line 630
    .restart local v37       #callback:Landroid/webkit/GeolocationPermissions$Callback;
    const/16 v57, 0x0

    .line 632
    .local v57, methodFound:Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    .line 633
    .local v38, cls:Ljava/lang/Class;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v54

    .line 635
    .local v54, m:[Ljava/lang/reflect/Method;
    const/16 v50, 0x0

    .local v50, i:I
    :goto_5
    move-object/from16 v0, v54

    array-length v4, v0

    move/from16 v0, v50

    if-ge v0, v4, :cond_c

    .line 636
    aget-object v4, v54, v50

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "onNavigatorPermissionsShowPrompt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 637
    const/16 v57, 0x1

    .line 642
    :cond_c
    if-eqz v57, :cond_0

    .line 643
    const/4 v4, 0x3

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v34, v0

    .line 644
    .local v34, arglist:[Ljava/lang/Object;
    const/4 v4, 0x0

    aput-object v46, v34, v4

    .line 645
    const/4 v4, 0x1

    aput-object v33, v34, v4

    .line 646
    const/4 v4, 0x2

    aput-object v37, v34, v4

    .line 647
    aget-object v4, v54, v50

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, v34

    invoke-virtual {v4, v9, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 649
    .end local v34           #arglist:[Ljava/lang/Object;
    .end local v38           #cls:Ljava/lang/Class;
    .end local v50           #i:I
    .end local v54           #m:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v43

    .line 650
    .local v43, e:Ljava/lang/Exception;
    const-string v4, "Webapps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 635
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v38       #cls:Ljava/lang/Class;
    .restart local v50       #i:I
    .restart local v54       #m:[Ljava/lang/reflect/Method;
    :cond_d
    add-int/lit8 v50, v50, 0x1

    goto :goto_5

    .line 656
    .end local v33           #appid:Ljava/lang/String;
    .end local v37           #callback:Landroid/webkit/GeolocationPermissions$Callback;
    .end local v38           #cls:Ljava/lang/Class;
    .end local v46           #features:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    .end local v50           #i:I
    .end local v54           #m:[Ljava/lang/reflect/Method;
    .end local v55           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v57           #methodFound:Z
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 657
    const/16 v57, 0x0

    .line 659
    .restart local v57       #methodFound:Z
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v38

    .line 660
    .restart local v38       #cls:Ljava/lang/Class;
    invoke-virtual/range {v38 .. v38}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v54

    .line 662
    .restart local v54       #m:[Ljava/lang/reflect/Method;
    const/16 v50, 0x0

    .restart local v50       #i:I
    :goto_6
    move-object/from16 v0, v54

    array-length v4, v0

    move/from16 v0, v50

    if-ge v0, v4, :cond_e

    .line 663
    aget-object v4, v54, v50

    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "onNavigatorPermissionsHidePrompt"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 664
    const/16 v57, 0x1

    .line 668
    :cond_e
    if-eqz v57, :cond_0

    .line 669
    aget-object v4, v54, v50

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-virtual {v4, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 670
    .end local v38           #cls:Ljava/lang/Class;
    .end local v50           #i:I
    .end local v54           #m:[Ljava/lang/reflect/Method;
    :catch_1
    move-exception v43

    .line 671
    .restart local v43       #e:Ljava/lang/Exception;
    const-string v4, "Webapps"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Caught Exception "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v43

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 662
    .end local v43           #e:Ljava/lang/Exception;
    .restart local v38       #cls:Ljava/lang/Class;
    .restart local v50       #i:I
    .restart local v54       #m:[Ljava/lang/reflect/Method;
    :cond_f
    add-int/lit8 v50, v50, 0x1

    goto :goto_6

    .line 677
    .end local v38           #cls:Ljava/lang/Class;
    .end local v50           #i:I
    .end local v54           #m:[Ljava/lang/reflect/Method;
    .end local v57           #methodFound:Z
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 678
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/JsResult;

    .line 679
    .local v31, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 680
    .local v29, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 681
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_10

    .line 684
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->cancel()V

    .line 685
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 688
    :cond_10
    new-instance v4, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$2;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$1;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$1;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 708
    :cond_11
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 713
    .end local v5           #url:Ljava/lang/String;
    .end local v29           #message:Ljava/lang/String;
    .end local v31           #res:Landroid/webkit/JsResult;
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 714
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/JsResult;

    .line 715
    .restart local v31       #res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 716
    .restart local v29       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 717
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 719
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_12

    .line 720
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->cancel()V

    .line 721
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 725
    :cond_12
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$5;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$4;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$3;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$3;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 755
    :cond_13
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 760
    .end local v5           #url:Ljava/lang/String;
    .end local v29           #message:Ljava/lang/String;
    .end local v31           #res:Landroid/webkit/JsResult;
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 761
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/JsPromptResult;

    .line 762
    .local v31, res:Landroid/webkit/JsPromptResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 763
    .restart local v29       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "default"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 764
    .local v30, defaultVal:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 765
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v27, v0

    move-object/from16 v28, v5

    invoke-virtual/range {v26 .. v31}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_14

    .line 768
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 769
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsPromptResult;->setReady()V

    goto/16 :goto_0

    .line 772
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v44

    .line 774
    .local v44, factory:Landroid/view/LayoutInflater;
    const v4, 0x1090048

    const/4 v9, 0x0

    move-object/from16 v0, v44

    invoke-virtual {v0, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v78

    .line 776
    .local v78, view:Landroid/view/View;
    const v4, 0x102027e

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v77

    check-cast v77, Landroid/widget/EditText;

    .line 778
    .local v77, v:Landroid/widget/EditText;
    move-object/from16 v0, v77

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 779
    const v4, 0x102000b

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    const v4, 0x102000b

    move-object/from16 v0, v78

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v75

    check-cast v75, Landroid/widget/TextView;

    .line 785
    .local v75, tv:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x106000c

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v75

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 786
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x1060069

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setTextColor(I)V

    .line 789
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v78

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-object/from16 v2, v77

    invoke-direct {v10, v0, v1, v2}, Landroid/webkit/CallbackProxy$8;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$7;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    new-instance v9, Landroid/webkit/CallbackProxy$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v9, v0, v1}, Landroid/webkit/CallbackProxy$6;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 822
    .end local v44           #factory:Landroid/view/LayoutInflater;
    .end local v75           #tv:Landroid/widget/TextView;
    .end local v77           #v:Landroid/widget/EditText;
    .end local v78           #view:Landroid/view/View;
    :cond_15
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsPromptResult;->setReady()V

    goto/16 :goto_0

    .line 827
    .end local v5           #url:Ljava/lang/String;
    .end local v29           #message:Ljava/lang/String;
    .end local v30           #defaultVal:Ljava/lang/String;
    .end local v31           #res:Landroid/webkit/JsPromptResult;
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 828
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/JsResult;

    .line 829
    .local v31, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 830
    .restart local v29       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "url"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 831
    .restart local v5       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v29

    move-object/from16 v1, v31

    invoke-virtual {v4, v9, v5, v0, v1}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/CallbackProxy;->canShowAlertDialog()Z

    move-result v4

    if-nez v4, :cond_16

    .line 834
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->cancel()V

    .line 835
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 838
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v9, 0x1040332

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v29, v10, v13

    invoke-virtual {v4, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v54

    .line 841
    .local v54, m:Ljava/lang/String;
    new-instance v4, Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-direct {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    move-object/from16 v0, v54

    invoke-virtual {v4, v0}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const v9, 0x104000a

    new-instance v10, Landroid/webkit/CallbackProxy$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$10;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    const/high16 v9, 0x104

    new-instance v10, Landroid/webkit/CallbackProxy$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v10, v0, v1}, Landroid/webkit/CallbackProxy$9;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v4, v9, v10}, Lcom/htc/dialog/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/dialog/HtcAlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/htc/dialog/HtcAlertDialog$Builder;->show()Lcom/htc/dialog/HtcAlertDialog;

    .line 864
    .end local v54           #m:Ljava/lang/String;
    :cond_17
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 869
    .end local v5           #url:Ljava/lang/String;
    .end local v29           #message:Ljava/lang/String;
    .end local v31           #res:Landroid/webkit/JsResult;
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 870
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v31, v0

    check-cast v31, Landroid/webkit/JsResult;

    .line 871
    .restart local v31       #res:Landroid/webkit/JsResult;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v4

    if-eqz v4, :cond_18

    .line 872
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->confirm()V

    .line 876
    :goto_7
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 874
    :cond_18
    invoke-virtual/range {v31 .. v31}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_7

    .line 881
    .end local v31           #res:Landroid/webkit/JsResult;
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/net/http/SslCertificate;

    invoke-virtual {v9, v4}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 885
    :pswitch_22
    monitor-enter p0

    .line 886
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 887
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v4

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    .line 891
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 892
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    const-string/jumbo v13, "old"

    invoke-virtual {v10, v13}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v13

    const-string/jumbo v14, "new"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v13

    invoke-virtual {v4, v9, v10, v13}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 898
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 902
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 905
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "message"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 906
    .restart local v29       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "sourceID"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 907
    .local v70, sourceID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "lineNumber"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v51

    .line 908
    .local v51, lineNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "msgLevel"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v58

    .line 909
    .local v58, msgLevel:I
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    array-length v0, v4

    move/from16 v59, v0

    .line 911
    .local v59, numberOfMessageLevels:I
    if-ltz v58, :cond_19

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_1a

    .line 912
    :cond_19
    const/16 v58, 0x0

    .line 915
    :cond_1a
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v4

    aget-object v56, v4, v58

    .line 918
    .local v56, messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    new-instance v9, Landroid/webkit/ConsoleMessage;

    move-object/from16 v0, v29

    move-object/from16 v1, v70

    move/from16 v2, v51

    move-object/from16 v3, v56

    invoke-direct {v9, v0, v1, v2, v3}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v4, v9}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 922
    const-string v53, "Web Console"

    .line 923
    .local v53, logTag:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, " at "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ":"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v51

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v52

    .line 925
    .local v52, logMessage:Ljava/lang/String;
    sget-object v4, Landroid/webkit/CallbackProxy$11;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v56 .. v56}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v9

    aget v4, v4, v9

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_0

    .line 927
    :pswitch_26
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 930
    :pswitch_27
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 933
    :pswitch_28
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 936
    :pswitch_29
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 939
    :pswitch_2a
    move-object/from16 v0, v53

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 947
    .end local v29           #message:Ljava/lang/String;
    .end local v51           #lineNumber:I
    .end local v52           #logMessage:Ljava/lang/String;
    .end local v53           #logTag:Ljava/lang/String;
    .end local v56           #messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    .end local v58           #msgLevel:I
    .end local v59           #numberOfMessageLevels:I
    .end local v70           #sourceID:Ljava/lang/String;
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 948
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/ValueCallback;

    invoke-virtual {v9, v4}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 953
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 954
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v40, v0

    check-cast v40, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    .line 955
    .local v40, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual/range {v40 .. v40}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getUploadFile()Landroid/webkit/CallbackProxy$UploadFile;

    move-result-object v9

    invoke-virtual/range {v40 .. v40}, Landroid/webkit/CallbackProxy$UploadFileMessageData;->getAcceptType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 960
    .end local v40           #data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 961
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    invoke-virtual {v9, v4}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 967
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-eqz v4, :cond_0

    .line 968
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebHistoryItem;

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v4, v10}, Landroid/webkit/WebBackForwardListClient;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 973
    :pswitch_2f
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "host"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 974
    .restart local v49       #host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 975
    .restart local v64       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "username"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v76

    .line 976
    .restart local v76       #username:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "password"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 977
    .restart local v63       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v49

    move-object/from16 v1, v64

    move-object/from16 v2, v76

    move-object/from16 v3, v63

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 982
    .end local v49           #host:Ljava/lang/String;
    .end local v63           #password:Ljava/lang/String;
    .end local v64           #realm:Ljava/lang/String;
    .end local v76           #username:Ljava/lang/String;
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v4, :cond_0

    .line 983
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v4}, Landroid/webkit/WebChromeClient;->setInstallableWebApp()V

    goto/16 :goto_0

    .line 987
    :pswitch_31
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v69

    check-cast v69, Landroid/webkit/SearchBoxImpl;

    .line 990
    .local v69, searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Ljava/util/List;

    .line 991
    .local v73, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "query"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v69

    move-object/from16 v1, v73

    invoke-virtual {v0, v4, v1}, Landroid/webkit/SearchBoxImpl;->handleSuggestions(Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 995
    .end local v69           #searchBox:Landroid/webkit/SearchBoxImpl;
    .end local v73           #suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :pswitch_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v4, :cond_0

    .line 996
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v9, "realm"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v64

    .line 997
    .restart local v64       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "account"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 998
    .local v32, account:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "args"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 999
    .local v35, args:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v0, v64

    move-object/from16 v1, v32

    move-object/from16 v2, v35

    invoke-virtual {v4, v9, v0, v1, v2}, Landroid/webkit/WebViewClient;->onReceivedLoginRequest(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1005
    .end local v32           #account:Ljava/lang/String;
    .end local v35           #args:Ljava/lang/String;
    .end local v64           #realm:Ljava/lang/String;
    :pswitch_33
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v69

    check-cast v69, Landroid/webkit/SearchBoxImpl;

    .line 1006
    .restart local v69       #searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Ljava/lang/Boolean;

    .line 1007
    .local v74, supported:Ljava/lang/Boolean;
    invoke-virtual/range {v74 .. v74}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Landroid/webkit/SearchBoxImpl;->handleIsSupportedCallback(Z)V

    goto/16 :goto_0

    .line 1011
    .end local v69           #searchBox:Landroid/webkit/SearchBoxImpl;
    .end local v74           #supported:Ljava/lang/Boolean;
    :pswitch_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSearchBox()Landroid/webkit/SearchBox;

    move-result-object v69

    check-cast v69, Landroid/webkit/SearchBoxImpl;

    .line 1012
    .restart local v69       #searchBox:Landroid/webkit/SearchBoxImpl;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Ljava/lang/Boolean;

    .line 1013
    .local v72, success:Ljava/lang/Boolean;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v4

    const-string v9, "function"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v9

    const-string v10, "id"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual/range {v72 .. v72}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    move-object/from16 v0, v69

    invoke-virtual {v0, v4, v9, v10}, Landroid/webkit/SearchBoxImpl;->handleDispatchCompleteCallback(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    .line 331
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_15
        :pswitch_0
        :pswitch_10
        :pswitch_6
        :pswitch_7
        :pswitch_2
        :pswitch_12
        :pswitch_23
        :pswitch_21
        :pswitch_24
        :pswitch_16
        :pswitch_17
        :pswitch_20
        :pswitch_25
        :pswitch_18
        :pswitch_19
        :pswitch_4
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_c
        :pswitch_33
        :pswitch_34
        :pswitch_b
        :pswitch_1a
        :pswitch_1b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
    .end packed-switch

    .line 925
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
    .end packed-switch
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 1471
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1475
    :goto_0
    return-void

    .line 1474
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 9
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    const/4 v7, 0x0

    .line 1323
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/CallbackProxy;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"
    .parameter "authHeaderName"
    .parameter "authHeaderValue"

    .prologue
    .line 1334
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-nez v2, :cond_0

    .line 1336
    const/4 v2, 0x0

    .line 1353
    :goto_0
    return v2

    .line 1339
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1340
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1341
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1345
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1348
    const-string v2, "authHeaderName"

    invoke-virtual {v0, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    const-string v2, "authHeaderValue"

    invoke-virtual {v0, v2, p8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1352
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1353
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1634
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1635
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1649
    :goto_0
    return-void

    .line 1639
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1640
    .local v0, exceededQuota:Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1641
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1643
    const-string v2, "currentQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1644
    const-string v2, "estimatedSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1646
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1647
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1648
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 1155
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1156
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1165
    :goto_0
    return-void

    .line 1160
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1161
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1162
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1163
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1164
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1704
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1710
    :goto_0
    return-void

    .line 1708
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1709
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1686
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1697
    :goto_0
    return-void

    .line 1690
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1692
    .local v1, showMessage:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1693
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1695
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1696
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 3
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1884
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1889
    :goto_0
    return-void

    .line 1887
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1888
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIsSupportedCallback(Z)V
    .locals 2
    .parameter "isSupported"

    .prologue
    .line 1917
    const/16 v1, 0x8e

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1918
    .local v0, msg:Landroid/os/Message;
    new-instance v1, Ljava/lang/Boolean;

    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1919
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1920
    return-void
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    .line 1520
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1545
    :goto_0
    return-void

    .line 1523
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v4}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1524
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x70

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1525
    .local v0, alert:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1526
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1527
    monitor-enter p0

    .line 1528
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    .line 1533
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1541
    const/4 v3, 0x0

    :try_start_2
    iput-boolean v3, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    .line 1544
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1534
    :catch_0
    move-exception v1

    .line 1535
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsAlert"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1541
    const/4 v3, 0x0

    :try_start_4
    iput-boolean v3, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    goto :goto_1

    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkit/CallbackProxy;->mIsonJsAlert:Z

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    .line 1595
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1611
    :goto_0
    return v3

    .line 1598
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1599
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x73

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1600
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    monitor-enter p0

    .line 1603
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1605
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1610
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1611
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1606
    :catch_0
    move-exception v1

    .line 1607
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1610
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 1550
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1566
    :goto_0
    return v3

    .line 1553
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1554
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x71

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1555
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1556
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    monitor-enter p0

    .line 1558
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1560
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1565
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1566
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1561
    :catch_0
    move-exception v1

    .line 1562
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsConfirm"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1565
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 1572
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1573
    const/4 v3, 0x0

    .line 1589
    :goto_0
    return-object v3

    .line 1575
    :cond_0
    new-instance v2, Landroid/webkit/JsPromptResult;

    invoke-direct {v2, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/CallbackProxy;)V

    .line 1576
    .local v2, result:Landroid/webkit/JsPromptResult;
    const/16 v3, 0x72

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1577
    .local v1, prompt:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1578
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1579
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1580
    monitor-enter p0

    .line 1581
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1583
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1588
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1589
    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1584
    :catch_0
    move-exception v0

    .line 1585
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsPrompt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1588
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsTimeout()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 1794
    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v4, :cond_0

    .line 1808
    :goto_0
    return v3

    .line 1797
    :cond_0
    new-instance v1, Landroid/webkit/JsResult;

    invoke-direct {v1, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1798
    .local v1, result:Landroid/webkit/JsResult;
    const/16 v3, 0x80

    invoke-virtual {p0, v3, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1799
    .local v2, timeout:Landroid/os/Message;
    monitor-enter p0

    .line 1800
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1802
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1807
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1808
    invoke-virtual {v1}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1803
    :catch_0
    move-exception v0

    .line 1804
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1805
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1807
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onNavigatorPermissionsHidePrompt()V
    .locals 3

    .prologue
    .line 1759
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1760
    const-string v1, "CallbackProxy"

    const-string v2, "chrome client is null , returning"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    :goto_0
    return-void

    .line 1764
    :cond_0
    const/16 v1, 0x92

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1765
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onNavigatorPermissionsShowPrompt(Ljava/util/Vector;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 9
    .parameter
    .parameter "appid"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/webkit/GeolocationPermissions$Callback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1723
    .local p1, features:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v7, :cond_1

    .line 1724
    const-string v7, "CallbackProxy"

    const-string v8, "chrome client is null , returning"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    :cond_0
    :goto_0
    return-void

    .line 1728
    :cond_1
    const/4 v5, 0x0

    .line 1730
    .local v5, methodFound:Z
    :try_start_0
    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1731
    .local v0, cls:Ljava/lang/Class;
    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1732
    .local v3, m:[Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v7, v3

    if-ge v2, v7, :cond_2

    .line 1733
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "onNavigatorPermissionsShowPrompt"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_3

    .line 1734
    const/4 v5, 0x1

    .line 1742
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #i:I
    .end local v3           #m:[Ljava/lang/reflect/Method;
    :cond_2
    :goto_2
    if-eqz v5, :cond_0

    .line 1743
    const/16 v7, 0x91

    invoke-virtual {p0, v7}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    .line 1745
    .local v6, showMessage:Landroid/os/Message;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1746
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "features"

    invoke-virtual {v4, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    const-string v7, "appid"

    invoke-virtual {v4, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1748
    const-string v7, "callback"

    invoke-virtual {v4, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    iput-object v4, v6, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1750
    invoke-virtual {p0, v6}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1732
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #showMessage:Landroid/os/Message;
    .restart local v0       #cls:Ljava/lang/Class;
    .restart local v2       #i:I
    .restart local v3       #m:[Ljava/lang/reflect/Method;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1738
    .end local v0           #cls:Ljava/lang/Class;
    .end local v2           #i:I
    .end local v3           #m:[Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 1739
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "CallbackProxy"

    const-string v8, "WebchromeClient does not implement onNavigatorPermissionsShowPrompt"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1876
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1881
    :goto_0
    return-void

    .line 1879
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1880
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1126
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1127
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1128
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 1107
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 1108
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->resetHeavyWebSite()V

    .line 1110
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1111
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1112
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1114
    return-void
.end method

.method public onProceededAfterSslError(Landroid/net/http/SslError;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 1219
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1225
    :goto_0
    return-void

    .line 1222
    :cond_0
    const/16 v1, 0x90

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1223
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1224
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 1406
    monitor-enter p0

    .line 1409
    :try_start_0
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_0

    .line 1410
    monitor-exit p0

    .line 1421
    :goto_0
    return-void

    .line 1412
    :cond_0
    iput p1, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 1413
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_1

    .line 1414
    monitor-exit p0

    goto :goto_0

    .line 1420
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1416
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1417
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    .line 1418
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 1420
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1663
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1664
    const-wide/16 v2, 0x0

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1675
    :goto_0
    return-void

    .line 1668
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1669
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1670
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "spaceNeeded"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1671
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1672
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1673
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1674
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 1245
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1246
    return-void
.end method

.method onReceivedClientCertRequest(Landroid/webkit/ClientCertRequestHandler;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "host_and_port"

    .prologue
    .line 1231
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1232
    invoke-virtual {p1}, Landroid/webkit/ClientCertRequestHandler;->cancel()V

    .line 1241
    :goto_0
    return-void

    .line 1235
    :cond_0
    const/16 v2, 0x8d

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1236
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1237
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    const-string v2, "host_and_port"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1240
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 1140
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1149
    :goto_0
    return-void

    .line 1144
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1145
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 1146
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1392
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1393
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1396
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1398
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "hostName"
    .parameter "realmName"

    .prologue
    .line 1193
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 1194
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 1201
    :goto_0
    return-void

    .line 1197
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1198
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1480
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1481
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 1482
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1486
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1490
    :goto_0
    return-void

    .line 1489
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedLoginRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "realm"
    .parameter "account"
    .parameter "args"

    .prologue
    .line 1300
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1309
    :goto_0
    return-void

    .line 1303
    :cond_0
    const/16 v2, 0x8c

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1304
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1305
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "realm"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1306
    const-string v2, "account"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    const-string v2, "args"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1206
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1207
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1216
    :goto_0
    return-void

    .line 1210
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1211
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1212
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1215
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1511
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1515
    :goto_0
    return-void

    .line 1514
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v2, 0x0

    .line 1495
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1496
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 1497
    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebHistoryItem;->setTouchIconUrl(Ljava/lang/String;Z)V

    .line 1501
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1506
    :goto_0
    return-void

    .line 1504
    :cond_1
    const/16 v3, 0x84

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v3, v1, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1461
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1466
    :goto_0
    return-void

    .line 1465
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 5
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    .line 1369
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1371
    const/16 v3, 0x6f

    invoke-virtual {p0, v3, p4}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1372
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1373
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "host"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1374
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1375
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1376
    monitor-enter p0

    .line 1377
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1379
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1385
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1387
    const/4 v3, 0x0

    return v3

    .line 1380
    :catch_0
    move-exception v1

    .line 1381
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for onSavePassword"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1385
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 1287
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1295
    :goto_0
    return-void

    .line 1290
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1291
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1292
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1293
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1294
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onSearchboxDispatchCompleteCallback(Ljava/lang/String;IZ)V
    .locals 3
    .parameter "function"
    .parameter "id"
    .parameter "success"

    .prologue
    .line 1923
    const/16 v1, 0x8f

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1924
    .local v0, msg:Landroid/os/Message;
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1925
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "function"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1926
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1928
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1929
    return-void
.end method

.method onSearchboxSuggestionsReceived(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .parameter "query"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1909
    .local p2, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v1, 0x8b

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1910
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1911
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "query"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1914
    return-void
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 1134
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1278
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1282
    :goto_0
    return-void

    .line 1281
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method openFileChooser(Ljava/lang/String;)Landroid/net/Uri;
    .locals 6
    .parameter "acceptType"

    .prologue
    const/4 v4, 0x0

    .line 1855
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v5, :cond_0

    .line 1872
    :goto_0
    return-object v4

    .line 1858
    :cond_0
    const/16 v5, 0x86

    invoke-virtual {p0, v5}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1859
    .local v2, myMessage:Landroid/os/Message;
    new-instance v3, Landroid/webkit/CallbackProxy$UploadFile;

    invoke-direct {v3, p0, v4}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1860
    .local v3, uploadFile:Landroid/webkit/CallbackProxy$UploadFile;
    new-instance v0, Landroid/webkit/CallbackProxy$UploadFileMessageData;

    invoke-direct {v0, v3, p1}, Landroid/webkit/CallbackProxy$UploadFileMessageData;-><init>(Landroid/webkit/CallbackProxy$UploadFile;Ljava/lang/String;)V

    .line 1861
    .local v0, data:Landroid/webkit/CallbackProxy$UploadFileMessageData;
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1862
    monitor-enter p0

    .line 1863
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1865
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1871
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1872
    invoke-virtual {v3}, Landroid/webkit/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v4

    goto :goto_0

    .line 1866
    :catch_0
    move-exception v1

    .line 1867
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "CallbackProxy"

    const-string v5, "Caught exception while waiting for openFileChooser"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    const-string v4, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1871
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 217
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 218
    return-void
.end method

.method setInstallableWebApp()V
    .locals 1

    .prologue
    .line 1892
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1896
    :goto_0
    return-void

    .line 1895
    :cond_0
    const/16 v0, 0x8a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 229
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 230
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 201
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 202
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 185
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 186
    return-void
.end method

.method shouldInterceptRequest(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 5
    .parameter "url"

    .prologue
    const/4 v2, 0x0

    .line 1258
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 1272
    :cond_0
    :goto_0
    return-object v1

    .line 1262
    :cond_1
    const/4 v1, 0x0

    .line 1264
    .local v1, r:Landroid/webkit/WebResourceResponse;
    :try_start_0
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v4, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v4, p1}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1269
    if-nez v1, :cond_0

    .line 1270
    const/16 v2, 0x6c

    invoke-virtual {p0, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 1265
    :catch_0
    move-exception v0

    .line 1266
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "CallbackProxy"

    const-string/jumbo v4, "mWebViewClient is null because WebView is destroyed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 1267
    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    .line 1173
    new-instance v2, Landroid/webkit/CallbackProxy$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 1174
    .local v2, res:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1175
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1177
    monitor-enter p0

    .line 1178
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1180
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1185
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1186
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 1181
    :catch_0
    move-exception v0

    .line 1182
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1185
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 1031
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1032
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 322
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 9
    .parameter "overrideUrl"

    .prologue
    const/high16 v8, 0x1000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    move v4, v5

    .line 312
    :goto_0
    return v4

    .line 244
    :cond_1
    const/4 v4, 0x0

    .line 246
    .local v4, override:Z
    const-string v7, "geo:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "tel:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "mailto:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string/jumbo v7, "rtsp://"

    invoke-virtual {p1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move v2, v6

    .line 252
    .local v2, isDispatcherWanted:Z
    :goto_1
    const-string/jumbo v7, "ro.da1.enable"

    invoke-static {v7, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 253
    .local v3, isNoContextMenu:Z
    if-eqz v3, :cond_5

    .line 255
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_4

    const-string/jumbo v5, "tel:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.htc.calendar"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v5, :cond_4

    .line 259
    const-string v5, "PRIME"

    const-string v6, "<CallBackProxy> Send to Calendar."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v6, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v6, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    .line 261
    goto :goto_0

    .end local v2           #isDispatcherWanted:Z
    .end local v3           #isNoContextMenu:Z
    :cond_3
    move v2, v5

    .line 246
    goto :goto_1

    .line 263
    .restart local v2       #isDispatcherWanted:Z
    .restart local v3       #isNoContextMenu:Z
    :cond_4
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    if-eqz v5, :cond_5

    if-eqz v2, :cond_5

    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.android.browser"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 266
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v1, v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 267
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 268
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 269
    const-string v5, "com.android.browser.application_id"

    iget-object v7, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const-string v5, "com.htc.HtcLinkifyDispatcher"

    const-string v7, "com.htc.HtcLinkifyDispatcher.HtcLinkifyDispatcherActivity"

    invoke-virtual {v1, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    :try_start_0
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 273
    const-string v5, "PRIME"

    const-string v7, "<CallBackProxy> Send to HtcLinkifyDispatcher."

    invoke-static {v5, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v6

    .line 274
    goto/16 :goto_0

    .line 275
    :catch_0
    move-exception v0

    .line 276
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v5, "PRIME"

    const-string v7, "<CallBackProxy> HtcLinkifyDispatcher not found."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .line 277
    goto/16 :goto_0

    .line 284
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v5, :cond_6

    .line 285
    const-string v5, "PRIME"

    const-string v6, "<CallBackProxy> Send to WebViewClient."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v6, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v6, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v4

    goto/16 :goto_0

    .line 291
    :cond_6
    const-string v5, "PRIME"

    const-string v6, "<CallBackProxy> Broadcast intent."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 295
    .restart local v1       #intent:Landroid/content/Intent;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 297
    const-string v5, "android.intent.category.BROWSABLE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 301
    const-string v5, "com.android.browser.application_id"

    iget-object v6, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 304
    :try_start_1
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 305
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 306
    :catch_1
    move-exception v5

    goto/16 :goto_0
.end method
