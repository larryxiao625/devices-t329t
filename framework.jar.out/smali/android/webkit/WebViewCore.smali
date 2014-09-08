.class public final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$ViewState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$NavigatorPermissionsData;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$AutoFillData;,
        Landroid/webkit/WebViewCore$TouchHighlightData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

#the value of this static final field might be set in the static constructor
.field private static final ENABLE_DEBUG_FLAG:Z = false

.field private static final ENABLE_INTERRUPT_DRAW:Ljava/lang/String; = "webcore.enableinterruptdraw"

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field private static final SHOW_INTERRUPT_INFO:Ljava/lang/String; = "webcore.showinterruptinfo"

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field private static final WEBVIEWCORE_CLS:I = 0x1

.field static final WebSite_Heavy_Flash_Content:[Ljava/lang/String; = null

.field private static final gHtcSendTouchMsg:Z = true

.field private static mRepaintScheduled:Z

.field private static m_bIsPauseTimes:Z

.field private static mbIsMSM8960Project:Z

.field private static sCurrentWebViewCoreHashCode:I

.field private static sHandleClass:I

.field private static sHandleMsgId:I

.field private static sHandleStartTime:D

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

.field private mDeviceMotionService:Landroid/webkit/DeviceMotionService;

.field private mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private mDrawLayersIsScheduled:Z

.field private mEnableInterruptDraw:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mFirstLayoutForNonStandardLoad:Z

.field private mFocusNode:I

.field mHTCWebCore:Landroid/webkit/HTCWebCore;

.field private mHighMemoryUsageThresholdMb:I

.field private mHighUsageDeltaMb:I

.field private mHtcZoom:Z

.field private mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

.field mInterruptDraw:Z

.field private mIsRestored:Z

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

.field private mLastHandleMsg:Landroid/os/Message;

.field private mLastHandleMsgTime:D

.field private mLastWebkitDrawTime:J

.field private mLowMemoryUsageThresholdMb:I

.field private mNativeClass:I

.field mNeedDelayGetReadContent:Z

.field private mPauseDeferDraw:Z

.field mRestoreScroll:Z

.field private mRestoredScale:F

.field private mRestoredTextWrapScale:F

.field private mRestoredX:I

.field private mRestoredY:I

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mShowInterruptInfo:Z

.field private mSplitPictureIsScheduled:Z

.field private mTextwrapWithProp:F

.field private mTouchMsgLock:Ljava/lang/Object;

.field private mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitDrawCnt:I

.field m_bForceDraw:Z

.field m_bNeedInvalidate:Z

.field public m_bPauseDrawContentPicture:Z

.field public m_bPauseDrawContentPictureCount:I

.field m_nNeedInvalidateCount:I

.field final m_nNeedInvalidateMaxCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 69
    sget-boolean v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v1, Landroid/webkit/WebViewCore;->ENABLE_DEBUG_FLAG:Z

    .line 75
    :try_start_0
    const-string/jumbo v1, "webcore"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 76
    const-string v1, "chromium_net"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x24

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x2b

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x4a

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x49

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x52

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9e

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x9f

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe0

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe1

    if-eq v1, v4, :cond_0

    sget-short v1, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x2a

    if-ne v1, v4, :cond_1

    :cond_0
    move v1, v3

    :goto_1
    sput-boolean v1, Landroid/webkit/WebViewCore;->mbIsMSM8960Project:Z

    .line 171
    const/16 v1, 0xc

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v4, "youtube.com"

    aput-object v4, v1, v2

    const-string v4, "cnn.com/video"

    aput-object v4, v1, v3

    const-string v4, "cnn.com/world"

    aput-object v4, v1, v6

    const-string v4, "espn.com"

    aput-object v4, v1, v7

    const-string v4, "espn.go.com"

    aput-object v4, v1, v8

    const/4 v4, 0x5

    const-string v5, "2advanced.com"

    aput-object v5, v1, v4

    const/4 v4, 0x6

    const-string v5, "http://www.gamer.com.tw"

    aput-object v5, v1, v4

    const/4 v4, 0x7

    const-string v5, "http://gamer.com.tw"

    aput-object v5, v1, v4

    const/16 v4, 0x8

    const-string v5, "bbc.co.uk/news/video_and_audio"

    aput-object v5, v1, v4

    const/16 v4, 0x9

    const-string v5, "fotologue.jp"

    aput-object v5, v1, v4

    const/16 v4, 0xa

    const-string/jumbo v5, "thisisvt.vom"

    aput-object v5, v1, v4

    const/16 v4, 0xb

    const-string v5, "bbc.co.uk/news/video_and_audio"

    aput-object v5, v1, v4

    sput-object v1, Landroid/webkit/WebViewCore;->WebSite_Heavy_Flash_Content:[Ljava/lang/String;

    .line 823
    sput-boolean v3, Landroid/webkit/WebViewCore;->m_bIsPauseTimes:Z

    .line 1043
    const/16 v1, 0x36

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "REVEAL_SELECTION"

    aput-object v4, v1, v2

    const-string v4, "REQUEST_LABEL"

    aput-object v4, v1, v3

    const-string v3, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v3, v1, v6

    const-string v3, "SCROLL_TEXT_INPUT"

    aput-object v3, v1, v7

    const-string v3, "LOAD_URL"

    aput-object v3, v1, v8

    const/4 v3, 0x5

    const-string v4, "STOP_LOADING"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "RELOAD"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "KEY_DOWN"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "KEY_UP"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "VIEW_SIZE_CHANGED"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "GO_BACK_FORWARD"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "SET_SCROLL_OFFSET"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "RESTORE_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "PAUSE_TIMERS"

    aput-object v4, v1, v3

    const/16 v3, 0xe

    const-string v4, "RESUME_TIMERS"

    aput-object v4, v1, v3

    const/16 v3, 0xf

    const-string v4, "CLEAR_CACHE"

    aput-object v4, v1, v3

    const/16 v3, 0x10

    const-string v4, "CLEAR_HISTORY"

    aput-object v4, v1, v3

    const/16 v3, 0x11

    const-string v4, "SET_SELECTION"

    aput-object v4, v1, v3

    const/16 v3, 0x12

    const-string v4, "REPLACE_TEXT"

    aput-object v4, v1, v3

    const/16 v3, 0x13

    const-string v4, "PASS_TO_JS"

    aput-object v4, v1, v3

    const/16 v3, 0x14

    const-string v4, "SET_GLOBAL_BOUNDS"

    aput-object v4, v1, v3

    const/16 v3, 0x15

    const-string v4, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v4, v1, v3

    const/16 v3, 0x16

    const-string v4, "CLICK"

    aput-object v4, v1, v3

    const/16 v3, 0x17

    const-string v4, "SET_NETWORK_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0x18

    const-string v4, "DOC_HAS_IMAGES"

    aput-object v4, v1, v3

    const/16 v3, 0x19

    const-string v4, "FAKE_CLICK"

    aput-object v4, v1, v3

    const/16 v3, 0x1a

    const-string v4, "DELETE_SELECTION"

    aput-object v4, v1, v3

    const/16 v3, 0x1b

    const-string v4, "LISTBOX_CHOICES"

    aput-object v4, v1, v3

    const/16 v3, 0x1c

    const-string v4, "SINGLE_LISTBOX_CHOICE"

    aput-object v4, v1, v3

    const/16 v3, 0x1d

    const-string v4, "MESSAGE_RELAY"

    aput-object v4, v1, v3

    const/16 v3, 0x1e

    const-string v4, "SET_BACKGROUND_COLOR"

    aput-object v4, v1, v3

    const/16 v3, 0x1f

    const-string v4, "SET_MOVE_FOCUS"

    aput-object v4, v1, v3

    const/16 v3, 0x20

    const-string v4, "SAVE_DOCUMENT_STATE"

    aput-object v4, v1, v3

    const/16 v3, 0x21

    const-string v4, "129"

    aput-object v4, v1, v3

    const/16 v3, 0x22

    const-string v4, "WEBKIT_DRAW"

    aput-object v4, v1, v3

    const/16 v3, 0x23

    const-string v4, "131"

    aput-object v4, v1, v3

    const/16 v3, 0x24

    const-string v4, "POST_URL"

    aput-object v4, v1, v3

    const/16 v3, 0x25

    const-string v4, "SPLIT_PICTURE_SET"

    aput-object v4, v1, v3

    const/16 v3, 0x26

    const-string v4, "CLEAR_CONTENT"

    aput-object v4, v1, v3

    const/16 v3, 0x27

    const-string v4, "SET_MOVE_MOUSE"

    aput-object v4, v1, v3

    const/16 v3, 0x28

    const-string v4, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v4, v1, v3

    const/16 v3, 0x29

    const-string v4, "REQUEST_CURSOR_HREF"

    aput-object v4, v1, v3

    const/16 v3, 0x2a

    const-string v4, "ADD_JS_INTERFACE"

    aput-object v4, v1, v3

    const/16 v3, 0x2b

    const-string v4, "LOAD_DATA"

    aput-object v4, v1, v3

    const/16 v3, 0x2c

    const-string v4, "TOUCH_UP"

    aput-object v4, v1, v3

    const/16 v3, 0x2d

    const-string v4, "TOUCH_EVENT"

    aput-object v4, v1, v3

    const/16 v3, 0x2e

    const-string v4, "SET_ACTIVE"

    aput-object v4, v1, v3

    const/16 v3, 0x2f

    const-string v4, "ON_PAUSE"

    aput-object v4, v1, v3

    const/16 v3, 0x30

    const-string v4, "ON_RESUME"

    aput-object v4, v1, v3

    const/16 v3, 0x31

    const-string v4, "FREE_MEMORY"

    aput-object v4, v1, v3

    const/16 v3, 0x32

    const-string v4, "VALID_NODE_BOUNDS"

    aput-object v4, v1, v3

    const/16 v3, 0x33

    const-string v4, "SAVE_WEBARCHIVE"

    aput-object v4, v1, v3

    const/16 v3, 0x34

    const-string v4, "WEBKIT_DRAW_LAYERS"

    aput-object v4, v1, v3

    const/16 v3, 0x35

    const-string v4, "REMOVE_JS_INTERFACE"

    aput-object v4, v1, v3

    sput-object v1, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2233
    sput v2, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 2235
    const-wide/16 v3, 0x0

    sput-wide v3, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 2236
    sput v2, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 2938
    sput-boolean v2, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void

    .line 77
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 78
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string/jumbo v1, "webcore"

    const-string v4, "Unable to load native support libraries."

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 153
    goto/16 :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 10
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, -0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 191
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 110
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 115
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 120
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 125
    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 127
    iput-boolean v7, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 136
    iput v5, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 138
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 139
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 140
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 141
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 142
    iput v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 144
    new-instance v5, Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-direct {v5, p0}, Landroid/webkit/DeviceMotionAndOrientationManager;-><init>(Landroid/webkit/WebViewCore;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    .line 167
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    .line 169
    iput-boolean v7, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    .line 2267
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastHandleMsg:Landroid/os/Message;

    .line 2268
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/webkit/WebViewCore;->mLastHandleMsgTime:D

    .line 2346
    new-instance v5, Ljava/lang/Object;

    invoke-direct/range {v5 .. v5}, Ljava/lang/Object;-><init>()V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mTouchMsgLock:Ljava/lang/Object;

    .line 2347
    new-instance v5, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2468
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2469
    iput v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2470
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2592
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2627
    iput-object v8, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2651
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    .line 2652
    iput v9, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 2963
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mPauseDeferDraw:Z

    .line 3277
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mHtcZoom:Z

    .line 3657
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mNeedDelayGetReadContent:Z

    .line 3664
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    .line 3683
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPicture:Z

    .line 3684
    iput v9, p0, Landroid/webkit/WebViewCore;->m_bPauseDrawContentPictureCount:I

    .line 3686
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bForceDraw:Z

    .line 3687
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->m_bNeedInvalidate:Z

    .line 3688
    iput v9, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateCount:I

    .line 3689
    iput v7, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateMaxCount:I

    .line 3690
    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mRestoreScroll:Z

    .line 3865
    const/high16 v5, 0x3f80

    iput v5, p0, Landroid/webkit/WebViewCore;->mTextwrapWithProp:F

    .line 3906
    iput v9, p0, Landroid/webkit/WebViewCore;->mFocusNode:I

    .line 193
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 194
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 195
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 198
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 204
    const-class v6, Landroid/webkit/WebViewCore;

    monitor-enter v6

    .line 205
    :try_start_0
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v5, :cond_0

    .line 207
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 208
    .local v4, t:Ljava/lang/Thread;
    const-string v5, "WebViewCoreThread"

    invoke-virtual {v4, v5}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 209
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :try_start_1
    const-class v5, Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .end local v4           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 221
    new-instance v5, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v5, p0, v8}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 223
    new-instance v5, Landroid/webkit/WebSettings;

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v5, v6, v7}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v5, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 226
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 228
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 230
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 234
    iget-object v5, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 236
    .local v2, manager:Landroid/app/ActivityManager;
    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 237
    .local v3, memInfo:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 241
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    .line 242
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    int-to-double v5, v5

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighMemoryUsageThresholdMb:I

    .line 244
    iget v5, p0, Landroid/webkit/WebViewCore;->mLowMemoryUsageThresholdMb:I

    div-int/lit8 v5, v5, 0x20

    iput v5, p0, Landroid/webkit/WebViewCore;->mHighUsageDeltaMb:I

    .line 247
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v9, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 249
    .local v1, init:Landroid/os/Message;
    sget-object v5, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 250
    return-void

    .line 212
    .end local v1           #init:Landroid/os/Message;
    .end local v2           #manager:Landroid/app/ActivityManager;
    .end local v3           #memInfo:Landroid/app/ActivityManager$MemoryInfo;
    .restart local v4       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v0

    .line 213
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v5, "webcore"

    const-string v7, "Caught exception while waiting for thread creation."

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const-string/jumbo v5, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v4           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5
.end method

.method private IsWebSiteSupportForceZoom()Z
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3875
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v6, :cond_1

    .line 3902
    :cond_0
    :goto_0
    return v4

    .line 3878
    :cond_1
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    .line 3880
    .local v3, url:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 3884
    const-string v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 3885
    const/4 v2, 0x7

    .line 3889
    .local v2, start:I
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    .line 3891
    .local v0, end:I
    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3893
    .local v1, host:Ljava/lang/String;
    const-string/jumbo v6, "www.google"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "&client="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "?client="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_2
    const-string v6, "&source="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "?source="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_3
    const-string v6, "&q="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "?q="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move v4, v5

    .line 3897
    goto :goto_0

    .line 3887
    .end local v0           #end:I
    .end local v1           #host:Ljava/lang/String;
    .end local v2           #start:I
    :cond_5
    const/4 v2, 0x0

    .restart local v2       #start:I
    goto :goto_1

    .line 3899
    .restart local v0       #end:I
    .restart local v1       #host:Ljava/lang/String;
    :cond_6
    const-string/jumbo v6, "maps.google"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "/maps?daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "/maps?"

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "&daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "?daddr="

    invoke-virtual {v1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_7
    move v4, v5

    .line 3900
    goto/16 :goto_0
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->webkitDraw(Z)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDrawLayers()V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$1302(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRevealSelection()V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeSetMonthValue(IIIIII)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeSetDateValue(IIIIII)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;IIIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeSetTimeValue(IIIIII)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$2300(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentInvalidateAll()V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeClick(IIZ)V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;Landroid/webkit/WebView$ViewSizeData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;IZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(IZII)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCloseIdleConnections()V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePauseFlash()V

    return-void
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResumeFlash()V

    return-void
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;ILandroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollLayer(ILandroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;I[I[I[IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(I[I[I[IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mTouchMsgLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeStopPaintingCaret()V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveImageSource(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Landroid/webkit/WebViewCore;->mbIsMSM8960Project:Z

    return v0
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeModifySelection(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;Ljava/util/Vector;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeFeaturePermissionsProvide(Ljava/util/Vector;Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSplitContent(I)V

    return-void
.end method

.method static synthetic access$7602(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$7700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePluginSurfaceReady()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeNotifyAnimationStarted(I)V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewCore;III)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->useMockDeviceOrientation()V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeAutoFillForm(I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePauseFPDoPlay()V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResumeFPDoPlay()V

    return-void
.end method

.method static synthetic access$8800()Z
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Landroid/webkit/WebViewCore;->ENABLE_DEBUG_FLAG:Z

    return v0
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeForceStopGifAnimation(Z)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return v0
.end method

.method static synthetic access$9002(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method static synthetic access$902(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$9102(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 1
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3534
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3535
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3536
    return-object v0
.end method

.method private calculateWindowWidth(I)I
    .locals 3
    .parameter "viewWidth"

    .prologue
    .line 2533
    move v0, p1

    .line 2534
    .local v0, width:I
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2535
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 2537
    const/16 v0, 0x3d4

    .line 2546
    :cond_0
    :goto_0
    return v0

    .line 2538
    :cond_1
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v1, :cond_2

    .line 2540
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2543
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3586
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3591
    :goto_0
    return-void

    .line 3589
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2413
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2414
    if-eqz p1, :cond_0

    .line 2415
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2417
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 3342
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3345
    :goto_0
    return-void

    .line 3343
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(IIZZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "onlyIfImeIsShowing"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2889
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v3}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2895
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2896
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2910
    :cond_0
    :goto_0
    return-void

    .line 2899
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 2900
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v4, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    if-eqz p3, :cond_2

    move v3, v1

    :goto_1
    if-eqz p4, :cond_3

    :goto_2
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    invoke-static {v4, v5, v3, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2903
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_4

    .line 2904
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_2
    move v3, v2

    .line 2900
    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    .line 2907
    .restart local v0       #msg:Landroid/os/Message;
    :cond_4
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private createSurface(Landroid/view/View;)Landroid/webkit/ViewManager$ChildView;
    .locals 3
    .parameter "pluginView"

    .prologue
    const/4 v0, 0x0

    .line 3510
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3527
    :goto_0
    return-object v0

    .line 3514
    :cond_0
    if-nez p1, :cond_1

    .line 3515
    const-string/jumbo v1, "webcore"

    const-string v2, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3520
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3522
    instance-of v1, p1, Landroid/view/SurfaceView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 3523
    check-cast v1, Landroid/view/SurfaceView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3525
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v0

    .line 3526
    .local v0, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 3545
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3546
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 6
    .parameter "standardLoad"

    .prologue
    const/16 v5, 0x118

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2971
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v2}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2973
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 2998
    :goto_0
    return-void

    .line 2975
    :cond_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mPauseDeferDraw:Z

    .line 2976
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2977
    const/4 v2, 0x0

    const-wide/16 v3, 0x1388

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 2979
    if-nez p1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v2, :cond_4

    .line 2980
    .local v0, updateViewState:Z
    :cond_1
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2984
    if-nez v0, :cond_2

    .line 2985
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2989
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->supportTouchOnly()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2990
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x83

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2995
    :cond_3
    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2996
    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 2997
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    goto :goto_0

    .end local v0           #updateViewState:Z
    :cond_4
    move v0, v1

    .line 2979
    goto :goto_1
.end method

.method public static enterMsgHandle(IIID)V
    .locals 0
    .parameter "webviewcoreHashCode"
    .parameter "level"
    .parameter "msgId"
    .parameter "enterTime"

    .prologue
    .line 2246
    sput p1, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 2247
    sput p2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    .line 2248
    sput-wide p3, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 2251
    sput p0, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 2252
    return-void
.end method

.method public static enterMsgHandle(Landroid/webkit/WebViewCore;IID)V
    .locals 1
    .parameter "core"
    .parameter "level"
    .parameter "msgId"
    .parameter "enterTime"

    .prologue
    .line 2238
    sput p1, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 2239
    sput p2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    .line 2240
    sput-wide p3, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 2243
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    sput v0, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 2244
    return-void

    .line 2243
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private formDidBlur(I)V
    .locals 3
    .parameter "nodePointer"

    .prologue
    .line 418
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 421
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 7
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3462
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v4, :cond_0

    .line 3483
    :goto_0
    return-object v3

    .line 3466
    :cond_0
    invoke-static {v3}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 3468
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3469
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3470
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to resolve "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to a plugin APK"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3475
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3476
    :catch_0
    move-exception v0

    .line 3477
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3478
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    .line 3479
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find plugin class ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") in the apk ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 2559
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 2560
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2562
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_1

    .line 2563
    const-wide/16 v2, 0x0

    .line 2569
    :cond_0
    return-wide v2

    .line 2565
    :cond_1
    const-wide/16 v2, 0x0

    .line 2566
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2567
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 3502
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3507
    :goto_0
    return-void

    .line 3505
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initialize()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 259
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 263
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 265
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 267
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 269
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 272
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 276
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    invoke-static {v0, v1, v2, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 283
    :cond_0
    const-string/jumbo v0, "webcore.showinterruptinfo"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    .line 286
    const-string/jumbo v0, "webcore.enableinterruptdraw"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    .line 288
    return-void
.end method

.method static isSupportedMediaMimeType(Ljava/lang/String;)Z
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 343
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    .line 344
    .local v0, fileType:I
    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p0, :cond_1

    const-string/jumbo v1, "video/m4v"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static isUpdatePicturePaused(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "core"

    .prologue
    .line 2824
    if-eqz p0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private keepScreenOn(Z)V
    .locals 3
    .parameter "screenOn"

    .prologue
    .line 3452
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3453
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x88

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3454
    .local v0, message:Landroid/os/Message;
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3455
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3457
    .end local v0           #message:Landroid/os/Message;
    :cond_0
    return-void

    .line 3454
    .restart local v0       #message:Landroid/os/Message;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "evt"
    .parameter "isDown"

    .prologue
    const/4 v8, 0x0

    .line 2436
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2437
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2439
    .local v2, unicodeChar:I
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 2442
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2445
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x42

    if-eq v1, v0, :cond_1

    .line 2448
    const/16 v0, 0x13

    if-lt v1, v0, :cond_2

    const/16 v0, 0x16

    if-gt v1, v0, :cond_2

    .line 2453
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2454
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v0, v3, v1, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2465
    :cond_1
    :goto_0
    return-void

    .line 2463
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method public static leaveMsgHandle(D)V
    .locals 5
    .parameter "leaveTime"

    .prologue
    const/4 v4, 0x0

    .line 2254
    sget-boolean v0, Landroid/webkit/WebViewCore;->ENABLE_DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    sget-wide v0, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v0, p0, v0

    const-wide v2, 0x408f400000000000L

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 2255
    const-string/jumbo v0, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[WebViewCore::handleMessage] handle msg=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Landroid/webkit/WebViewCore;->sHandleClass:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "::"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] over 1 sec. ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v2, p0, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    :cond_0
    sput v4, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    sput v4, Landroid/webkit/WebViewCore;->sHandleClass:I

    .line 2263
    const-wide/16 v0, 0x0

    sput-wide v0, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    .line 2264
    sput v4, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    .line 2265
    return-void
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2421
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2422
    return-void
.end method

.method private native nativeAutoFillForm(I)V
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClick(IIZ)V
.end method

.method private native nativeCloseIdleConnections()V
.end method

.method private native nativeContentInvalidateAll()V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method private native nativeFeaturePermissionsProvide(Ljava/util/Vector;Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "ZZ)V"
        }
    .end annotation
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method static native nativeFindAddressAndPhone(Ljava/lang/String;[I[I[I)I
.end method

.method static native nativeFindAddressAndPhone2(Ljava/lang/String;[I[I[I[I[I[I[I[I[I[I[I)I
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeForceStopGifAnimation(Z)V
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetLastFocusNode()I
.end method

.method private native nativeGetLayerTreeAsText()Ljava/lang/String;
.end method

.method private native nativeGetTouchHighlightRects(III)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeHandleTouchEvent(I[I[I[IIII)Z
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeModifySelection(II)Ljava/lang/String;
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativeNeedAcceleratedWebkitDraw()Z
.end method

.method private native nativeNotifyAnimationStarted(I)V
.end method

.method private native nativePause()V
.end method

.method private native nativePauseFPDoPlay()V
.end method

.method private native nativePauseFlash()V
.end method

.method private native nativePluginSurfaceReady()V
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeResume()V
.end method

.method private native nativeResumeFPDoPlay()V
.end method

.method private native nativeResumeFlash()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveImageSource(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveNodeString(II)Ljava/lang/String;
.end method

.method private native nativeRevealSelection()V
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeScrollLayer(ILandroid/graphics/Rect;)V
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetDateValue(IIIIII)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetInterruptDraw(Z)V
.end method

.method private native nativeSetIsPaused(Z)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetMonthValue(IIIIII)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private native nativeSetScrollOffset(IZII)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSize(IIIFIIIIZ)V
.end method

.method private native nativeSetSizeWithNode(IIIFIIIIZI)V
.end method

.method private native nativeSetTimeValue(IIIIII)V
.end method

.method private native nativeSplitContent(I)V
.end method

.method private native nativeStopPaintingCaret()V
.end method

.method private native nativeTouchUp(IIIII)V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdateLayers(II)Z
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private needTouchEvents(Z)V
    .locals 4
    .parameter "need"

    .prologue
    const/4 v1, 0x0

    .line 3296
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3297
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x74

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3301
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3297
    goto :goto_0
.end method

.method private openFileChooser(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "acceptType"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 430
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->openFileChooser(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 431
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_2

    .line 432
    const-string v7, ""

    .line 435
    .local v7, filePath:Ljava/lang/String;
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 439
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 441
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 445
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 450
    :goto_0
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v8

    .line 451
    .local v8, uriString:Ljava/lang/String;
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0, v7, v8}, Landroid/webkit/JWebCoreJavaBridge;->storeFilePathForContentUri(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    .end local v8           #uriString:Ljava/lang/String;
    :goto_1
    return-object v8

    .line 445
    .restart local v6       #cursor:Landroid/database/Cursor;
    .restart local v7       #filePath:Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 448
    :cond_1
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 454
    .end local v6           #cursor:Landroid/database/Cursor;
    .end local v7           #filePath:Ljava/lang/String;
    :cond_2
    const-string v8, ""

    goto :goto_1
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 316
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 321
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2788
    if-eqz p0, :cond_0

    .line 2789
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->enableSmoothTransition()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2801
    :cond_0
    :goto_0
    return-void

    .line 2791
    :cond_1
    monitor-enter p0

    .line 2792
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2793
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot pauseUpdatePicture, core destroyed or not initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    monitor-exit p0

    goto :goto_0

    .line 2798
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2796
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 2797
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2798
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2763
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2764
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2765
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2767
    return-void
.end method

.method private requestDatePicker(III)V
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 3382
    const-string/jumbo v0, "mc"

    const-string v1, "JNI requestDatePicker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3384
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestDatePicker(III)V

    .line 3386
    :cond_0
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 4
    .parameter "showKeyboard"

    .prologue
    const/4 v1, 0x0

    .line 3431
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3432
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x76

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v3, v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3436
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 3432
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 3419
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 3421
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->updatePositionRect()V

    .line 3423
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3427
    :cond_1
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[II)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"

    .prologue
    .line 3410
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3411
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[II)V

    .line 3414
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;[I[I)V
    .locals 1
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"

    .prologue
    .line 3402
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3403
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[I)V

    .line 3405
    :cond_0
    return-void
.end method

.method private requestMonthPicker(II)V
    .locals 2
    .parameter "year"
    .parameter "month"

    .prologue
    .line 3374
    const-string/jumbo v0, "mc"

    const-string v1, "JNI requestMonthPicker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3376
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->requestMonthPicker(II)V

    .line 3378
    :cond_0
    return-void
.end method

.method private requestTimePicker(III)V
    .locals 2
    .parameter "hour"
    .parameter "min"
    .parameter "second"

    .prologue
    .line 3390
    const-string/jumbo v0, "mc"

    const-string v1, "JNI requestTimePicker"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3391
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3392
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestTimePicker(III)V

    .line 3394
    :cond_0
    return-void
.end method

.method private restoreScale(FF)V
    .locals 1
    .parameter "scale"
    .parameter "textWrapScale"

    .prologue
    .line 3285
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3286
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    .line 3287
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    .line 3288
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3289
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    .line 3292
    :cond_0
    return-void
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2830
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2831
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 2832
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2833
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 2832
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2835
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2836
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2837
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2838
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2771
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2772
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2773
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2775
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 327
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 328
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 331
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 332
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2804
    if-eqz p0, :cond_0

    .line 2806
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-nez v0, :cond_1

    .line 2821
    :cond_0
    :goto_0
    return-void

    .line 2809
    :cond_1
    monitor-enter p0

    .line 2810
    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-nez v0, :cond_2

    .line 2811
    const-string/jumbo v0, "webcore"

    const-string v1, "Cannot resumeUpdatePicture, core destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    monitor-exit p0

    goto :goto_0

    .line 2819
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2814
    :cond_2
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeSetIsPaused(Z)V

    .line 2815
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2817
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2818
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 2819
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "autoname"

    .prologue
    .line 2428
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private selectAt(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3605
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3606
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x87

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3608
    :cond_0
    return-void
.end method

.method private selectChinesePhrase(II)V
    .locals 5
    .parameter "pnode"
    .parameter "index"

    .prologue
    const/16 v2, 0x215

    .line 3793
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 3794
    .local v1, m:Landroid/os/Message;
    iput v2, v1, Landroid/os/Message;->what:I

    .line 3795
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 3796
    iput p2, v1, Landroid/os/Message;->arg2:I

    .line 3798
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    .line 3799
    .local v0, editable:Z
    if-eqz v0, :cond_0

    :goto_0
    iput v2, v1, Landroid/os/Message;->what:I

    .line 3802
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    iget v3, v1, Landroid/os/Message;->what:I

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3803
    if-eqz v0, :cond_1

    .line 3804
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v2, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3807
    :goto_1
    return-void

    .line 3799
    :cond_0
    const/16 v2, 0x217

    goto :goto_0

    .line 3806
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const-wide/16 v3, 0xf

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v2, v1, v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_1
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 3349
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3352
    :goto_0
    return-void

    .line 3350
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2914
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 2915
    invoke-static {}, Landroid/webkit/JniUtil;->useChromiumHttpStack()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2918
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 2920
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 2923
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2924
    return-void
.end method

.method static sendStaticMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "messageType"
    .parameter "argument"

    .prologue
    .line 2778
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 2782
    :goto_0
    return-void

    .line 2781
    :cond_0
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, p0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 2550
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2551
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2554
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2931
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2932
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2936
    :cond_0
    return-void
.end method

.method private setLastActiveTime()V
    .locals 3

    .prologue
    .line 373
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->setLastActiveTime(J)V

    .line 374
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3595
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3600
    :goto_0
    return-void

    .line 3598
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setWebTextViewAutoFillable(ILjava/lang/String;)V
    .locals 3
    .parameter "queryId"
    .parameter "preview"

    .prologue
    .line 3439
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3440
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x85

    new-instance v2, Landroid/webkit/WebViewCore$AutoFillData;

    invoke-direct {v2, p1, p2}, Landroid/webkit/WebViewCore$AutoFillData;-><init>(ILjava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3444
    :cond_0
    return-void
.end method

.method private setupViewport(Z)V
    .locals 13
    .parameter "updateViewState"

    .prologue
    .line 3007
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    if-nez v9, :cond_1

    .line 3275
    :cond_0
    :goto_0
    return-void

    .line 3012
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 3015
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_3

    .line 3016
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_2

    .line 3017
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3020
    :cond_2
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_3

    .line 3021
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3026
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->forceUserScalable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 3027
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 3028
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_10

    .line 3029
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_4

    .line 3030
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    div-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3033
    :cond_4
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 3034
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    mul-int/lit8 v10, v10, 0x2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3048
    :cond_5
    :goto_1
    const/high16 v0, 0x3f80

    .line 3049
    .local v0, adjust:F
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_12

    .line 3052
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v9

    const/high16 v10, 0x42c8

    mul-float/2addr v9, v10

    float-to-int v9, v9

    const/16 v10, 0x64

    if-eq v9, v10, :cond_6

    .line 3053
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v0

    .line 3059
    :cond_6
    :goto_2
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getDefaultZoomScale()F

    move-result v9

    cmpl-float v9, v0, v9

    if-eqz v9, :cond_7

    .line 3060
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x8b

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-static {v9, v10, v11}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    .line 3063
    :cond_7
    const/high16 v9, 0x42c8

    mul-float/2addr v9, v0

    float-to-int v2, v9

    .line 3065
    .local v2, defaultScale:I
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_8

    .line 3066
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3068
    :cond_8
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_9

    .line 3069
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3071
    :cond_9
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_a

    .line 3072
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3076
    :cond_a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_b

    .line 3077
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v9, :cond_b

    .line 3078
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3081
    :cond_b
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v9, :cond_c

    .line 3082
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 3083
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3084
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3086
    :cond_c
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v9, v10, :cond_d

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v9, :cond_d

    .line 3088
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3090
    :cond_d
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_e

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v9, v10, :cond_e

    .line 3092
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 3094
    :cond_e
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v9, :cond_f

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v9, v2, :cond_f

    .line 3095
    const/4 v9, 0x0

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 3099
    :cond_f
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v9, :cond_13

    if-nez p1, :cond_13

    .line 3101
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 3102
    new-instance v5, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v5}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    .line 3103
    .local v5, viewState:Landroid/webkit/WebViewCore$ViewState;
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3104
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v9, v9

    const/high16 v10, 0x42c8

    div-float/2addr v9, v10

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3105
    iput v0, v5, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3107
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3109
    const/4 v9, 0x0

    iput v9, v5, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3110
    const/4 v9, 0x0

    iput-boolean v9, v5, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3111
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v9, v9, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v10, 0x6d

    invoke-static {v9, v10, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 3038
    .end local v0           #adjust:F
    .end local v2           #defaultScale:I
    .end local v5           #viewState:Landroid/webkit/WebViewCore$ViewState;
    :cond_10
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v9, :cond_11

    .line 3039
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    const/16 v10, 0x32

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 3041
    :cond_11
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v9, :cond_5

    .line 3042
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    const/16 v10, 0xc8

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    goto/16 :goto_1

    .line 3055
    .restart local v0       #adjust:F
    :cond_12
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v9, :cond_6

    .line 3056
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v9, v9

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v10, v10

    div-float v0, v9, v10

    goto/16 :goto_2

    .line 3120
    .restart local v2       #defaultScale:I
    :cond_13
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 3121
    .local v6, viewportWidth:I
    if-nez v6, :cond_15

    .line 3125
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    .line 3126
    .local v7, webViewWidth:I
    int-to-float v9, v7

    div-float/2addr v9, v0

    float-to-int v6, v9

    .line 3127
    if-nez v6, :cond_14

    .line 3135
    :cond_14
    :goto_3
    new-instance v9, Landroid/webkit/WebViewCore$ViewState;

    invoke-direct {v9}, Landroid/webkit/WebViewCore$ViewState;-><init>()V

    iput-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 3136
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMinScale:F

    .line 3137
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v10, v10

    const/high16 v11, 0x42c8

    div-float/2addr v10, v11

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mMaxScale:F

    .line 3138
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mDefaultScale:F

    .line 3139
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollX:I

    .line 3140
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mScrollY:I

    .line 3141
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    if-nez v9, :cond_16

    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    if-nez v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v9, :cond_16

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v9}, Landroid/webkit/BrowserFrame;->getShouldStartScrolledRight()Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x1

    :goto_4
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mShouldStartScrolledRight:Z

    .line 3146
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v9, :cond_17

    const/4 v9, 0x1

    :goto_5
    iput-boolean v9, v10, Landroid/webkit/WebViewCore$ViewState;->mMobileSite:Z

    .line 3147
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mIsRestored:Z

    if-eqz v9, :cond_19

    .line 3148
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x1

    iput-boolean v10, v9, Landroid/webkit/WebViewCore$ViewState;->mIsRestored:Z

    .line 3149
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3150
    iget v9, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_18

    .line 3151
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, p0, Landroid/webkit/WebViewCore;->mRestoredTextWrapScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3174
    :goto_6
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v9, v9, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v9, :cond_1d

    .line 3180
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3183
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3184
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v9, v9, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3185
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3188
    iget v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3189
    const/high16 v9, -0x4080

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3190
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3191
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3198
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3199
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v10, 0x0

    const/16 v11, 0x69

    invoke-static {v10, v11, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 3133
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v7           #webViewWidth:I
    :cond_15
    int-to-float v9, v6

    iget v10, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v7

    .restart local v7       #webViewWidth:I
    goto/16 :goto_3

    .line 3141
    :cond_16
    const/4 v9, 0x0

    goto :goto_4

    .line 3146
    :cond_17
    const/4 v9, 0x0

    goto :goto_5

    .line 3153
    :cond_18
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    goto :goto_6

    .line 3156
    :cond_19
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v9, :cond_1a

    .line 3157
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v11, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v11, v11

    const/high16 v12, 0x42c8

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto :goto_6

    .line 3159
    :cond_1a
    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v9, :cond_1b

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v9, v7, :cond_1b

    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_1b

    .line 3161
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    int-to-float v11, v7

    iget v12, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iput v11, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    iput v11, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3164
    :cond_1b
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3165
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 3167
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3169
    :cond_1c
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput v0, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    goto/16 :goto_6

    .line 3202
    :cond_1d
    if-nez v6, :cond_1e

    .line 3205
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v10, 0x0

    iput v10, v9, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_0

    .line 3207
    :cond_1e
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3211
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mViewScale:F

    .line 3212
    .local v3, tentativeScale:F
    const/4 v9, 0x0

    cmpl-float v9, v3, v9

    if-nez v9, :cond_22

    .line 3219
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v3, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3220
    int-to-float v9, v7

    div-float/2addr v9, v3

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 3221
    .local v4, tentativeViewWidth:I
    invoke-direct {p0, v4}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v8

    .line 3225
    .local v8, windowWidth:I
    int-to-float v9, v7

    int-to-float v10, v8

    div-float/2addr v9, v10

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3226
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v9

    if-nez v9, :cond_1f

    .line 3228
    iget v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    invoke-static {v9, v3}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3230
    :cond_1f
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_20

    .line 3232
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v10}, Landroid/webkit/WebView;->getReadingLevelScale()F

    move-result v10

    iput v10, v9, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    .line 3247
    .end local v4           #tentativeViewWidth:I
    .end local v8           #windowWidth:I
    :cond_20
    :goto_7
    int-to-float v9, v7

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3253
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v9, :cond_23

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v9

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    :goto_8
    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3257
    iget-boolean v9, p0, Landroid/webkit/WebViewCore;->mHtcZoom:Z

    if-eqz v9, :cond_24

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v9, :cond_24

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_24

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v9

    if-eqz v9, :cond_24

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v9

    if-nez v9, :cond_21

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v9, :cond_24

    iget-object v9, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v9}, Landroid/webkit/WebView;->isInZoomOverview()Z

    move-result v9

    if-eqz v9, :cond_24

    .line 3260
    :cond_21
    const/16 v9, 0x7d0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3265
    :goto_9
    const/4 v9, 0x0

    iput-boolean v9, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3266
    const/4 v9, 0x0

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3269
    iget-object v9, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v10, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v9, v10}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3272
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V

    goto/16 :goto_0

    .line 3237
    :cond_22
    iput v3, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    goto :goto_7

    .line 3253
    :cond_23
    iget v9, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    int-to-float v9, v9

    iget v10, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    int-to-float v10, v10

    mul-float/2addr v9, v10

    int-to-float v10, v6

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    goto :goto_8

    .line 3262
    :cond_24
    int-to-float v9, v7

    iget-object v10, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iget v10, v10, Landroid/webkit/WebViewCore$ViewState;->mTextWrapScale:F

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    iput v9, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    goto :goto_9
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;II)V
    .locals 3
    .parameter "childView"
    .parameter "orientation"
    .parameter "npp"

    .prologue
    .line 3489
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3498
    :goto_0
    return-void

    .line 3493
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3494
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3495
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3496
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3497
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFF)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"

    .prologue
    .line 3566
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3567
    new-instance v0, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3568
    .local v0, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3569
    iput p2, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3570
    iput p3, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3571
    iput p4, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3572
    iput p5, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3573
    iput p6, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3574
    iput p7, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3575
    iput p8, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3576
    iput p9, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3577
    iput p10, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3578
    iget v1, p0, Landroid/webkit/WebViewCore;->mFocusNode:I

    iput v1, v0, Landroid/webkit/WebViewCore$ShowRectData;->mFocusNode:I

    .line 3579
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x71

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3582
    .end local v0           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method private updateContent(I)V
    .locals 3
    .parameter "pointer"

    .prologue
    const/4 v2, 0x0

    .line 3811
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_2

    .line 3812
    invoke-static {}, Landroid/webkit/HTCWebCore;->isNeedGetBodyNode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v0, :cond_0

    .line 3813
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v0, v2}, Landroid/webkit/HTCWebCore;->setBodyNode(I)V

    .line 3815
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isEditable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3816
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/EditableWebView;

    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->updateVSbound()V

    .line 3819
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xcd

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3822
    :cond_2
    return-void
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3541
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3542
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 4
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    const/16 v3, 0x70

    const/4 v2, -0x1

    .line 3318
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 3322
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isEditable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3323
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 3325
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    check-cast v0, Landroid/webkit/EditableWebView;

    .line 3326
    .local v0, editableWebView:Landroid/webkit/EditableWebView;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v1, :cond_0

    .line 3327
    invoke-virtual {v0}, Landroid/webkit/EditableWebView;->updatePositionRect()V

    .line 3328
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, p1, v2, p1, v2}, Landroid/webkit/HTCWebCore;->nativeGetTextBetween(IIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/EditableWebView;->setCurrentEditingNodeText(Ljava/lang/String;)V

    .line 3334
    .end local v0           #editableWebView:Landroid/webkit/EditableWebView;
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v1, v3, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 3338
    :cond_1
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;I)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"

    .prologue
    .line 3306
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 3307
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3310
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3311
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3313
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 3003
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 3004
    return-void
.end method

.method private useMockDeviceOrientation()V
    .locals 1

    .prologue
    .line 3611
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    invoke-virtual {v0}, Landroid/webkit/DeviceMotionAndOrientationManager;->useMock()V

    .line 3612
    return-void
.end method

.method private viewSizeChanged(Landroid/webkit/WebView$ViewSizeData;)V
    .locals 16
    .parameter "data"

    .prologue
    .line 2474
    move-object/from16 v0, p1

    iget v6, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2475
    .local v6, w:I
    move-object/from16 v0, p1

    iget v12, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2476
    .local v12, h:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2477
    .local v4, textwrapWidth:I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2482
    .local v5, scale:F
    if-nez v6, :cond_0

    .line 2483
    const-string/jumbo v1, "webcore"

    const-string/jumbo v7, "skip viewSizeChanged as w is 0"

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :goto_0
    return-void

    .line 2487
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eqz v1, :cond_1

    .line 2488
    const/4 v1, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->setInterruptDraw(Z)V

    .line 2490
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Landroid/webkit/WebViewCore;->calculateWindowWidth(I)I

    move-result v2

    .line 2491
    .local v2, width:I
    move v3, v12

    .line 2492
    .local v3, height:I
    if-eq v2, v6, :cond_2

    .line 2493
    move-object/from16 v0, p1

    iget v13, v0, Landroid/webkit/WebView$ViewSizeData;->mHeightWidthRatio:F

    .line 2494
    .local v13, heightWidthRatio:F
    const/4 v1, 0x0

    cmpl-float v1, v13, v1

    if-lez v1, :cond_5

    move v15, v13

    .line 2495
    .local v15, ratio:F
    :goto_1
    int-to-float v1, v2

    mul-float/2addr v1, v15

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 2499
    .end local v13           #heightWidthRatio:F
    .end local v15           #ratio:F
    :cond_2
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    if-nez v1, :cond_3

    .line 2500
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewCore;->nativeGetLastFocusNode()I

    move-result v1

    move-object/from16 v0, p1

    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    .line 2502
    :cond_3
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v1

    sget-object v7, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v1, v7, :cond_7

    .line 2504
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/WebViewCore;->mFocusNode:I

    .line 2505
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_6

    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_2
    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v0, p1

    iget v11, v0, Landroid/webkit/WebView$ViewSizeData;->mFocusNode:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v11}, Landroid/webkit/WebViewCore;->nativeSetSizeWithNode(IIIFIIIIZI)V

    .line 2508
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/webkit/WebViewCore;->mFocusNode:I

    .line 2517
    :goto_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-nez v1, :cond_9

    const/4 v14, 0x1

    .line 2518
    .local v14, needInvalidate:Z
    :goto_4
    move-object/from16 v0, p0

    iput v6, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2519
    move-object/from16 v0, p0

    iput v12, v0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2520
    move-object/from16 v0, p0

    iput v5, v0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2521
    if-eqz v14, :cond_4

    .line 2525
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2527
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x75

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2494
    .end local v14           #needInvalidate:Z
    .restart local v13       #heightWidthRatio:F
    :cond_5
    int-to-float v1, v12

    int-to-float v7, v6

    div-float v15, v1, v7

    goto :goto_1

    .end local v13           #heightWidthRatio:F
    :cond_6
    move v7, v12

    .line 2505
    goto :goto_2

    .line 2511
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x12c

    invoke-virtual {v1, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2512
    move-object/from16 v0, p1

    iget v1, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    if-lez v1, :cond_8

    move-object/from16 v0, p1

    iget v7, v0, Landroid/webkit/WebView$ViewSizeData;->mActualViewHeight:I

    :goto_5
    move-object/from16 v0, p1

    iget v8, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    move-object/from16 v0, p1

    iget v9, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    move-object/from16 v0, p1

    iget-boolean v10, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v10}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZ)V

    goto :goto_3

    :cond_8
    move v7, v12

    goto :goto_5

    .line 2517
    :cond_9
    const/4 v14, 0x0

    goto :goto_4
.end method

.method private webkitDraw(Landroid/webkit/WebViewCore$DrawData;Z)V
    .locals 4
    .parameter "draw"
    .parameter "drawIsForLayerUpdate"

    .prologue
    .line 2720
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_6

    .line 2721
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v1

    iput-boolean v1, p1, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 2722
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 2723
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2724
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x3d4

    :goto_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 2730
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    if-eqz v1, :cond_1

    .line 2731
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    iput-object v1, p1, Landroid/webkit/WebViewCore$DrawData;->mViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2732
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewCore;->mInitialViewState:Landroid/webkit/WebViewCore$ViewState;

    .line 2734
    :cond_1
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v1, :cond_2

    .line 2735
    const/4 v1, 0x1

    iput-boolean v1, p1, Landroid/webkit/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    .line 2736
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebViewCore;->mFirstLayoutForNonStandardLoad:Z

    .line 2741
    :cond_2
    iput-boolean p2, p1, Landroid/webkit/WebViewCore$DrawData;->mInvalidateFullView:Z

    .line 2744
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isInBrowserApp()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2745
    const/4 v0, 0x0

    .line 2746
    .local v0, count:I
    :goto_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x23

    if-ge v0, v1, :cond_5

    .line 2747
    const-string/jumbo v1, "webcore"

    const-string/jumbo v2, "webkitDraw: waiting for zooming complete"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    add-int/lit8 v0, v0, 0x1

    .line 2750
    const-wide/16 v1, 0x5

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2751
    :catch_0
    move-exception v1

    goto :goto_1

    .line 2724
    .end local v0           #count:I
    :cond_3
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v1, :cond_4

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_0

    :cond_4
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_0

    .line 2756
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-static {v1, v2, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2759
    :cond_6
    return-void
.end method

.method private webkitDraw(Z)V
    .locals 12
    .parameter "drawIsForLayerUpdate"

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x82

    const/4 v7, 0x0

    .line 2654
    iput-boolean v7, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2655
    new-instance v3, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v3}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2657
    .local v3, draw:Landroid/webkit/WebViewCore$DrawData;
    iget-object v6, v3, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v8, v3, Landroid/webkit/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    invoke-direct {p0, v6, v8}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)I

    move-result v6

    iput v6, v3, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    .line 2658
    iget v6, v3, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    if-nez v6, :cond_7

    .line 2661
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eqz v6, :cond_2

    .line 2662
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v6, :cond_0

    .line 2663
    const-string/jumbo v6, "webcore"

    const-string v7, "[InterruptDraw][webkitDraw] webkitDraw abort due to drawIsPaused. no need to  enqueue"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2664
    :cond_0
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v10}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2665
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v11, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0xc8

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v6, v7, v8, v9}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2717
    :cond_1
    :goto_0
    return-void

    .line 2669
    :cond_2
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isPaused()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2678
    .local v0, currentTime:J
    iget-wide v8, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    sub-long v4, v0, v8

    .line 2679
    .local v4, duration:J
    const/4 v2, 0x0

    .line 2681
    .local v2, deferMsg:Z
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mPauseDeferDraw:Z

    if-nez v6, :cond_4

    const-wide/16 v8, 0x22

    cmp-long v6, v4, v8

    if-gez v6, :cond_4

    .line 2682
    iget v6, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 2683
    const/16 v6, 0xa

    iget v8, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    if-ne v6, v8, :cond_3

    .line 2684
    iput v7, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    .line 2685
    const-string/jumbo v6, "webcore"

    const-string v8, "[webViewCore::webkitDraw] defer message ===="

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    const/4 v2, 0x1

    .line 2690
    :cond_3
    :goto_1
    iput-wide v0, p0, Landroid/webkit/WebViewCore;->mLastWebkitDrawTime:J

    .line 2692
    if-eqz v2, :cond_5

    .line 2693
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    invoke-static {v11, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x1f4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v6, v7, v8, v9}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    goto :goto_0

    .line 2689
    :cond_4
    iput v7, p0, Landroid/webkit/WebViewCore;->mWebkitDrawCnt:I

    goto :goto_1

    .line 2696
    :cond_5
    iget-object v8, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    if-eqz p1, :cond_6

    const/4 v6, 0x1

    :goto_2
    invoke-static {v11, v10, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v6

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v8, v6}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_2

    .line 2706
    .end local v0           #currentTime:J
    .end local v2           #deferMsg:Z
    .end local v4           #duration:J
    :cond_7
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    if-eqz v6, :cond_a

    invoke-static {}, Landroid/webkit/HTCWebCore;->isNeedGetBodyNode()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->isEditable()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v6, v7, v11}, Landroid/webkit/HTCWebCore;->nativeGetBodyNode(ILandroid/graphics/Rect;)I

    move-result v6

    if-nez v6, :cond_a

    .line 2711
    :cond_9
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v6, v7}, Landroid/webkit/HTCWebCore;->setBodyNode(I)V

    .line 2715
    :cond_a
    iput-object v3, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    .line 2716
    invoke-direct {p0, v3, p1}, Landroid/webkit/WebViewCore;->webkitDraw(Landroid/webkit/WebViewCore$DrawData;Z)V

    goto/16 :goto_0
.end method

.method private webkitDrawLayers()V
    .locals 5

    .prologue
    const/16 v4, 0x75

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2632
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    .line 2634
    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 2635
    .local v0, needWebKitDraw:Z
    :cond_1
    if-nez v0, :cond_2

    .line 2637
    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mLastDrawData:Landroid/webkit/WebViewCore$DrawData;

    iget v3, v3, Landroid/webkit/WebViewCore$DrawData;->mBaseLayer:I

    invoke-direct {p0, v2, v3}, Landroid/webkit/WebViewCore;->nativeUpdateLayers(II)Z

    move-result v0

    .line 2639
    :cond_2
    if-eqz v0, :cond_3

    .line 2641
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 2642
    invoke-direct {p0, v1}, Landroid/webkit/WebViewCore;->webkitDraw(Z)V

    .line 2648
    :goto_0
    return-void

    .line 2644
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2645
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 361
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 362
    return-void
.end method

.method public checkBlock()D
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    .line 2273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v0, v4

    .line 2274
    .local v0, currTime:D
    sget-boolean v4, Landroid/webkit/WebViewCore;->ENABLE_DEBUG_FLAG:Z

    if-eqz v4, :cond_0

    .line 2275
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[WebViewCore::checkBlock] mHandleClass="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Landroid/webkit/WebViewCore;->sHandleClass:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHandleMsgId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mHandleStartTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-wide v6, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v6, v0, v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " hascode-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getIsonJsAlert()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2290
    :cond_1
    :goto_0
    return-wide v2

    .line 2285
    :cond_2
    sget v4, Landroid/webkit/WebViewCore;->sHandleMsgId:I

    if-eqz v4, :cond_1

    sget-wide v4, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    cmpl-double v4, v0, v4

    if-lez v4, :cond_1

    sget-wide v4, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v4, v0, v4

    const-wide v6, 0x40cd4c0000000000L

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 2287
    sget-wide v2, Landroid/webkit/WebViewCore;->sHandleStartTime:D

    sub-double v2, v0, v2

    goto :goto_0
.end method

.method checkCurrentSpell(Z)V
    .locals 3
    .parameter "updateMarkerOnly"

    .prologue
    const/16 v2, 0x232

    .line 3957
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3958
    .local v0, m:Landroid/os/Message;
    iput v2, v0, Landroid/os/Message;->what:I

    .line 3959
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3961
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3962
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3963
    return-void

    .line 3959
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method checkSpellOfString(IILjava/lang/String;Z)V
    .locals 6
    .parameter "node"
    .parameter "offset"
    .parameter "checkSpell"
    .parameter "showSuggest"

    .prologue
    .line 3920
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 3921
    .local v1, trim:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    .line 3926
    :goto_0
    return-void

    .line 3924
    :cond_0
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr p2, v0

    .line 3925
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v4, p2, v2

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/HTCWebCore;->doSpellCheck(Ljava/lang/String;IIIZ)V

    goto :goto_0
.end method

.method checkSpellOfStrings([I[I[Ljava/lang/String;)V
    .locals 11
    .parameter "nodes"
    .parameter "offsets"
    .parameter "checkSpells"

    .prologue
    .line 3929
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3930
    .local v4, nodeList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3931
    .local v6, startIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3932
    .local v1, endIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3934
    .local v8, wordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v9, p3

    if-ge v2, v9, :cond_1

    .line 3935
    aget-object v9, p3, v2

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 3936
    .local v7, trim:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    .line 3937
    aget v9, p1, v2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3938
    aget v9, p2, v2

    aget-object v10, p3, v2

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3939
    aget v9, p2, v2

    aget-object v10, p3, v2

    invoke-virtual {v10, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3940
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3934
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3944
    .end local v7           #trim:Ljava/lang/String;
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v3, v9, [I

    .line 3945
    .local v3, nodeArray:[I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v5, v9, [I

    .line 3946
    .local v5, startIndexArray:[I
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v0, v9, [I

    .line 3947
    .local v0, endIndexArray:[I
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 3948
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v3, v2

    .line 3949
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v5, v2

    .line 3950
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    aput v9, v0, v2

    .line 3947
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3953
    :cond_2
    iget-object v10, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v8}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v10, v9, v3, v5, v0}, Landroid/webkit/HTCWebCore;->doBatchSpellCheck([Ljava/lang/String;[I[I[I)V

    .line 3955
    return-void
.end method

.method public composingText(ILjava/lang/String;)V
    .locals 1
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 3719
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/webkit/WebViewCore;->composingText(ILjava/lang/String;I)V

    .line 3720
    return-void
.end method

.method public composingText(ILjava/lang/String;I)V
    .locals 2
    .parameter "pnode"
    .parameter "s"
    .parameter "c"

    .prologue
    .line 3723
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3724
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3725
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3726
    iput p3, v0, Landroid/os/Message;->arg2:I

    .line 3727
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3728
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3729
    return-void
.end method

.method contentDraw()V
    .locals 5

    .prologue
    .line 2846
    monitor-enter p0

    .line 2847
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 2849
    :cond_0
    monitor-exit p0

    .line 2875
    :goto_0
    return-void

    .line 2853
    :cond_1
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2854
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 2874
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2858
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eqz v0, :cond_5

    .line 2859
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v0, :cond_4

    .line 2860
    const-string/jumbo v0, "webcore"

    const-string v1, "[InterruptDraw][contentDraw] InterruptDraw enable, return directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2861
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 2865
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_6

    monitor-exit p0

    goto :goto_0

    .line 2870
    :cond_6
    const/4 v0, 0x1

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeNeedAcceleratedWebkitDraw()Z

    move-result v1

    if-ne v0, v1, :cond_7

    .line 2871
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2874
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 2873
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public deleteSurroundingText(IIIII)V
    .locals 4
    .parameter "pnode"
    .parameter "leftStart"
    .parameter "leftEnd"
    .parameter "rightStart"
    .parameter "rightEnd"

    .prologue
    const/16 v3, 0x1f7

    .line 3733
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3734
    .local v0, m:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 3735
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3736
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p3, v1, v2

    const/4 v2, 0x2

    aput p4, v1, v2

    const/4 v2, 0x3

    aput p5, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3737
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3738
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3741
    :goto_0
    return-void

    .line 3740
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0
.end method

.method destroy()V
    .locals 4

    .prologue
    .line 2396
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v1

    .line 2401
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x1

    #setter for: Landroid/webkit/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$1002(Landroid/webkit/WebViewCore$EventHub;Z)Z

    .line 2402
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2404
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$9700(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2405
    monitor-exit v1

    .line 2406
    return-void

    .line 2405
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method doSelection(IIZ)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "extent"

    .prologue
    .line 3763
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/webkit/WebViewCore;->doSelection(IIZZ)V

    .line 3764
    return-void
.end method

.method doSelection(IIZZ)V
    .locals 4
    .parameter "x"
    .parameter "y"
    .parameter "extent"
    .parameter "wordBase"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3774
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3775
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x213

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3776
    if-eqz p3, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3777
    if-eqz p4, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 3778
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3779
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3780
    return-void

    :cond_0
    move v1, v3

    .line 3776
    goto :goto_0

    :cond_1
    move v2, v3

    .line 3777
    goto :goto_1
.end method

.method doSelectionByIndex(IIII)V
    .locals 3
    .parameter "nodeStart"
    .parameter "start"
    .parameter "nodeEnd"
    .parameter "end"

    .prologue
    .line 3783
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3784
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x214

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3785
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3786
    iput p1, v0, Landroid/os/Message;->arg2:I

    .line 3787
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 v2, 0x1

    aput p4, v1, v2

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3788
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3789
    return-void
.end method

.method protected enterFullscreenForVideoLayer(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 629
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 630
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x89

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 632
    .local v0, message:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 633
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 472
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$2;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 479
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 529
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 511
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$5;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$5;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 522
    return-void
.end method

.method declared-synchronized getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 304
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3447
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method protected getDeviceMotionService()Landroid/webkit/DeviceMotionService;
    .locals 3

    .prologue
    .line 3621
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    if-nez v0, :cond_0

    .line 3622
    new-instance v0, Landroid/webkit/DeviceMotionService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceMotionService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    .line 3625
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionService:Landroid/webkit/DeviceMotionService;

    return-object v0
.end method

.method protected getDeviceOrientationService()Landroid/webkit/DeviceOrientationService;
    .locals 3

    .prologue
    .line 3629
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    if-nez v0, :cond_0

    .line 3630
    new-instance v0, Landroid/webkit/DeviceOrientationService;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    iget-object v2, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Landroid/webkit/DeviceOrientationService;-><init>(Landroid/webkit/DeviceMotionAndOrientationManager;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    .line 3633
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceOrientationService:Landroid/webkit/DeviceOrientationService;

    return-object v0
.end method

.method getLayerTreeAsText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2955
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WebViewCoreThread"

    if-eq v0, v1, :cond_0

    .line 2956
    const-string v0, ""

    .line 2958
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetLayerTreeAsText()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method getRectOf(I)Landroid/graphics/Rect;
    .locals 2
    .parameter "type"

    .prologue
    .line 3750
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3751
    .local v0, ret:Landroid/graphics/Rect;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    invoke-virtual {v1, v0, p1}, Landroid/webkit/HTCWebCore;->nativeGetRectOf(Landroid/graphics/Rect;I)V

    .line 3752
    return-object v0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method public getViewportWidth()I
    .locals 1

    .prologue
    .line 3871
    iget v0, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    return v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2950
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method hasMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 2350
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #getter for: Landroid/webkit/WebViewCore$EventHub;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 296
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 298
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 299
    return-void
.end method

.method public insetText(ILjava/lang/String;)V
    .locals 2
    .parameter "pnode"
    .parameter "s"

    .prologue
    .line 3710
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3711
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3712
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 3713
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3714
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3715
    return-void
.end method

.method public isThisWebCoreBlocked()Z
    .locals 2

    .prologue
    .line 2294
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget v1, Landroid/webkit/WebViewCore;->sCurrentWebViewCoreHashCode:I

    if-ne v0, v1, :cond_0

    .line 2295
    const/4 v0, 0x1

    .line 2296
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 369
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 583
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 615
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 594
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 605
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method layersDraw()V
    .locals 4

    .prologue
    .line 2879
    monitor-enter p0

    .line 2880
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawLayersIsScheduled:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 2884
    :goto_0
    return-void

    .line 2881
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isWatchLaterWebView()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x94

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2883
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2882
    :cond_1
    :try_start_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x94

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method loadStarted()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 3834
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_bNeedInvalidate:Z

    .line 3835
    iput v0, p0, Landroid/webkit/WebViewCore;->m_nNeedInvalidateCount:I

    .line 3836
    return-void
.end method

.method modifySelection(Z)V
    .locals 2
    .parameter "willModifyStart"

    .prologue
    .line 3756
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3757
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x212

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3758
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3759
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3760
    return-void

    .line 3758
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public native nativeContainVideoPlugin()Z
.end method

.method public native nativeGetHitNode(II)I
.end method

.method public native nativeGetPluginCount()I
.end method

.method protected navigatorPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onNavigatorPermissionsHidePrompt()V

    .line 575
    return-void
.end method

.method protected navigatorPermissionsShowPrompt(Ljava/util/Vector;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "appid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, features:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$6;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$6;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, p2, v1}, Landroid/webkit/CallbackProxy;->onNavigatorPermissionsShowPrompt(Ljava/util/Vector;Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 568
    return-void
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/webkit/WebViewCore$4;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    .line 501
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 502
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 487
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$3;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 493
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$9600(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2389
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2384
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2385
    return-void
.end method

.method removeTouchMessages()V
    .locals 2

    .prologue
    .line 2370
    const/16 v0, 0x8d

    invoke-virtual {p0, v0}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 2371
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mTouchMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2372
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 2373
    monitor-exit v1

    .line 2374
    return-void

    .line 2373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method rescanSpellings()V
    .locals 4

    .prologue
    const/16 v3, 0x233

    .line 3965
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3966
    .local v0, m:Landroid/os/Message;
    iput v3, v0, Landroid/os/Message;->what:I

    .line 3968
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v2, 0x232

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3969
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v1, v3}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3970
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3971
    return-void
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2309
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2310
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2318
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2319
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2322
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2323
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2331
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2332
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2327
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2328
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2313
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2314
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2305
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2306
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2335
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$5100(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2337
    return-void
.end method

.method sendMessageDelayed(IIILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2379
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p5, p6}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2380
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2340
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2341
    return-void
.end method

.method sendTouchMessage(ILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2360
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mTouchMsgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2361
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebViewCore;->hasMessage(I)Z

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2362
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mTouchMsgQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 2366
    :goto_0
    monitor-exit v1

    .line 2367
    return-void

    .line 2364
    :cond_1
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 2366
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDelayReadMode(Z)V
    .locals 0
    .parameter "need"

    .prologue
    .line 3659
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mNeedDelayGetReadContent:Z

    .line 3660
    return-void
.end method

.method public setEditable(Z)V
    .locals 2
    .parameter "editable"

    .prologue
    .line 3702
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3703
    .local v0, m:Landroid/os/Message;
    const/16 v1, 0x1f4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3704
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 3705
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v0}, Landroid/webkit/WebViewCore$EventHub;->access$9200(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 3706
    return-void

    .line 3704
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHTCWebCore(Landroid/webkit/HTCWebCore;)V
    .locals 0
    .parameter "htcWebCore"

    .prologue
    .line 3698
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mHTCWebCore:Landroid/webkit/HTCWebCore;

    .line 3699
    return-void
.end method

.method public setHtcZoom(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 3280
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mHtcZoom:Z

    .line 3281
    return-void
.end method

.method protected setInstallableWebApp()V
    .locals 1

    .prologue
    .line 622
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->setInstallableWebApp()V

    .line 623
    return-void
.end method

.method public setInterruptDraw(Z)V
    .locals 3
    .parameter "bSignal"

    .prologue
    .line 3669
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mEnableInterruptDraw:Z

    if-nez v0, :cond_1

    .line 3679
    :cond_0
    :goto_0
    return-void

    .line 3672
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    if-eq v0, p1, :cond_0

    .line 3675
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mShowInterruptInfo:Z

    if-eqz v0, :cond_2

    .line 3676
    const-string/jumbo v0, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[InterruptDraw][setInterruptDraw] bInterruptDraw: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3677
    :cond_2
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mInterruptDraw:Z

    .line 3678
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetInterruptDraw(Z)V

    goto :goto_0
.end method

.method public setIsLoading(Z)V
    .locals 3
    .parameter "bIsLoading"

    .prologue
    .line 3851
    if-nez p1, :cond_0

    .line 3852
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->m_bForceDraw:Z

    .line 3855
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 3856
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0xcc

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3859
    :cond_1
    if-nez p1, :cond_2

    .line 3862
    :cond_2
    return-void
.end method

.method public setMockDeviceOrientation(ZDZDZD)V
    .locals 10
    .parameter "canProvideAlpha"
    .parameter "alpha"
    .parameter "canProvideBeta"
    .parameter "beta"
    .parameter "canProvideGamma"
    .parameter "gamma"

    .prologue
    .line 3616
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mDeviceMotionAndOrientationManager:Landroid/webkit/DeviceMotionAndOrientationManager;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move-wide v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/DeviceMotionAndOrientationManager;->setMockOrientation(ZDZDZD)V

    .line 3618
    return-void
.end method

.method setProgress(I)V
    .locals 2
    .parameter "newProgress"

    .prologue
    .line 3840
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 3841
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setProgress(I)V

    .line 3843
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mPauseDeferDraw:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x46

    if-le p1, v0, :cond_1

    .line 3844
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mPauseDeferDraw:Z

    .line 3845
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v1, 0x118

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 3847
    :cond_1
    return-void
.end method

.method protected setScreenOrientationLock(Ljava/lang/String;)V
    .locals 7
    .parameter "orientation"

    .prologue
    const/4 v2, 0x1

    .line 383
    const/4 v3, 0x1

    .line 386
    .local v3, sysAutoRotate:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "accelerometer_rotation"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 392
    :goto_0
    const-string v4, "landscape"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 393
    if-ne v3, v2, :cond_0

    const/4 v2, 0x6

    .line 402
    .local v2, orientationValue:I
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 403
    .local v0, containingActivity:Landroid/app/Activity;
    new-instance v4, Landroid/webkit/WebViewCore$1;

    invoke-direct {v4, p0, v0, v2}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;Landroid/app/Activity;I)V

    invoke-virtual {v0, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 410
    return-void

    .line 388
    .end local v0           #containingActivity:Landroid/app/Activity;
    .end local v2           #orientationValue:I
    :catch_0
    move-exception v1

    .line 389
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string/jumbo v4, "webcore"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to access system settings to attain auto-rotate setting. "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 393
    .end local v1           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 394
    :cond_1
    const-string/jumbo v4, "portrait"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 395
    if-ne v3, v2, :cond_2

    const/4 v2, 0x7

    .restart local v2       #orientationValue:I
    :cond_2
    goto :goto_1

    .line 398
    .end local v2           #orientationValue:I
    :cond_3
    const/4 v2, -0x1

    .restart local v2       #orientationValue:I
    goto :goto_1
.end method

.method setTextwrapWithProp(F)V
    .locals 0
    .parameter "prop"

    .prologue
    .line 3867
    iput p1, p0, Landroid/webkit/WebViewCore;->mTextwrapWithProp:F

    .line 3868
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2944
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2945
    return-void
.end method

.method splitContent(I)V
    .locals 2
    .parameter "content"

    .prologue
    .line 2574
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v0, :cond_0

    .line 2575
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 2576
    const/16 v0, 0x85

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2578
    :cond_0
    return-void
.end method

.method stopLoading()V
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_0

    .line 2217
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 2219
    :cond_0
    return-void
.end method

.method public updateRestoreScroll(II)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 3826
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 3827
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 3828
    return-void
.end method
