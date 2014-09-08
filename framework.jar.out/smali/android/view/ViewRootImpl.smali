.class public final Landroid/view/ViewRootImpl;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/View$AttachInfo$Callbacks;
.implements Landroid/view/HardwareRenderer$HardwareDrawCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionController;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnection;,
        Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;,
        Landroid/view/ViewRootImpl$RunQueue;,
        Landroid/view/ViewRootImpl$CalledFromWrongThreadException;,
        Landroid/view/ViewRootImpl$TrackballAxis;,
        Landroid/view/ViewRootImpl$W;,
        Landroid/view/ViewRootImpl$InputMethodCallback;,
        Landroid/view/ViewRootImpl$TakenSurfaceHolder;,
        Landroid/view/ViewRootImpl$InputEventMessage;,
        Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;,
        Landroid/view/ViewRootImpl$ResizedInfo;
    }
.end annotation


# static fields
.field public static final CHECK_FOCUS:I = 0x3f5

.field public static final CLOSE_SYSTEM_DIALOGS:I = 0x3f6

.field private static final DBG:Z = false

.field private static final DEBUG_ANIM_CALLBACK:Z = false

.field private static final DEBUG_CONFIGURATION:Z = false

.field private static final DEBUG_DIALOG:Z = false

.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_FPS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_HAPTIC_STACK:Z = false

.field private static final DEBUG_IMF:Z = false

.field private static final DEBUG_INPUT_RESIZE:Z = false

.field private static final DEBUG_LAYOUT:Z = false

.field private static final DEBUG_ORIENTATION:Z = false

.field private static final DEBUG_PEN:Z = false

.field private static final DEBUG_PERFORMANCE:Z = false

.field private static final DEBUG_TRACKBALL:Z = false

.field public static final DIE:I = 0x3e9

.field public static final DISPATCH_APP_VISIBILITY:I = 0x3f0

.field public static final DISPATCH_DRAG_EVENT:I = 0x3f7

.field public static final DISPATCH_DRAG_LOCATION_EVENT:I = 0x3f8

.field public static final DISPATCH_GENERIC_MOTION:I = 0x3fa

.field public static final DISPATCH_GET_NEW_SURFACE:I = 0x3f1

.field public static final DISPATCH_KEY:I = 0x3ed

.field public static final DISPATCH_KEY_FROM_IME:I = 0x3f3

.field public static final DISPATCH_PEN:I = 0x44c

.field public static final DISPATCH_POINTER:I = 0x3ee

.field public static final DISPATCH_SYSTEM_UI_VISIBILITY:I = 0x3f9

.field public static final DISPATCH_TRACKBALL:I = 0x3ef

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID:I = 0x3fd

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID:I = 0x3fe

.field public static final DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT:I = 0x3ff

.field public static final DO_PERFORM_ACCESSIBILITY_ACTION:I = 0x3fc

.field public static final DO_TRAVERSAL:I = 0x3e8

.field public static final FINISHED_EVENT:I = 0x3f2

.field public static final FINISH_INPUT_CONNECTION:I = 0x3f4

.field private static final LOCAL_LOGV:Z = false

.field static final MAX_TRACKBALL_DELAY:I = 0xfa

.field private static final MEASURE_LATENCY:Z = false

.field private static final PEN_STYLUS:Z = true

.field public static final PROCESS_INPUT_EVENTS:I = 0x400

.field private static final PROPERTY_PROFILE_RENDERING:Ljava/lang/String; = "viewancestor.profile_rendering"

.field public static final RELOCATED:I = 0x401

.field public static final RESIZED:I = 0x3ea

.field public static final RESIZED_REPORT:I = 0x3eb

#the value of this static final field might be set in the static constructor
.field private static final SHOW_FPS:Z = false

#the value of this static final field might be set in the static constructor
.field private static final SUPPORT_PEN_EVENT:Z = false

.field private static final TAG:Ljava/lang/String; = "ViewRootImpl"

.field private static final TAG_HAPTIC_STACK:Ljava/lang/String; = "HapticStack"

.field public static final UPDATE_CONFIGURATION:I = 0x3fb

.field private static final WATCH_POINTER:Z = false

.field public static final WINDOW_FOCUS_CHANGED:I = 0x3ec

.field private static lt:Landroid/os/LatencyTimer;

.field static mInitialized:Z

.field static final mResizeInterpolator:Landroid/view/animation/Interpolator;

.field static final mStaticInit:Ljava/lang/Object;

.field static final sConfigCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field static sFirstDrawComplete:Z

.field static final sFirstDrawHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastDrawTime:I

.field private static final sLogFps:Z

.field static final sRunQueues:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue;",
            ">;"
        }
    .end annotation
.end field

.field static sWindowSession:Landroid/view/IWindowSession;


# instance fields
.field mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

.field mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

.field final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAddNesting:I

.field mAdded:Z

.field mAddedTouchMode:Z

.field mAppVisible:Z

.field final mAttachInfo:Landroid/view/View$AttachInfo;

.field mAudioManager:Landroid/media/AudioManager;

.field mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

.field mConfigurationChanged:Z

.field mCurScrollY:I

.field final mCurrentDirty:Landroid/graphics/Rect;

.field mCurrentDragView:Landroid/view/View;

.field private final mDensity:I

.field mDirty:Landroid/graphics/Rect;

.field mDragDescription:Landroid/content/ClipDescription;

.field final mDragPoint:Landroid/graphics/PointF;

.field mDrawingAllowed:Z

.field mFallbackEventHandler:Landroid/view/FallbackEventHandler;

.field private mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

.field mFirst:Z

.field mFocusedView:Landroid/view/View;

.field private mFpsNumFrames:I

.field private mFpsPrevTime:J

.field private mFpsStartTime:J

.field mFullRedrawNeeded:Z

.field mGhostView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mHardwareYOffset:I

.field mHasHadWindowFocus:Z

.field mHeight:I

.field private mHolder:Landroid/view/SurfaceHolder;

.field mInputChannel:Landroid/view/InputChannel;

.field protected final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mInputEventDeliverPostImeTimeNanos:J

.field private mInputEventDeliverTimeNanos:J

.field private mInputEventReceiveTimeNanos:J

.field private final mInputHandler:Landroid/view/InputHandler;

.field final mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

.field mInputQueue:Landroid/view/InputQueue;

.field mInputQueueCallback:Landroid/view/InputQueue$Callback;

.field mIsAnimating:Z

.field mIsCreating:Z

.field mIsSketcherDisabledInCurrentTask:Z

.field final mLastConfiguration:Landroid/content/res/Configuration;

.field mLastDrawDurationNanos:J

.field final mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

.field mLastInCompatMode:Z

.field mLastJoystickXDirection:I

.field mLastJoystickXKeyCode:I

.field mLastJoystickYDirection:I

.field mLastJoystickYKeyCode:I

.field mLastPenButtonState:I

.field mLastScrolledFocus:Landroid/view/View;

.field final mLastTouchPoint:Landroid/graphics/PointF;

.field mLastTrackballTime:J

.field mLastTraversalFinishedTimeNanos:J

.field mLastWasImTarget:Z

.field mLayoutRequested:Z

.field volatile mLocalDragState:Ljava/lang/Object;

.field final mLocation:Landroid/view/WindowLeaked;

.field mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

.field mNewSurfaceNeeded:Z

.field mOrigWindowType:I

.field mPenModeStatus:I

.field final mPendingConfiguration:Landroid/content/res/Configuration;

.field final mPendingContentInsets:Landroid/graphics/Rect;

.field mPendingEventSeq:I

.field final mPendingEvents:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

.field private mPendingTransitions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/LayoutTransition;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingVisibleInsets:Landroid/graphics/Rect;

.field final mPreviousDirty:Landroid/graphics/Rect;

.field final mPreviousTransparentRegion:Landroid/graphics/Region;

.field private mProfile:Z

.field private mProfileRendering:Z

.field mRealFocusedView:Landroid/view/View;

.field private mRenderProfiler:Ljava/lang/Thread;

.field private volatile mRenderProfilingEnabled:Z

.field mReportNextDraw:Z

.field mResizeAlpha:I

.field mResizeBuffer:Landroid/view/HardwareLayer;

.field mResizeBufferDuration:I

.field mResizeBufferStartTime:J

.field final mResizePaint:Landroid/graphics/Paint;

.field mScrollMayChange:Z

.field mScrollY:I

.field mScroller:Landroid/widget/Scroller;

.field mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

.field mSeq:I

.field mSoftInputMode:I

.field mStopped:Z

.field private final mSurface:Landroid/view/Surface;

.field mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

.field mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

.field final mTargetSdkVersion:I

.field final mTempRect:Landroid/graphics/Rect;

.field final mThread:Ljava/lang/Thread;

.field final mTmpLocation:[I

.field final mTmpValue:Landroid/util/TypedValue;

.field final mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

.field final mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

.field mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field final mTransparentRegion:Landroid/graphics/Region;

.field mTraversalScheduled:Z

.field mView:Landroid/view/View;

.field final mViewConfiguration:Landroid/view/ViewConfiguration;

.field mViewVisibility:I

.field final mVisRect:Landroid/graphics/Rect;

.field mWantDoubleBuffering:Z

.field mWidth:I

.field mWillDrawSoon:Z

.field final mWinFrame:Landroid/graphics/Rect;

.field final mWindow:Landroid/view/ViewRootImpl$W;

.field final mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

.field mWindowAttributesChanged:Z

.field mWindowAttributesChangesFlag:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    const-string/jumbo v0, "profiler.fps"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->SHOW_FPS:Z

    .line 114
    const-string/jumbo v0, "profiler.logfps"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/view/ViewRootImpl;->sLogFps:Z

    .line 131
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->HtcTabletDevice:Z

    sput-boolean v0, Landroid/view/ViewRootImpl;->SUPPORT_PEN_EVENT:Z

    .line 149
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    const-string v1, "HapticStack"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    and-int/2addr v0, v1

    sput-boolean v0, Landroid/view/ViewRootImpl;->DEBUG_HAPTIC_STACK:Z

    .line 160
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    .line 161
    sput-boolean v3, Landroid/view/ViewRootImpl;->mInitialized:Z

    .line 163
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    .line 166
    sput-boolean v3, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    .line 305
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 384
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 171
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 172
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 173
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    .line 182
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    .line 185
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    .line 186
    iput v4, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 192
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 205
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 206
    iput v5, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 210
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 212
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 225
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 226
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    .line 241
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWantDoubleBuffering:Z

    .line 252
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    .line 257
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 259
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 260
    iput v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 264
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    .line 272
    iput v5, p0, Landroid/view/ViewRootImpl;->mPenModeStatus:I

    .line 273
    iput v4, p0, Landroid/view/ViewRootImpl;->mLastPenButtonState:I

    .line 274
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mIsSketcherDisabledInCurrentTask:Z

    .line 282
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    .line 283
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    .line 284
    new-instance v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    invoke-direct {v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    .line 287
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 288
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 314
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    .line 315
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    .line 322
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 323
    iput-wide v7, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 344
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v0, p0, v4}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    :goto_0
    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 433
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 456
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 1939
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    .line 4114
    new-instance v0, Landroid/view/ViewRootImpl$2;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$2;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    .line 4832
    new-instance v0, Landroid/view/ViewRootImpl$3;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$3;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    .line 395
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewRootImpl;->getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;

    .line 397
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    .line 398
    new-instance v0, Landroid/view/WindowLeaked;

    invoke-direct {v0, v1}, Landroid/view/WindowLeaked;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    .line 399
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    invoke-virtual {v0}, Landroid/view/WindowLeaked;->fillInStackTrace()Ljava/lang/Throwable;

    .line 400
    iput v5, p0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 401
    iput v5, p0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 402
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 403
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 404
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    .line 405
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    .line 406
    new-instance v0, Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$W;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    .line 407
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    .line 408
    new-instance v0, Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$InputMethodCallback;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    .line 409
    const/16 v0, 0x8

    iput v0, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 410
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    .line 411
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    .line 412
    iput-boolean v6, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 413
    iput-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 414
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 415
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    .line 417
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 419
    new-instance v0, Landroid/view/View$AttachInfo;

    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-direct {v0, v1, v2, p0, p0}, Landroid/view/View$AttachInfo;-><init>(Landroid/view/IWindowSession;Landroid/view/IWindow;Landroid/os/Handler;Landroid/view/View$AttachInfo$Callbacks;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 420
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 421
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mDensity:I

    .line 422
    invoke-static {p1}, Lcom/android/internal/policy/PolicyManager;->makeNewFallbackEventHandler(Landroid/content/Context;)Landroid/view/FallbackEventHandler;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    .line 423
    const-string/jumbo v0, "viewancestor.profile_rendering"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    .line 427
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->isSupportDoubleBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkDoubleBuffering(Landroid/content/Context;)V

    .line 430
    :cond_0
    return-void

    :cond_1
    move-object v0, v1

    .line 344
    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/view/ViewRootImpl;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    return v0
.end method

.method static synthetic access$100(Landroid/view/ViewRootImpl;Landroid/view/InputQueue$FinishedCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V

    return-void
.end method

.method static synthetic access$200(Landroid/view/ViewRootImpl;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/view/ViewRootImpl;Landroid/view/MotionEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchMotion(Landroid/view/MotionEvent;Z)V

    return-void
.end method

.method static synthetic access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;
    .locals 1
    .parameter "x0"

    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method public static addConfigCallback(Landroid/content/ComponentCallbacks;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 450
    sget-object v1, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v1

    .line 451
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static addFirstDrawHandler(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 442
    sget-object v1, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v1

    .line 443
    :try_start_0
    sget-boolean v0, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v0, :cond_0

    .line 444
    sget-object v0, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_0
    monitor-exit v1

    .line 447
    return-void

    .line 446
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private calculatePenAction(II)I
    .locals 5
    .parameter "oldPenState"
    .parameter "newPenState"

    .prologue
    const/4 v4, 0x1

    .line 5419
    xor-int v1, p1, p2

    .line 5420
    .local v1, changedBits:I
    const/4 v0, 0x2

    .line 5422
    .local v0, action:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    .line 5423
    shr-int v3, v1, v2

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    .line 5424
    shr-int v3, p1, v2

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 5425
    add-int/lit8 v3, v2, 0x8

    shl-int v3, v4, v3

    or-int/lit8 v0, v3, 0x5

    .line 5434
    :cond_0
    :goto_1
    return v0

    .line 5428
    :cond_1
    add-int/lit8 v3, v2, 0x8

    shl-int v3, v4, v3

    or-int/lit8 v0, v3, 0x6

    .line 5430
    goto :goto_1

    .line 5422
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static captureMotionLog(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "subTag"
    .parameter "ev"

    .prologue
    const/16 v3, 0x2c

    .line 3530
    if-eqz p1, :cond_0

    const-string v1, "debug.captureevent"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    .line 3549
    :cond_0
    :goto_0
    return-void

    .line 3535
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3536
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3537
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3538
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3540
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3541
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3542
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3543
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3544
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3545
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3546
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3547
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3548
    const-string v1, "ViewRootImpl"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private checkDoubleBuffering(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 378
    new-instance v0, Landroid/view/DoubleBufferConfig;

    invoke-direct {v0, p1}, Landroid/view/DoubleBufferConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/view/DoubleBufferConfig;->wantDoubleBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->requestDoubleBuffering()V

    .line 380
    :cond_0
    return-void
.end method

.method private checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 3490
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v2, v2, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-nez v2, :cond_1

    .line 3522
    :cond_0
    :goto_0
    return v1

    .line 3495
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 3496
    .local v0, action:I
    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 3501
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_0

    .line 3510
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isNavigationKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3511
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    move-result v1

    goto :goto_0

    .line 3517
    :cond_3
    invoke-static {p1}, Landroid/view/ViewRootImpl;->isTypingKey(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3518
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    goto :goto_0
.end method

.method private deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V
    .locals 5
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3350
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v4, :cond_0

    .line 3351
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v4, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 3354
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    .line 3355
    .local v1, source:I
    and-int/lit8 v4, v1, 0x10

    if-eqz v4, :cond_3

    move v0, v2

    .line 3358
    .local v0, isJoystick:Z
    :goto_0
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_4

    .line 3359
    :cond_1
    if-eqz v0, :cond_2

    .line 3360
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3362
    :cond_2
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3382
    :goto_1
    return-void

    .end local v0           #isJoystick:Z
    :cond_3
    move v0, v3

    .line 3355
    goto :goto_0

    .line 3367
    .restart local v0       #isJoystick:Z
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3368
    if-eqz v0, :cond_5

    .line 3369
    invoke-direct {p0, p1, v3}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3371
    :cond_5
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 3375
    :cond_6
    if-eqz v0, :cond_7

    .line 3377
    invoke-direct {p0, p1, v2}, Landroid/view/ViewRootImpl;->updateJoystickDirection(Landroid/view/MotionEvent;Z)V

    .line 3378
    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 3380
    :cond_7
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1
.end method

.method private deliverKeyEvent(Landroid/view/KeyEvent;Z)V
    .locals 4
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v3, 0x0

    .line 3573
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v2, :cond_0

    .line 3574
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v2, p1, v3}, Landroid/view/InputEventConsistencyVerifier;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 3578
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v2, :cond_2

    .line 3579
    :cond_1
    invoke-direct {p0, p1, p2, v3}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3606
    :goto_0
    return-void

    .line 3586
    :cond_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3587
    const/4 v2, 0x1

    invoke-direct {p0, p1, p2, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3593
    :cond_3
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_4

    .line 3594
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 3595
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_4

    .line 3596
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewRootImpl;->enqueuePendingEvent(Ljava/lang/Object;Z)I

    move-result v1

    .line 3599
    .local v1, seq:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputMethodCallback:Landroid/view/ViewRootImpl$InputMethodCallback;

    invoke-virtual {v0, v2, v1, p1, v3}, Landroid/view/inputmethod/InputMethodManager;->dispatchKeyEvent(Landroid/content/Context;ILandroid/view/KeyEvent;Lcom/android/internal/view/IInputMethodCallback;)V

    goto :goto_0

    .line 3605
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #seq:I
    :cond_4
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_0
.end method

.method private deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3628
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_1

    .line 3629
    :cond_0
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3733
    :goto_0
    return-void

    .line 3634
    :cond_1
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->checkForLeavingTouchModeAndConsume(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3635
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3641
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->preDispatchKeyEvent(Landroid/view/KeyEvent;)V

    .line 3644
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3645
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3650
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-static {v3}, Landroid/view/KeyEvent;->isModifierKey(I)Z

    move-result v3

    if-nez v3, :cond_4

    .line 3654
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3655
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3661
    :cond_4
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v3, p1}, Landroid/view/FallbackEventHandler;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 3662
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto :goto_0

    .line 3667
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_b

    .line 3668
    const/4 v0, 0x0

    .line 3669
    .local v0, direction:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 3699
    :cond_6
    :goto_1
    if-eqz v0, :cond_b

    .line 3700
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_9

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3701
    .local v1, focused:Landroid/view/View;
    :goto_2
    if-eqz v1, :cond_b

    .line 3702
    invoke-virtual {v1, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v2

    .line 3703
    .local v2, v:Landroid/view/View;
    if-eqz v2, :cond_a

    if-eq v2, v1, :cond_a

    .line 3707
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 3708
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_7

    .line 3709
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v1, v4}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3711
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v4}, Landroid/view/ViewGroup;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3714
    :cond_7
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v3}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 3715
    invoke-static {v0}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/view/ViewRootImpl;->playSoundEffect(I)V

    .line 3717
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3671
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3672
    const/16 v0, 0x11

    goto :goto_1

    .line 3676
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3677
    const/16 v0, 0x42

    goto :goto_1

    .line 3681
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3682
    const/16 v0, 0x21

    goto :goto_1

    .line 3686
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3687
    const/16 v0, 0x82

    goto :goto_1

    .line 3691
    :sswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3692
    const/4 v0, 0x2

    goto :goto_1

    .line 3693
    :cond_8
    invoke-virtual {p1, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3694
    const/4 v0, 0x1

    goto :goto_1

    .line 3700
    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 3723
    .restart local v1       #focused:Landroid/view/View;
    .restart local v2       #v:Landroid/view/View;
    :cond_a
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 3724
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3732
    .end local v0           #direction:I
    .end local v1           #focused:Landroid/view/View;
    .end local v2           #v:Landroid/view/View;
    :cond_b
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    goto/16 :goto_0

    .line 3669
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_2
        0x14 -> :sswitch_3
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_4
    .end sparse-switch
.end method

.method private deliverPenEvent(Landroid/view/MotionEvent;Z)V
    .locals 22
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 5440
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_1

    .line 5441
    :cond_0
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishPenEvent(Landroid/view/MotionEvent;ZZ)V

    .line 5578
    :goto_0
    return-void

    .line 5446
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_2

    .line 5447
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 5450
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    .line 5451
    .local v9, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v16

    .line 5452
    .local v16, metaState:I
    const/4 v3, 0x2

    if-ne v9, v3, :cond_3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mLastPenButtonState:I

    move/from16 v0, v16

    if-eq v0, v3, :cond_3

    .line 5453
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mLastPenButtonState:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v3, v1}, Landroid/view/ViewRootImpl;->calculatePenAction(II)I

    move-result v9

    .line 5454
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pen move event, new action="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/view/MotionEvent;->setAction(I)V

    .line 5456
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v3

    if-lez v3, :cond_3

    .line 5457
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Pen event action="

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ", history size = "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v21

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5459
    :cond_3
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mLastPenButtonState:I

    .line 5462
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_a

    const/4 v15, 0x1

    .line 5463
    .local v15, isDown:Z
    :goto_1
    if-eqz v15, :cond_4

    .line 5464
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 5471
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_5

    .line 5472
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5479
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 5480
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 5482
    const/4 v14, 0x0

    .line 5483
    .local v14, handled:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_b

    const/4 v13, 0x1

    .line 5485
    .local v13, enablePenAsTouch:Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->isPenAsTouch()Z

    move-result v18

    .line 5486
    .local v18, penAsTouch:Z
    if-eqz v9, :cond_6

    const/4 v3, 0x1

    if-eq v9, v3, :cond_6

    const/4 v3, 0x2

    if-eq v9, v3, :cond_6

    const/4 v3, 0x3

    if-eq v9, v3, :cond_6

    const/4 v3, 0x4

    if-ne v9, v3, :cond_c

    :cond_6
    const/4 v10, 0x1

    .line 5489
    .local v10, canConvertToTouch:Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v19

    .line 5490
    .local v19, xf:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    .line 5491
    .local v20, yf:F
    if-nez v15, :cond_7

    if-eqz v13, :cond_7

    if-nez v18, :cond_8

    .line 5492
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 5494
    :cond_8
    if-eqz v14, :cond_d

    .line 5496
    if-eqz v18, :cond_9

    .line 5497
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPenAsTouch(Z)V

    .line 5515
    :cond_9
    :goto_4
    if-eqz v14, :cond_e

    .line 5516
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishPenEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 5462
    .end local v10           #canConvertToTouch:Z
    .end local v13           #enablePenAsTouch:Z
    .end local v14           #handled:Z
    .end local v15           #isDown:Z
    .end local v18           #penAsTouch:Z
    .end local v19           #xf:F
    .end local v20           #yf:F
    :cond_a
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 5483
    .restart local v14       #handled:Z
    .restart local v15       #isDown:Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_2

    .line 5486
    .restart local v13       #enablePenAsTouch:Z
    .restart local v18       #penAsTouch:Z
    :cond_c
    const/4 v10, 0x0

    goto :goto_3

    .line 5498
    .restart local v10       #canConvertToTouch:Z
    .restart local v19       #xf:F
    .restart local v20       #yf:F
    :cond_d
    if-eqz v13, :cond_9

    if-eqz v10, :cond_9

    .line 5499
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 5500
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v14

    .line 5501
    if-eqz v14, :cond_9

    .line 5502
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "1. Pen as touch: ("

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, ", "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, "), "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " is dispatched to "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5503
    if-nez v18, :cond_9

    .line 5504
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPenAsTouch(Z)V

    goto/16 :goto_4

    .line 5521
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v11

    .line 5522
    .local v11, edgeFlags:I
    if-eqz v11, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_10

    .line 5523
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result v12

    .line 5524
    .local v12, edgeSlop:I
    const/16 v7, 0x21

    .line 5525
    .local v7, direction:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v5, v3

    .line 5526
    .local v5, x:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v6, v3

    .line 5527
    .local v6, y:I
    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 5529
    .local v8, deltas:[I
    and-int/lit8 v3, v11, 0x1

    if-eqz v3, :cond_12

    .line 5530
    const/16 v7, 0x82

    .line 5531
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_11

    .line 5532
    const/4 v3, 0x0

    aput v12, v8, v3

    .line 5533
    add-int/2addr v5, v12

    .line 5553
    :cond_f
    :goto_5
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual/range {v3 .. v8}, Landroid/view/FocusFinder;->findNearestTouchable(Landroid/view/ViewGroup;III[I)Landroid/view/View;

    move-result-object v17

    .line 5555
    .local v17, nearest:Landroid/view/View;
    if-eqz v17, :cond_10

    .line 5556
    const/4 v3, 0x0

    aget v3, v8, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5557
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 5559
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchPenEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 5560
    if-eqz v18, :cond_10

    .line 5561
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setPenAsTouch(Z)V

    .line 5577
    .end local v5           #x:I
    .end local v6           #y:I
    .end local v7           #direction:I
    .end local v8           #deltas:[I
    .end local v12           #edgeSlop:I
    .end local v17           #nearest:Landroid/view/View;
    :cond_10
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishPenEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 5534
    .restart local v5       #x:I
    .restart local v6       #y:I
    .restart local v7       #direction:I
    .restart local v8       #deltas:[I
    .restart local v12       #edgeSlop:I
    :cond_11
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_f

    .line 5535
    const/4 v3, 0x0

    neg-int v4, v12

    aput v4, v8, v3

    .line 5536
    sub-int/2addr v5, v12

    goto :goto_5

    .line 5538
    :cond_12
    and-int/lit8 v3, v11, 0x2

    if-eqz v3, :cond_14

    .line 5539
    const/16 v7, 0x21

    .line 5540
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_13

    .line 5541
    const/4 v3, 0x0

    aput v12, v8, v3

    .line 5542
    add-int/2addr v5, v12

    goto :goto_5

    .line 5543
    :cond_13
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_f

    .line 5544
    const/4 v3, 0x0

    neg-int v4, v12

    aput v4, v8, v3

    .line 5545
    sub-int/2addr v5, v12

    goto :goto_5

    .line 5547
    :cond_14
    and-int/lit8 v3, v11, 0x4

    if-eqz v3, :cond_15

    .line 5548
    const/16 v7, 0x42

    goto :goto_5

    .line 5549
    :cond_15
    and-int/lit8 v3, v11, 0x8

    if-eqz v3, :cond_f

    .line 5550
    const/16 v7, 0x11

    goto :goto_5

    .line 5562
    .restart local v17       #nearest:Landroid/view/View;
    :cond_16
    if-eqz v13, :cond_10

    if-eqz v10, :cond_10

    .line 5563
    const/4 v3, 0x0

    aget v3, v8, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v4, v8, v4

    int-to-float v4, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 5564
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    .line 5565
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5566
    const-string v3, "ViewRootImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "2. Pen as touch: "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v21, " is dispatched to "

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5567
    if-nez v18, :cond_17

    .line 5568
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setPenAsTouch(Z)V

    .line 5569
    :cond_17
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishPenEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0
.end method

.method private deliverPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 7
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3140
    invoke-virtual {p1}, Landroid/view/MotionEvent;->isTouchEvent()Z

    move-result v2

    .line 3141
    .local v2, isTouchEvent:Z
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 3142
    if-eqz v2, :cond_2

    .line 3143
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 3150
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_3

    .line 3151
    :cond_1
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3192
    :goto_1
    return-void

    .line 3145
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v3, p1, v5}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 3156
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_4

    .line 3157
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, p1}, Landroid/content/res/CompatibilityInfo$Translator;->translateEventInScreenToAppWindow(Landroid/view/MotionEvent;)V

    .line 3161
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3162
    .local v0, action:I
    if-eqz v0, :cond_5

    const/16 v3, 0x8

    if-ne v0, v3, :cond_6

    .line 3163
    :cond_5
    invoke-virtual {p0, v6}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 3167
    :cond_6
    iget v3, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v3, :cond_7

    .line 3168
    const/4 v3, 0x0

    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3175
    :cond_7
    if-eqz v2, :cond_8

    .line 3176
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->x:F

    .line 3177
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, v3, Landroid/graphics/PointF;->y:F

    .line 3181
    :cond_8
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPointerEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 3185
    .local v1, handled:Z
    if-eqz v1, :cond_9

    .line 3186
    invoke-direct {p0, p1, p2, v6}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1

    .line 3191
    :cond_9
    invoke-direct {p0, p1, p2, v5}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto :goto_1
.end method

.method private deliverTrackballEvent(Landroid/view/MotionEvent;Z)V
    .locals 33
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3214
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v3, :cond_0

    .line 3215
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v6}, Landroid/view/InputEventConsistencyVerifier;->onTrackballEvent(Landroid/view/MotionEvent;I)V

    .line 3219
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v3, :cond_2

    .line 3220
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3343
    :goto_0
    return-void

    .line 3225
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3230
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 3232
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    .line 3233
    const-wide/32 v6, -0x80000000

    move-object/from16 v0, p0

    iput-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    goto :goto_0

    .line 3238
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisX:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v29, v0

    .line 3239
    .local v29, x:Landroid/view/ViewRootImpl$TrackballAxis;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTrackballAxisY:Landroid/view/ViewRootImpl$TrackballAxis;

    move-object/from16 v31, v0

    .line 3241
    .local v31, y:Landroid/view/ViewRootImpl$TrackballAxis;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3242
    .local v4, curTime:J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_4

    .line 3245
    const/4 v3, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3246
    const/4 v3, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3247
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3250
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 3251
    .local v27, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 3252
    .local v11, metaState:I
    packed-switch v27, :pswitch_data_0

    .line 3277
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "X"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 3278
    .local v30, xOff:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    const-string v8, "Y"

    move-object/from16 v0, v31

    invoke-virtual {v0, v3, v6, v7, v8}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v32

    .line 3286
    .local v32, yOff:F
    const/4 v9, 0x0

    .line 3287
    .local v9, keycode:I
    const/16 v28, 0x0

    .line 3288
    .local v28, movement:I
    const/high16 v25, 0x3f80

    .line 3289
    .local v25, accel:F
    cmpl-float v3, v30, v32

    if-lez v3, :cond_9

    .line 3290
    const/high16 v3, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3291
    if-eqz v28, :cond_5

    .line 3292
    if-lez v28, :cond_8

    const/16 v9, 0x16

    .line 3294
    :goto_2
    move-object/from16 v0, v29

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3295
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3307
    :cond_5
    :goto_3
    if-eqz v9, :cond_c

    .line 3308
    if-gez v28, :cond_6

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 3309
    :cond_6
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float v3, v3, v25

    float-to-int v0, v3

    move/from16 v26, v0

    .line 3313
    .local v26, accelMovement:I
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_7

    .line 3316
    add-int/lit8 v28, v28, -0x1

    .line 3317
    sub-int v10, v26, v28

    .line 3318
    .local v10, repeatCount:I
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x2

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3323
    .end local v10           #repeatCount:I
    :cond_7
    :goto_4
    if-lez v28, :cond_b

    .line 3326
    add-int/lit8 v28, v28, -0x1

    .line 3327
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3328
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3332
    new-instance v12, Landroid/view/KeyEvent;

    const/16 v17, 0x1

    const/16 v19, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x400

    const/16 v24, 0x101

    move-wide v13, v4

    move-wide v15, v4

    move/from16 v18, v9

    move/from16 v20, v11

    invoke-direct/range {v12 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_4

    .line 3254
    .end local v9           #keycode:I
    .end local v25           #accel:F
    .end local v26           #accelMovement:I
    .end local v28           #movement:I
    .end local v30           #xOff:F
    .end local v32           #yOff:F
    :pswitch_0
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3255
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3256
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 3262
    :pswitch_1
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3263
    const/4 v3, 0x2

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 3264
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/16 v15, 0x101

    move-wide v6, v4

    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v6}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_1

    .line 3292
    .restart local v9       #keycode:I
    .restart local v25       #accel:F
    .restart local v28       #movement:I
    .restart local v30       #xOff:F
    .restart local v32       #yOff:F
    :cond_8
    const/16 v9, 0x15

    goto/16 :goto_2

    .line 3297
    :cond_9
    const/4 v3, 0x0

    cmpl-float v3, v32, v3

    if-lez v3, :cond_5

    .line 3298
    const/high16 v3, 0x4000

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v6

    div-float/2addr v3, v6

    move-object/from16 v0, v31

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate(F)I

    move-result v28

    .line 3299
    if-eqz v28, :cond_5

    .line 3300
    if-lez v28, :cond_a

    const/16 v9, 0x14

    .line 3302
    :goto_5
    move-object/from16 v0, v31

    iget v0, v0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    move/from16 v25, v0

    .line 3303
    const/4 v3, 0x2

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_3

    .line 3300
    :cond_a
    const/16 v9, 0x13

    goto :goto_5

    .line 3337
    .restart local v26       #accelMovement:I
    :cond_b
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mLastTrackballTime:J

    .line 3342
    .end local v26           #accelMovement:I
    :cond_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->finishMotionEvent(Landroid/view/MotionEvent;ZZ)V

    goto/16 :goto_0

    .line 3252
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private destroyHardwareRenderer()V
    .locals 2

    .prologue
    .line 4059
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 4060
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 4061
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 4062
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 4064
    :cond_0
    return-void
.end method

.method private dispatchGenericMotion(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 4276
    const/16 v1, 0x3fa

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4277
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4278
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 4280
    return-void

    .line 4278
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchKey(Landroid/view/KeyEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 4215
    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4216
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4217
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4222
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 4223
    return-void

    .line 4217
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchMotion(Landroid/view/MotionEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 4226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    .line 4236
    .local v0, source:I
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 4237
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchPointer(Landroid/view/MotionEvent;Z)V

    .line 4243
    :goto_0
    return-void

    .line 4238
    :cond_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    .line 4239
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchTrackball(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    .line 4241
    :cond_1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;->dispatchGenericMotion(Landroid/view/MotionEvent;Z)V

    goto :goto_0
.end method

.method private dispatchPen(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 5596
    const/16 v1, 0x44c

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5597
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 5598
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 5599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 5600
    return-void

    .line 5598
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private dispatchPointer(Landroid/view/MotionEvent;Z)V
    .locals 6
    .parameter "event"
    .parameter "sendDone"

    .prologue
    const/4 v3, 0x1

    .line 4246
    const/16 v2, 0x3ee

    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4247
    .local v1, msg:Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4248
    if-eqz p2, :cond_1

    move v2, v3

    :goto_0
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 4249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, v1, v4, v5}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 4253
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 4255
    :try_start_0
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->sendActionUpPosition(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4261
    :cond_0
    :goto_1
    return-void

    .line 4248
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4256
    :catch_0
    move-exception v0

    .line 4257
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ViewRootImpl"

    const-string/jumbo v3, "remote exception as sendActionUpPosition to WMS."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private dispatchTrackball(Landroid/view/MotionEvent;Z)V
    .locals 3
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 4269
    const/16 v1, 0x3ef

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4270
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4271
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/os/Message;J)V

    .line 4273
    return-void

    .line 4271
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private draw(Z)V
    .locals 31
    .parameter "fullRedrawNeeded"

    .prologue
    .line 2044
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v23, v0

    .line 2045
    .local v23, surface:Landroid/view/Surface;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Landroid/view/Surface;->isValid()Z

    move-result v26

    if-nez v26, :cond_1

    .line 2289
    :cond_0
    :goto_0
    return-void

    .line 2053
    :cond_1
    sget-boolean v26, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    if-nez v26, :cond_3

    .line 2054
    sget-object v27, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    monitor-enter v27

    .line 2055
    const/16 v26, 0x1

    :try_start_0
    sput-boolean v26, Landroid/view/ViewRootImpl;->sFirstDrawComplete:Z

    .line 2056
    sget-object v26, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 2057
    .local v9, count:I
    const/4 v15, 0x0

    .local v15, i:I
    :goto_1
    if-ge v15, v9, :cond_2

    .line 2058
    sget-object v26, Landroid/view/ViewRootImpl;->sFirstDrawHandlers:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->post(Ljava/lang/Runnable;)Z

    .line 2057
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 2060
    :cond_2
    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2063
    .end local v9           #count:I
    .end local v15           #i:I
    :cond_3
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    .line 2065
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4

    .line 2066
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mViewScrollChanged:Z

    .line 2067
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/ViewTreeObserver;->dispatchOnScrollChanged()V

    .line 2071
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v26

    if-eqz v26, :cond_8

    const/4 v5, 0x1

    .line 2072
    .local v5, animating:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 2073
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->getCurrY()I

    move-result v25

    .line 2077
    .local v25, yoff:I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move/from16 v26, v0

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_5

    .line 2078
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mCurScrollY:I

    .line 2079
    const/16 p1, 0x1

    .line 2081
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v6, v0, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 2082
    .local v6, appScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v20, v0

    .line 2084
    .local v20, scalingRequired:Z
    const/16 v18, 0x0

    .line 2085
    .local v18, resizeAlpha:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_6

    .line 2086
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    move-wide/from16 v28, v0

    sub-long v11, v26, v28

    .line 2087
    .local v11, deltaTime:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v11, v26

    if-gez v26, :cond_a

    .line 2088
    long-to-float v0, v11

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v4, v26, v27

    .line 2089
    .local v4, amt:F
    sget-object v26, Landroid/view/ViewRootImpl;->mResizeInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v26

    invoke-interface {v0, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    .line 2090
    const/4 v5, 0x1

    .line 2091
    const/high16 v26, 0x437f

    mul-float v26, v26, v4

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    rsub-int v0, v0, 0xff

    move/from16 v18, v0

    .line 2097
    .end local v4           #amt:F
    .end local v11           #deltaTime:J
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    .line 2098
    .local v13, dirty:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 2100
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 2101
    if-eqz v5, :cond_0

    .line 2102
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2105
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto/16 :goto_0

    .line 2060
    .end local v5           #animating:Z
    .end local v6           #appScale:F
    .end local v13           #dirty:Landroid/graphics/Rect;
    .end local v18           #resizeAlpha:I
    .end local v20           #scalingRequired:Z
    .end local v25           #yoff:I
    :catchall_0
    move-exception v26

    :try_start_1
    monitor-exit v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v26

    .line 2071
    :cond_8
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2075
    .restart local v5       #animating:Z
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v25, v0

    .restart local v25       #yoff:I
    goto/16 :goto_3

    .line 2093
    .restart local v6       #appScale:F
    .restart local v11       #deltaTime:J
    .restart local v18       #resizeAlpha:I
    .restart local v20       #scalingRequired:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    goto :goto_4

    .line 2110
    .end local v11           #deltaTime:J
    .restart local v13       #dirty:Landroid/graphics/Rect;
    :cond_b
    if-eqz p1, :cond_c

    .line 2111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2112
    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v6

    const/high16 v29, 0x3f00

    add-float v28, v28, v29

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v6

    const/high16 v30, 0x3f00

    add-float v29, v29, v30

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2115
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v26

    if-eqz v26, :cond_10

    .line 2116
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_f

    .line 2117
    :cond_d
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2118
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    .line 2119
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2122
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 2123
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2124
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 2126
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mCurrentDirty:Landroid/graphics/Rect;

    .line 2127
    .local v10, currentDirty:Landroid/graphics/Rect;
    if-eqz v5, :cond_e

    .line 2128
    const/4 v10, 0x0

    .line 2131
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v28, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, p0

    invoke-virtual {v0, v1, v2, v3, v10}, Landroid/view/HardwareRenderer;->draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;Landroid/graphics/Rect;)Z

    move-result v26

    if-eqz v26, :cond_f

    .line 2132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mPreviousDirty:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v30, v0

    invoke-virtual/range {v26 .. v30}, Landroid/graphics/Rect;->set(IIII)V

    .line 2136
    .end local v10           #currentDirty:Landroid/graphics/Rect;
    :cond_f
    if-eqz v5, :cond_0

    .line 2137
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2138
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2153
    :cond_10
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1c

    .line 2156
    :cond_11
    :try_start_2
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    .line 2157
    .local v16, left:I
    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    .line 2158
    .local v24, top:I
    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    .line 2159
    .local v19, right:I
    iget v7, v13, Landroid/graphics/Rect;->bottom:I

    .line 2166
    .local v7, bottom:I
    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v8

    .line 2175
    .local v8, canvas:Landroid/graphics/Canvas;
    iget v0, v13, Landroid/graphics/Rect;->left:I

    move/from16 v26, v0

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->top:I

    move/from16 v26, v0

    move/from16 v0, v24

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->right:I

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ne v0, v1, :cond_12

    iget v0, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v7, v0, :cond_13

    .line 2177
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2181
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mDensity:I

    move/from16 v26, v0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setDensity(I)V
    :try_end_2
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2203
    :try_start_3
    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v26

    if-eqz v26, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1b

    .line 2204
    :cond_14
    const-wide/16 v21, 0x0

    .line 2224
    .local v21, startTime:J
    invoke-virtual {v8}, Landroid/graphics/Canvas;->isOpaque()Z

    move-result v26

    if-eqz v26, :cond_15

    if-eqz v25, :cond_16

    .line 2225
    :cond_15
    const/16 v26, 0x0

    sget-object v27, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 2228
    :cond_16
    invoke-virtual {v13}, Landroid/graphics/Rect;->setEmpty()V

    .line 2229
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mIsAnimating:Z

    .line 2230
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Landroid/view/View$AttachInfo;->mDrawingTime:J

    .line 2231
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v27, v0

    or-int/lit8 v27, v27, 0x20

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2240
    const/16 v26, 0x0

    move/from16 v0, v25

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    :try_start_4
    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v26, v0

    if-eqz v26, :cond_17

    .line 2242
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 2244
    :cond_17
    if-eqz v20, :cond_1e

    sget v26, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    :goto_5
    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->setScreenDensity(I)V

    .line 2246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 2247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2249
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2256
    :cond_18
    sget-boolean v26, Landroid/view/ViewRootImpl;->sLogFps:Z

    if-nez v26, :cond_19

    sget-boolean v26, Landroid/view/ViewRootImpl;->SHOW_FPS:Z

    if-eqz v26, :cond_1b

    .line 2257
    :cond_19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v17, v0

    .line 2258
    .local v17, now:I
    sget v26, Landroid/view/ViewRootImpl;->sLastDrawTime:I

    if-eqz v26, :cond_1a

    .line 2259
    sget v26, Landroid/view/ViewRootImpl;->sLastDrawTime:I

    sub-int v26, v17, v26

    sget-boolean v27, Landroid/view/ViewDebug;->logFps:Z

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-static {v8, v0, v1}, Landroid/view/ViewRootImpl;->nativeLogFPS(Landroid/graphics/Canvas;IZ)V

    .line 2260
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1a

    .line 2261
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/htc/utils/perf/FramerateMonitor;->updateFrame()V

    .line 2263
    :cond_1a
    sput v17, Landroid/view/ViewRootImpl;->sLastDrawTime:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2277
    .end local v17           #now:I
    .end local v21           #startTime:J
    :cond_1b
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 2285
    .end local v7           #bottom:I
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v16           #left:I
    .end local v19           #right:I
    .end local v24           #top:I
    :cond_1c
    if-eqz v5, :cond_0

    .line 2286
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2287
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto/16 :goto_0

    .line 2182
    :catch_0
    move-exception v14

    .line 2183
    .local v14, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v26, "ViewRootImpl"

    const-string v27, "OutOfResourcesException locking surface"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2185
    :try_start_6
    sget-object v26, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 2186
    const-string v26, "ViewRootImpl"

    const-string v27, "No processes killed for memory; killing self"

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2187
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/Process;->killProcess(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2

    .line 2191
    :cond_1d
    :goto_6
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 2193
    .end local v14           #e:Landroid/view/Surface$OutOfResourcesException;
    :catch_1
    move-exception v14

    .line 2194
    .local v14, e:Ljava/lang/IllegalArgumentException;
    const-string v26, "ViewRootImpl"

    const-string v27, "IllegalArgumentException locking surface"

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-static {v0, v1, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2198
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 2244
    .end local v14           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #bottom:I
    .restart local v8       #canvas:Landroid/graphics/Canvas;
    .restart local v16       #left:I
    .restart local v19       #right:I
    .restart local v21       #startTime:J
    .restart local v24       #top:I
    :cond_1e
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 2249
    :catchall_1
    move-exception v26

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    move/from16 v27, v0

    if-nez v27, :cond_1f

    .line 2251
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, v27

    iput-boolean v0, v1, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 2249
    :cond_1f
    throw v26
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2277
    .end local v21           #startTime:J
    :catchall_2
    move-exception v26

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    throw v26

    .line 2189
    .end local v7           #bottom:I
    .end local v8           #canvas:Landroid/graphics/Canvas;
    .end local v16           #left:I
    .end local v19           #right:I
    .end local v24           #top:I
    .local v14, e:Landroid/view/Surface$OutOfResourcesException;
    :catch_2
    move-exception v26

    goto :goto_6
.end method

.method private enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V
    .locals 9
    .parameter "attrs"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 682
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    .line 683
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v5, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    .line 686
    sget-boolean v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/htc/profileflag/ProfileConfig;->getProfileDebugDisableHwAccel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 750
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->isSystemServer()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 693
    const-string v4, "ViewRootImpl"

    const-string v5, "@@@- disable SystemServer HW acceleration"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v6, :cond_0

    .line 702
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v7, 0x100

    and-int/2addr v6, v7

    if-eqz v6, :cond_4

    move v2, v4

    .line 705
    .local v2, hardwareAccelerated:Z
    :goto_1
    if-eqz v2, :cond_0

    .line 706
    invoke-static {}, Landroid/view/HardwareRenderer;->isAvailable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 719
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_5

    move v0, v4

    .line 721
    .local v0, fakeHwAccelerated:Z
    :goto_2
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_6

    move v1, v4

    .line 724
    .local v1, forceHwAccelerated:Z
    :goto_3
    sget-boolean v6, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    if-eqz v6, :cond_3

    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-eqz v6, :cond_b

    if-eqz v1, :cond_b

    .line 727
    :cond_3
    sget-boolean v6, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    if-nez v6, :cond_7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    if-eq v6, v7, :cond_7

    .line 729
    const-string v4, "HardwareRenderer"

    const-string v5, "Attempting to initialize hardware acceleration outside of the main thread, aborting"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #fakeHwAccelerated:Z
    .end local v1           #forceHwAccelerated:Z
    .end local v2           #hardwareAccelerated:Z
    :cond_4
    move v2, v5

    .line 702
    goto :goto_1

    .restart local v2       #hardwareAccelerated:Z
    :cond_5
    move v0, v5

    .line 719
    goto :goto_2

    .restart local v0       #fakeHwAccelerated:Z
    :cond_6
    move v1, v5

    .line 721
    goto :goto_3

    .line 734
    .restart local v1       #forceHwAccelerated:Z
    :cond_7
    iget v6, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_9

    move v3, v4

    .line 735
    .local v3, translucent:Z
    :goto_4
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v6, :cond_8

    .line 736
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v6, v4}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 738
    :cond_8
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v7, 0x2

    invoke-static {v7, v3}, Landroid/view/HardwareRenderer;->createGlRenderer(IZ)Landroid/view/HardwareRenderer;

    move-result-object v7

    iput-object v7, v6, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    .line 739
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, v8, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v8, :cond_a

    :goto_5
    iput-boolean v4, v7, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    iput-boolean v4, v6, Landroid/view/View$AttachInfo;->mHardwareAccelerated:Z

    goto/16 :goto_0

    .end local v3           #translucent:Z
    :cond_9
    move v3, v5

    .line 734
    goto :goto_4

    .restart local v3       #translucent:Z
    :cond_a
    move v4, v5

    .line 739
    goto :goto_5

    .line 741
    .end local v3           #translucent:Z
    :cond_b
    if-eqz v0, :cond_0

    .line 747
    iget-object v5, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mHardwareAccelerationRequested:Z

    goto/16 :goto_0
.end method

.method private enqueueInputEvent(Landroid/os/Message;J)V
    .locals 3
    .parameter "msg"
    .parameter "when"

    .prologue
    .line 4185
    invoke-static {p1}, Landroid/view/ViewRootImpl$InputEventMessage;->obtain(Landroid/os/Message;)Landroid/view/ViewRootImpl$InputEventMessage;

    move-result-object v1

    .line 4186
    .local v1, inputMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-nez v2, :cond_0

    .line 4187
    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4195
    :goto_0
    const/16 v2, 0x400

    invoke-virtual {p0, v2, p2, p3}, Landroid/view/ViewRootImpl;->sendEmptyMessageAtTime(IJ)Z

    .line 4196
    return-void

    .line 4189
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 4190
    .local v0, currMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    :goto_1
    iget-object v2, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v2, :cond_1

    .line 4191
    iget-object v0, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_1

    .line 4193
    :cond_1
    iput-object v1, v0, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    goto :goto_0
.end method

.method private ensureTouchModeLocally(Z)Z
    .locals 1
    .parameter "inTouchMode"

    .prologue
    .line 3049
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 3054
    :goto_0
    return v0

    .line 3051
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean p1, v0, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 3052
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->dispatchOnTouchModeChanged(Z)V

    .line 3054
    if-eqz p1, :cond_1

    invoke-direct {p0}, Landroid/view/ViewRootImpl;->enterTouchMode()Z

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->leaveTouchMode()Z

    move-result v0

    goto :goto_0
.end method

.method private enterTouchMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3058
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 3059
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3063
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3064
    .local v1, focused:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_1

    .line 3066
    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 3068
    .local v0, ancestorToTakeFocus:Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 3071
    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    move-result v2

    .line 3082
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :goto_0
    return v2

    .line 3074
    .restart local v0       #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .restart local v1       #focused:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->unFocus()V

    .line 3075
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v2, v1, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 3076
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 3077
    const/4 v2, 0x1

    goto :goto_0

    .line 3082
    .end local v0           #ancestorToTakeFocus:Landroid/view/ViewGroup;
    .end local v1           #focused:Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private findAncestorToTakeFocusInTouchMode(Landroid/view/View;)Landroid/view/ViewGroup;
    .locals 5
    .parameter "focused"

    .prologue
    const/4 v2, 0x0

    .line 3093
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3094
    .local v0, parent:Landroid/view/ViewParent;
    :goto_0
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v1, v0

    .line 3095
    check-cast v1, Landroid/view/ViewGroup;

    .line 3096
    .local v1, vgParent:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    const/high16 v4, 0x4

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isFocusableInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3106
    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :goto_1
    return-object v1

    .line 3100
    .restart local v1       #vgParent:Landroid/view/ViewGroup;
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    .line 3101
    goto :goto_1

    .line 3103
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 3105
    goto :goto_0

    .end local v1           #vgParent:Landroid/view/ViewGroup;
    :cond_2
    move-object v1, v2

    .line 3106
    goto :goto_1
.end method

.method private finishInputEvent(Landroid/view/InputEvent;Z)V
    .locals 2
    .parameter "event"
    .parameter "handled"

    .prologue
    .line 2968
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-nez v0, :cond_0

    .line 2969
    const-string v0, "ViewRootImpl"

    const-string v1, "Attempted to tell the input queue that the current input event is finished but there is no input event actually in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3012
    :goto_0
    return-void

    .line 3010
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    invoke-virtual {v0, p2}, Landroid/view/InputQueue$FinishedCallback;->finished(Z)V

    .line 3011
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    goto :goto_0
.end method

.method private finishKeyEvent(Landroid/view/KeyEvent;ZZ)V
    .locals 0
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 3736
    if-eqz p2, :cond_0

    .line 3737
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3739
    :cond_0
    return-void
.end method

.method private finishMotionEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 0
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 3195
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 3196
    if-eqz p2, :cond_0

    .line 3197
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 3205
    :cond_0
    return-void
.end method

.method private finishPenEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 0
    .parameter "event"
    .parameter "sendDone"
    .parameter "handled"

    .prologue
    .line 5581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 5582
    if-eqz p2, :cond_0

    .line 5583
    invoke-direct {p0, p1, p3}, Landroid/view/ViewRootImpl;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 5586
    :cond_0
    return-void
.end method

.method private static forceLayout(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 2581
    invoke-virtual {p0}, Landroid/view/View;->forceLayout()V

    .line 2582
    instance-of v3, p0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v1, p0

    .line 2583
    check-cast v1, Landroid/view/ViewGroup;

    .line 2584
    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2585
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2586
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2585
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2589
    .end local v0           #count:I
    .end local v1           #group:Landroid/view/ViewGroup;
    .end local v2           #i:I
    :cond_0
    return-void
.end method

.method private getAudioManager()Landroid/media/AudioManager;
    .locals 2

    .prologue
    .line 3860
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3861
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAudioManager called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3863
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_1

    .line 3864
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    .line 3866
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method private getGfxInfo(Landroid/view/View;[I)V
    .locals 7
    .parameter "view"
    .parameter "info"

    .prologue
    .line 3997
    iget-object v1, p1, Landroid/view/View;->mDisplayList:Landroid/view/DisplayList;

    .line 3998
    .local v1, displayList:Landroid/view/DisplayList;
    const/4 v4, 0x0

    aget v5, p2, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, p2, v4

    .line 3999
    if-eqz v1, :cond_0

    .line 4000
    const/4 v4, 0x1

    aget v5, p2, v4

    invoke-virtual {v1}, Landroid/view/DisplayList;->getSize()I

    move-result v6

    add-int/2addr v5, v6

    aput v5, p2, v4

    .line 4003
    :cond_0
    instance-of v4, p1, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    move-object v2, p1

    .line 4004
    check-cast v2, Landroid/view/ViewGroup;

    .line 4006
    .local v2, group:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 4007
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 4008
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 4007
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4011
    .end local v0           #count:I
    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_1
    return-void
.end method

.method private getRootMeasureSpec(II)I
    .locals 2
    .parameter "windowSize"
    .parameter "rootDimension"

    .prologue
    const/high16 v1, 0x4000

    .line 1919
    packed-switch p2, :pswitch_data_0

    .line 1931
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1934
    .local v0, measureSpec:I
    :goto_0
    return v0

    .line 1923
    .end local v0           #measureSpec:I
    :pswitch_0
    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1924
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1927
    .end local v0           #measureSpec:I
    :pswitch_1
    const/high16 v1, -0x8000

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 1928
    .restart local v0       #measureSpec:I
    goto :goto_0

    .line 1919
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getRunQueue()Landroid/view/ViewRootImpl$RunQueue;
    .locals 2

    .prologue
    .line 4888
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewRootImpl$RunQueue;

    .line 4889
    .local v0, rq:Landroid/view/ViewRootImpl$RunQueue;
    if-eqz v0, :cond_0

    .line 4894
    :goto_0
    return-object v0

    .line 4892
    :cond_0
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue;

    .end local v0           #rq:Landroid/view/ViewRootImpl$RunQueue;
    invoke-direct {v0}, Landroid/view/ViewRootImpl$RunQueue;-><init>()V

    .line 4893
    .restart local v0       #rq:Landroid/view/ViewRootImpl$RunQueue;
    sget-object v1, Landroid/view/ViewRootImpl;->sRunQueues:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static getWindowSession(Landroid/os/Looper;)Landroid/view/IWindowSession;
    .locals 5
    .parameter "mainLooper"

    .prologue
    .line 349
    sget-object v2, Landroid/view/ViewRootImpl;->mStaticInit:Ljava/lang/Object;

    monitor-enter v2

    .line 350
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 352
    :try_start_1
    invoke-static {p0}, Landroid/view/inputmethod/InputMethodManager;->getInstance(Landroid/os/Looper;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 353
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {}, Landroid/view/Display;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getClient()Lcom/android/internal/view/IInputMethodClient;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputContext()Lcom/android/internal/view/IInputContext;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Landroid/view/IWindowManager;->openSession(Lcom/android/internal/view/IInputMethodClient;Lcom/android/internal/view/IInputContext;)Landroid/view/IWindowSession;

    move-result-object v1

    sput-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    .line 355
    const/4 v1, 0x1

    sput-boolean v1, Landroid/view/ViewRootImpl;->mInitialized:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 359
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    :try_start_2
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    monitor-exit v2

    return-object v1

    .line 360
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 356
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private handleDragEvent(Landroid/view/DragEvent;)V
    .locals 9
    .parameter "event"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 3750
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 3751
    iget v3, p1, Landroid/view/DragEvent;->mAction:I

    .line 3753
    .local v3, what:I
    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 3758
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 3822
    .end local v3           #what:I
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->recycle()V

    .line 3823
    return-void

    .line 3762
    .restart local v3       #what:I
    :cond_1
    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    .line 3763
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3764
    iget-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    iput-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3770
    :goto_1
    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    if-ne v3, v8, :cond_5

    .line 3771
    :cond_2
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v5, p1, Landroid/view/DragEvent;->mX:F

    iget v6, p1, Landroid/view/DragEvent;->mY:F

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->set(FF)V

    .line 3772
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_3

    .line 3773
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translatePointInScreenToAppWindow(Landroid/graphics/PointF;)V

    .line 3776
    :cond_3
    iget v4, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v4, :cond_4

    .line 3777
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    const/4 v5, 0x0

    iget v6, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/PointF;->offset(FF)V

    .line 3780
    :cond_4
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iput v4, p1, Landroid/view/DragEvent;->mX:F

    .line 3781
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragPoint:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iput v4, p1, Landroid/view/DragEvent;->mY:F

    .line 3785
    :cond_5
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3788
    .local v1, prevDragView:Landroid/view/View;
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v2

    .line 3791
    .local v2, result:Z
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v1, v4, :cond_7

    .line 3793
    if-eqz v1, :cond_6

    .line 3794
    :try_start_0
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientExited(Landroid/view/IWindow;)V

    .line 3796
    :cond_6
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 3797
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->dragRecipientEntered(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3805
    :cond_7
    :goto_2
    if-ne v3, v8, :cond_8

    .line 3806
    iput-object v7, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    .line 3808
    :try_start_1
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reporting drop result: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3809
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v5, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5, v2}, Landroid/view/IWindowSession;->reportDropResult(Landroid/view/IWindow;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3817
    :cond_8
    :goto_3
    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    .line 3818
    invoke-virtual {p0, v7}, Landroid/view/ViewRootImpl;->setLocalDragState(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3766
    .end local v1           #prevDragView:Landroid/view/View;
    .end local v2           #result:Z
    :cond_9
    iget-object v4, p0, Landroid/view/ViewRootImpl;->mDragDescription:Landroid/content/ClipDescription;

    iput-object v4, p1, Landroid/view/DragEvent;->mClipDescription:Landroid/content/ClipDescription;

    goto/16 :goto_1

    .line 3799
    .restart local v1       #prevDragView:Landroid/view/View;
    .restart local v2       #result:Z
    :catch_0
    move-exception v0

    .line 3800
    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to note drag target change"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3810
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 3811
    .restart local v0       #e:Landroid/os/RemoteException;
    const-string v4, "ViewRootImpl"

    const-string v5, "Unable to report drop result"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private handleFinishedEvent(IZ)V
    .locals 3
    .parameter "seq"
    .parameter "handled"

    .prologue
    const/4 v2, 0x1

    .line 3609
    invoke-virtual {p0, p1}, Landroid/view/ViewRootImpl;->retrievePendingEvent(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 3612
    .local v0, event:Landroid/view/KeyEvent;
    if-eqz v0, :cond_0

    .line 3613
    if-ltz p1, :cond_1

    move v1, v2

    .line 3614
    .local v1, sendDone:Z
    :goto_0
    if-eqz p2, :cond_2

    .line 3615
    invoke-direct {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->finishKeyEvent(Landroid/view/KeyEvent;ZZ)V

    .line 3620
    .end local v1           #sendDone:Z
    :cond_0
    :goto_1
    return-void

    .line 3613
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 3617
    .restart local v1       #sendDone:Z
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto :goto_1
.end method

.method static isInTouchMode()Z
    .locals 1

    .prologue
    .line 475
    sget-boolean v0, Landroid/view/ViewRootImpl;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 477
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v0}, Landroid/view/IWindowSession;->getInTouchMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 481
    :goto_0
    return v0

    .line 478
    :catch_0
    move-exception v0

    .line 481
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNavigationKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3455
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 3470
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3468
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 3455
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x15 -> :sswitch_0
        0x16 -> :sswitch_0
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x42 -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7a -> :sswitch_0
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method private isSketcherDisabledInCurrentTask(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 5603
    const/4 v1, 0x0

    .line 5605
    .local v1, res:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->isSketcherDisabledInCurrentTask()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 5610
    :goto_0
    return v1

    .line 5606
    :catch_0
    move-exception v0

    .line 5608
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method private isSupportDoubleBuffering()Z
    .locals 2

    .prologue
    .line 5630
    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x25

    if-eq v0, v1, :cond_0

    sget-short v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v1, 0x26

    if-ne v0, v1, :cond_1

    .line 5632
    :cond_0
    const/4 v0, 0x1

    .line 5633
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTypingKey(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyEvent"

    .prologue
    .line 3479
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z
    .locals 3
    .parameter "child"
    .parameter "parent"

    .prologue
    const/4 v1, 0x1

    .line 2572
    if-ne p0, p1, :cond_1

    .line 2577
    :cond_0
    :goto_0
    return v1

    .line 2576
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2577
    .local v0, theParent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    check-cast v0, Landroid/view/View;

    .end local v0           #theParent:Landroid/view/ViewParent;
    invoke-static {v0, p1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static joystickAxisValueToDirection(F)I
    .locals 1
    .parameter "value"

    .prologue
    .line 3440
    const/high16 v0, 0x3f00

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    .line 3441
    const/4 v0, 0x1

    .line 3445
    :goto_0
    return v0

    .line 3442
    :cond_0
    const/high16 v0, -0x4100

    cmpg-float v0, p0, v0

    if-gtz v0, :cond_1

    .line 3443
    const/4 v0, -0x1

    goto :goto_0

    .line 3445
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private leaveTouchMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x82

    const/4 v2, 0x0

    .line 3110
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 3111
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3113
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 3114
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move v1, v2

    .line 3132
    :goto_0
    return v1

    .line 3117
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v3, 0x4

    if-eq v1, v3, :cond_1

    move v1, v2

    .line 3121
    goto :goto_0

    .line 3127
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v4}, Landroid/view/ViewRootImpl;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 3128
    .local v0, focused:Landroid/view/View;
    if-eqz v0, :cond_2

    .line 3129
    invoke-virtual {v0, v4}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    goto :goto_0

    .end local v0           #focused:Landroid/view/View;
    :cond_2
    move v1, v2

    .line 3132
    goto :goto_0
.end method

.method private static native nativeHWLogFPS(Landroid/graphics/Canvas;IZ)Z
.end method

.method private static native nativeLogFPS(Landroid/graphics/Canvas;IZ)V
.end method

.method private performTraversals()V
    .locals 78

    .prologue
    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v41, v0

    .line 968
    .local v41, host:Landroid/view/View;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    .line 979
    if-eqz v41, :cond_0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-nez v4, :cond_1

    .line 1889
    :cond_0
    :goto_0
    return-void

    .line 982
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 983
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 984
    const/16 v76, 0x0

    .line 985
    .local v76, windowSizeMayChange:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    move/from16 v37, v0

    .line 986
    .local v37, fullRedrawNeeded:Z
    const/16 v54, 0x0

    .line 987
    .local v54, newSurface:Z
    const/16 v68, 0x0

    .line 988
    .local v68, surfaceChanged:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v52, v0

    .line 995
    .local v52, lp:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v18, v0

    .line 997
    .local v18, attachInfo:Landroid/view/View$AttachInfo;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v71

    .line 998
    .local v71, viewVisibility:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    move/from16 v0, v71

    if-ne v4, v0, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_13

    :cond_2
    const/16 v72, 0x1

    .line 1001
    .local v72, viewVisibilityChanged:Z
    :goto_1
    const/16 v59, 0x0

    .line 1002
    .local v59, params:Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    if-eqz v4, :cond_3

    .line 1003
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1004
    const/16 v68, 0x1

    .line 1005
    move-object/from16 v59, v52

    .line 1007
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v4}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v25

    .line 1008
    .local v25, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual/range {v25 .. v25}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-ne v4, v5, :cond_4

    .line 1009
    move-object/from16 v59, v52

    .line 1010
    const/16 v37, 0x1

    .line 1011
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1012
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    if-eqz v4, :cond_14

    .line 1013
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v5, -0x20000001

    and-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1014
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 1021
    :cond_4
    :goto_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v36, v0

    .line 1024
    .local v36, frame:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_16

    .line 1051
    const/16 v37, 0x1

    .line 1052
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1054
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_15

    .line 1056
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 1057
    .local v32, disp:Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1058
    .local v65, size:Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1059
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 1060
    .local v30, desiredWindowWidth:I
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 1072
    .end local v32           #disp:Landroid/view/Display;
    .end local v65           #size:Landroid/graphics/Point;
    .local v29, desiredWindowHeight:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, v18

    iput-object v4, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 1076
    const/4 v4, 0x1

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mUse32BitDrawingCache:Z

    .line 1077
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 1078
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1079
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1080
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1081
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1082
    const/16 v72, 0x0

    .line 1083
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1084
    const/4 v4, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1134
    :cond_5
    :goto_4
    if-eqz v72, :cond_8

    .line 1135
    move/from16 v0, v71

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/View$AttachInfo;->mWindowVisibility:I

    .line 1136
    move-object/from16 v0, v41

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 1137
    if-nez v71, :cond_6

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    if-eqz v4, :cond_7

    .line 1138
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->destroyHardwareResources()V

    .line 1140
    :cond_7
    const/16 v4, 0x8

    move/from16 v0, v71

    if-ne v0, v4, :cond_8

    .line 1143
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 1147
    :cond_8
    const/16 v48, 0x0

    .line 1149
    .local v48, insetsChanged:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_d

    .line 1152
    invoke-static {}, Landroid/view/ViewRootImpl;->getRunQueue()Landroid/view/ViewRootImpl$RunQueue;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v5, v0, Landroid/view/View$AttachInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl$RunQueue;->executeActions(Landroid/os/Handler;)V

    .line 1154
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    .line 1156
    .local v61, res:Landroid/content/res/Resources;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_19

    .line 1159
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    if-nez v4, :cond_18

    const/4 v4, 0x1

    :goto_5
    iput-boolean v4, v5, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    .line 1160
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 1194
    :cond_9
    :goto_6
    const/16 v38, 0x0

    .line 1195
    .local v38, goodMeasure:Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_b

    .line 1200
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1201
    .local v58, packageMetrics:Landroid/util/DisplayMetrics;
    const v4, 0x1050007

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    const/4 v6, 0x1

    move-object/from16 v0, v61

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 1202
    const/16 v19, 0x0

    .line 1203
    .local v19, baseSize:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_a

    .line 1204
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpValue:Landroid/util/TypedValue;

    move-object/from16 v0, v58

    invoke-virtual {v4, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v0, v4

    move/from16 v19, v0

    .line 1207
    :cond_a
    if-eqz v19, :cond_b

    move/from16 v0, v30

    move/from16 v1, v19

    if-le v0, v1, :cond_b

    .line 1208
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1209
    .local v24, childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1210
    .local v23, childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1213
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_1e

    .line 1214
    const/16 v38, 0x1

    .line 1232
    .end local v19           #baseSize:I
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_b
    :goto_7
    if-nez v38, :cond_d

    .line 1233
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1234
    .restart local v24       #childWidthMeasureSpec:I
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1235
    .restart local v23       #childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1236
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v4, v5, :cond_d

    .line 1237
    :cond_c
    const/16 v76, 0x1

    .line 1248
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v38           #goodMeasure:Z
    .end local v61           #res:Landroid/content/res/Resources;
    :cond_d
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_f

    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_f

    .line 1250
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1251
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v56, v0

    .line 1252
    .local v56, oldScreenOn:Z
    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v57, v0

    .line 1253
    .local v57, oldVis:I
    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v55, v0

    .line 1254
    .local v55, oldHasSystemUiListeners:Z
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 1255
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 1256
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    .line 1257
    const/4 v4, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 1258
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    move/from16 v0, v56

    if-ne v4, v0, :cond_e

    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move/from16 v0, v57

    if-ne v4, v0, :cond_e

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move/from16 v0, v55

    if-eq v4, v0, :cond_f

    .line 1261
    :cond_e
    move-object/from16 v59, v52

    .line 1264
    .end local v55           #oldHasSystemUiListeners:Z
    .end local v56           #oldScreenOn:Z
    .end local v57           #oldVis:I
    :cond_f
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    if-eqz v4, :cond_10

    .line 1265
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 1266
    move-object/from16 v59, v52

    .line 1269
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_11

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    if-eqz v4, :cond_21

    .line 1270
    :cond_11
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mViewVisibilityChanged:Z

    .line 1271
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    and-int/lit16 v0, v4, 0xf0

    move/from16 v62, v0

    .line 1275
    .local v62, resizeMode:I
    if-nez v62, :cond_21

    .line 1276
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1277
    .local v16, N:I
    const/16 v44, 0x0

    .local v44, i:I
    :goto_8
    move/from16 v0, v44

    move/from16 v1, v16

    if-ge v0, v1, :cond_1f

    .line 1278
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mScrollContainers:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isShown()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1279
    const/16 v62, 0x10

    .line 1277
    :cond_12
    add-int/lit8 v44, v44, 0x1

    goto :goto_8

    .line 998
    .end local v16           #N:I
    .end local v25           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v29           #desiredWindowHeight:I
    .end local v30           #desiredWindowWidth:I
    .end local v36           #frame:Landroid/graphics/Rect;
    .end local v44           #i:I
    .end local v48           #insetsChanged:Z
    .end local v59           #params:Landroid/view/WindowManager$LayoutParams;
    .end local v62           #resizeMode:I
    .end local v72           #viewVisibilityChanged:Z
    :cond_13
    const/16 v72, 0x0

    goto/16 :goto_1

    .line 1016
    .restart local v25       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v59       #params:Landroid/view/WindowManager$LayoutParams;
    .restart local v72       #viewVisibilityChanged:Z
    :cond_14
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x2000

    or-int/2addr v4, v5

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1017
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    goto/16 :goto_2

    .line 1062
    .restart local v36       #frame:Landroid/graphics/Rect;
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1064
    .restart local v58       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 1065
    .restart local v30       #desiredWindowWidth:I
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    .restart local v29       #desiredWindowHeight:I
    goto/16 :goto_3

    .line 1090
    .end local v29           #desiredWindowHeight:I
    .end local v30           #desiredWindowWidth:I
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    :cond_16
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v30

    .line 1091
    .restart local v30       #desiredWindowWidth:I
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v29

    .line 1093
    .restart local v29       #desiredWindowHeight:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move/from16 v0, v30

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move/from16 v0, v29

    if-ne v0, v4, :cond_17

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    if-eqz v4, :cond_5

    .line 1097
    :cond_17
    const/16 v37, 0x1

    .line 1098
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1099
    const/16 v76, 0x1

    .line 1101
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    goto/16 :goto_4

    .line 1159
    .restart local v48       #insetsChanged:Z
    .restart local v61       #res:Landroid/content/res/Resources;
    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 1162
    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 1163
    const/16 v48, 0x1

    .line 1165
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 1166
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1170
    :cond_1b
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-eq v4, v5, :cond_1c

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_9

    .line 1172
    :cond_1c
    const/16 v76, 0x1

    .line 1174
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v5, 0x7de

    if-ne v4, v5, :cond_1d

    .line 1176
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v32

    .line 1177
    .restart local v32       #disp:Landroid/view/Display;
    new-instance v65, Landroid/graphics/Point;

    invoke-direct/range {v65 .. v65}, Landroid/graphics/Point;-><init>()V

    .line 1178
    .restart local v65       #size:Landroid/graphics/Point;
    move-object/from16 v0, v32

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1179
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v30, v0

    .line 1180
    move-object/from16 v0, v65

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    .line 1181
    goto/16 :goto_6

    .line 1182
    .end local v32           #disp:Landroid/view/Display;
    .end local v65           #size:Landroid/graphics/Point;
    :cond_1d
    invoke-virtual/range {v61 .. v61}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v58

    .line 1183
    .restart local v58       #packageMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v30, v0

    .line 1184
    move-object/from16 v0, v58

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v29, v0

    goto/16 :goto_6

    .line 1217
    .restart local v19       #baseSize:I
    .restart local v23       #childHeightMeasureSpec:I
    .restart local v24       #childWidthMeasureSpec:I
    .restart local v38       #goodMeasure:Z
    :cond_1e
    add-int v4, v19, v30

    div-int/lit8 v19, v4, 0x2

    .line 1220
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1221
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1224
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v4

    const/high16 v5, 0x100

    and-int/2addr v4, v5

    if-nez v4, :cond_b

    .line 1226
    const/16 v38, 0x1

    goto/16 :goto_7

    .line 1282
    .end local v19           #baseSize:I
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v38           #goodMeasure:Z
    .end local v58           #packageMetrics:Landroid/util/DisplayMetrics;
    .end local v61           #res:Landroid/content/res/Resources;
    .restart local v16       #N:I
    .restart local v44       #i:I
    .restart local v62       #resizeMode:I
    :cond_1f
    if-nez v62, :cond_20

    .line 1283
    const/16 v62, 0x20

    .line 1285
    :cond_20
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, 0xf0

    move/from16 v0, v62

    if-eq v4, v0, :cond_21

    .line 1287
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v4, v4, -0xf1

    or-int v4, v4, v62

    move-object/from16 v0, v52

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1290
    move-object/from16 v59, v52

    .line 1295
    .end local v16           #N:I
    .end local v44           #i:I
    .end local v62           #resizeMode:I
    :cond_21
    if-eqz v59, :cond_22

    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_22

    .line 1296
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_22

    .line 1297
    const/4 v4, -0x3

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1301
    :cond_22
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_37

    if-eqz v76, :cond_37

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_24

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_24

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_23

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move/from16 v0, v30

    if-ge v4, v0, :cond_23

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_24

    :cond_23
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_37

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move/from16 v0, v29

    if-ge v4, v0, :cond_37

    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_37

    :cond_24
    const/16 v75, 0x1

    .line 1308
    .local v75, windowShouldResize:Z
    :goto_9
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->hasComputeInternalInsetsListeners()Z

    move-result v27

    .line 1311
    .local v27, computesInternalInsets:Z
    const/16 v49, 0x0

    .line 1312
    .local v49, insetsPending:Z
    const/16 v60, 0x0

    .line 1314
    .local v60, relayoutResult:I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_25

    if-nez v75, :cond_25

    if-nez v48, :cond_25

    if-nez v72, :cond_25

    if-eqz v59, :cond_52

    .line 1317
    :cond_25
    if-nez v71, :cond_27

    .line 1327
    if-eqz v27, :cond_38

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_26

    if-eqz v72, :cond_38

    :cond_26
    const/16 v49, 0x1

    .line 1330
    :cond_27
    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_28

    .line 1331
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1332
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mDrawingAllowed:Z

    .line 1335
    :cond_28
    const/16 v42, 0x0

    .line 1336
    .local v42, hwInitialized:Z
    const/16 v28, 0x0

    .line 1338
    .local v28, contentInsetsChanged:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v39

    .line 1341
    .local v39, hadSurface:Z
    const/16 v34, 0x0

    .line 1342
    .local v34, fl:I
    if-eqz v59, :cond_2a

    .line 1343
    :try_start_0
    move-object/from16 v0, v59

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v34, v0

    .line 1344
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v4, :cond_29

    .line 1345
    move-object/from16 v0, v59

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x80

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1347
    :cond_29
    move-object/from16 v0, v18

    iget v4, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    move-object/from16 v0, v59

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    .line 1348
    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mHasSystemUiListeners:Z

    move-object/from16 v0, v59

    iput-boolean v4, v0, Landroid/view/WindowManager$LayoutParams;->hasSystemUiListeners:Z

    .line 1355
    :cond_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v69

    .line 1356
    .local v69, surfaceGenerationId:I
    move-object/from16 v0, p0

    move-object/from16 v1, v59

    move/from16 v2, v71

    move/from16 v3, v49

    invoke-direct {v0, v1, v2, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v60

    .line 1358
    if-eqz v59, :cond_2b

    .line 1359
    move/from16 v0, v34

    move-object/from16 v1, v59

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1367
    :cond_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    iget v4, v4, Landroid/content/res/Configuration;->seq:I

    if-eqz v4, :cond_2c

    .line 1370
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v4, :cond_39

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 1371
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v5, 0x0

    iput v5, v4, Landroid/content/res/Configuration;->seq:I

    .line 1374
    :cond_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3a

    const/16 v28, 0x1

    .line 1376
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    const/16 v73, 0x1

    .line 1378
    .local v73, visibleInsetsChanged:Z
    :goto_d
    if-eqz v28, :cond_32

    .line 1379
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-lez v4, :cond_31

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-lez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mTurnOffWindowResizeAnim:Z

    if-nez v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_31

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->validate()Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz v52, :cond_31

    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-static {v4}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v4

    if-nez v4, :cond_31

    .line 1387
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1389
    const/16 v26, 0x0

    .line 1390
    .local v26, completed:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->getCanvas()Landroid/view/HardwareCanvas;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v43

    .line 1391
    .local v43, hwRendererCanvas:Landroid/view/HardwareCanvas;
    const/16 v50, 0x0

    .line 1393
    .local v50, layerCanvas:Landroid/view/HardwareCanvas;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v4, :cond_3c

    .line 1394
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    const/4 v11, 0x0

    invoke-virtual {v4, v5, v6, v11}, Landroid/view/HardwareRenderer;->createHardwareLayer(IIZ)Landroid/view/HardwareLayer;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1400
    :cond_2d
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->start(Landroid/graphics/Canvas;)Landroid/view/HardwareCanvas;

    move-result-object v50

    .line 1401
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->setViewport(II)V

    .line 1402
    const/4 v4, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v4}, Landroid/view/HardwareCanvas;->onPreDraw(Landroid/graphics/Rect;)V

    .line 1403
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->save()I

    move-result v63

    .line 1405
    .local v63, restoreCount:I
    const/high16 v4, -0x100

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1408
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_3f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v4

    if-eqz v4, :cond_3f

    const/16 v64, 0x1

    .line 1410
    .local v64, scrolling:Z
    :goto_f
    if-eqz v64, :cond_40

    .line 1411
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I

    move-result v77

    .line 1412
    .local v77, yoff:I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1417
    :goto_10
    const/4 v4, 0x0

    move/from16 v0, v77

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v50

    invoke-virtual {v0, v4, v5}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1418
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_2e

    .line 1419
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateCanvas(Landroid/graphics/Canvas;)V

    .line 1422
    :cond_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, v50

    invoke-virtual {v4, v0}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1424
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferStartTime:J

    .line 1428
    const/16 v4, 0x12c

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    .line 1429
    sget-boolean v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v4, :cond_2f

    .line 1430
    const-string v4, "ViewRootImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mResizeBufferDuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mResizeBufferDuration:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    :cond_2f
    const/16 v26, 0x1

    .line 1434
    move-object/from16 v0, v50

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/view/HardwareCanvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    .line 1438
    if-eqz v50, :cond_30

    .line 1439
    :try_start_2
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1441
    :cond_30
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_31

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1443
    if-nez v26, :cond_31

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1445
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1450
    .end local v26           #completed:Z
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v63           #restoreCount:I
    .end local v64           #scrolling:Z
    .end local v77           #yoff:I
    :cond_31
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1451
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 1455
    :cond_32
    if-eqz v73, :cond_33

    .line 1456
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1461
    :cond_33
    if-nez v39, :cond_44

    .line 1462
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1470
    const/16 v54, 0x1

    .line 1471
    const/16 v37, 0x1

    .line 1474
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mWantDoubleBuffering:Z

    if-eqz v4, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->isSupportDoubleBuffering()Z

    move-result v4

    if-eqz v4, :cond_34

    .line 1475
    new-instance v4, Landroid/view/SurfaceBufferHelper;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-direct {v4, v5}, Landroid/view/SurfaceBufferHelper;-><init>(Landroid/view/Surface;)V

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/SurfaceBufferHelper;->setBufferCountHint(I)V

    .line 1480
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->setEmpty()V

    .line 1482
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v4, :cond_35

    .line 1484
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/SurfaceHolder;)Z
    :try_end_3
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-result v42

    .line 1537
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    :cond_35
    :goto_12
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 1538
    move-object/from16 v0, v36

    iget v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v18

    iput v4, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    .line 1543
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->width()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    .line 1544
    invoke-virtual/range {v36 .. v36}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    .line 1546
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_4b

    .line 1548
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1551
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;

    .line 1553
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/BaseSurfaceHolder;->setSurfaceFrameSize(II)V

    .line 1554
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1555
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 1556
    if-nez v39, :cond_49

    .line 1557
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1559
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1560
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1562
    .local v21, callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_48

    .line 1563
    move-object/from16 v17, v21

    .local v17, arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .local v51, len$:I
    const/16 v45, 0x0

    .local v45, i$:I
    :goto_13
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_48

    aget-object v20, v17, v45

    .line 1564
    .local v20, c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1563
    add-int/lit8 v45, v45, 0x1

    goto :goto_13

    .line 1301
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v27           #computesInternalInsets:Z
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v39           #hadSurface:Z
    .end local v42           #hwInitialized:Z
    .end local v45           #i$:I
    .end local v49           #insetsPending:Z
    .end local v51           #len$:I
    .end local v60           #relayoutResult:I
    .end local v75           #windowShouldResize:Z
    :cond_37
    const/16 v75, 0x0

    goto/16 :goto_9

    .line 1327
    .restart local v27       #computesInternalInsets:Z
    .restart local v49       #insetsPending:Z
    .restart local v60       #relayoutResult:I
    .restart local v75       #windowShouldResize:Z
    :cond_38
    const/16 v49, 0x0

    goto/16 :goto_a

    .line 1370
    .restart local v28       #contentInsetsChanged:Z
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    .restart local v69       #surfaceGenerationId:I
    :cond_39
    const/4 v4, 0x0

    goto/16 :goto_b

    .line 1374
    :cond_3a
    const/16 v28, 0x0

    goto/16 :goto_c

    .line 1376
    :cond_3b
    const/16 v73, 0x0

    goto/16 :goto_d

    .line 1396
    .restart local v26       #completed:Z
    .restart local v43       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v50       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v73       #visibleInsetsChanged:Z
    :cond_3c
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getWidth()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    if-ne v4, v5, :cond_3d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mHeight:I

    if-eq v4, v5, :cond_2d

    .line 1398
    :cond_3d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareLayer;->resize(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_e

    .line 1435
    :catch_0
    move-exception v33

    .line 1436
    .local v33, e:Ljava/lang/OutOfMemoryError;
    :try_start_5
    const-string v4, "ViewRootImpl"

    const-string v5, "Not enough memory for content change anim buffer"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1438
    if-eqz v50, :cond_3e

    .line 1439
    :try_start_6
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1441
    :cond_3e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v4, :cond_31

    .line 1442
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v4, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1443
    if-nez v26, :cond_31

    .line 1444
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v4}, Landroid/view/HardwareLayer;->destroy()V

    .line 1445
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_11

    .line 1531
    .end local v26           #completed:Z
    .end local v33           #e:Ljava/lang/OutOfMemoryError;
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    :catch_1
    move-exception v4

    goto/16 :goto_12

    .line 1408
    .restart local v26       #completed:Z
    .restart local v43       #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .restart local v50       #layerCanvas:Landroid/view/HardwareCanvas;
    .restart local v63       #restoreCount:I
    .restart local v69       #surfaceGenerationId:I
    .restart local v73       #visibleInsetsChanged:Z
    :cond_3f
    const/16 v64, 0x0

    goto/16 :goto_f

    .line 1414
    .restart local v64       #scrolling:Z
    :cond_40
    :try_start_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    move/from16 v77, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_7 .. :try_end_7} :catch_0

    .restart local v77       #yoff:I
    goto/16 :goto_10

    .line 1438
    .end local v63           #restoreCount:I
    .end local v64           #scrolling:Z
    .end local v77           #yoff:I
    :catchall_0
    move-exception v4

    if-eqz v50, :cond_41

    .line 1439
    :try_start_8
    invoke-virtual/range {v50 .. v50}, Landroid/view/HardwareCanvas;->onPostDraw()V

    .line 1441
    :cond_41
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v5, :cond_42

    .line 1442
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    move-object/from16 v0, v43

    invoke-virtual {v5, v0}, Landroid/view/HardwareLayer;->end(Landroid/graphics/Canvas;)V

    .line 1443
    if-nez v26, :cond_42

    .line 1444
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v5}, Landroid/view/HardwareLayer;->destroy()V

    .line 1445
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 1438
    :cond_42
    throw v4

    .line 1485
    .end local v26           #completed:Z
    .end local v43           #hwRendererCanvas:Landroid/view/HardwareCanvas;
    .end local v50           #layerCanvas:Landroid/view/HardwareCanvas;
    :catch_2
    move-exception v33

    .line 1486
    .local v33, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException initializing HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    .line 1488
    :try_start_9
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_43

    .line 1489
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1490
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_9

    .line 1494
    :cond_43
    :goto_14
    const/4 v4, 0x1

    :try_start_a
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    goto/16 :goto_0

    .line 1499
    .end local v33           #e:Landroid/view/Surface$OutOfResourcesException;
    :cond_44
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-nez v4, :cond_46

    .line 1502
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 1503
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 1504
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v4, :cond_45

    .line 1505
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1507
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->disposeResizeBuffer()V

    .line 1509
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 1511
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->destroy(Z)V

    goto/16 :goto_12

    .line 1513
    :cond_46
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->getGenerationId()I

    move-result v4

    move/from16 v0, v69

    if-eq v0, v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    if-eqz v4, :cond_35

    .line 1515
    const/16 v37, 0x1

    .line 1517
    :try_start_b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->updateSurface(Landroid/view/SurfaceHolder;)V
    :try_end_b
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_b .. :try_end_b} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_1

    goto/16 :goto_12

    .line 1518
    :catch_3
    move-exception v33

    .line 1519
    .restart local v33       #e:Landroid/view/Surface$OutOfResourcesException;
    :try_start_c
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException updating HW surface"

    move-object/from16 v0, v33

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1

    .line 1521
    :try_start_d
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_47

    .line 1522
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_8

    .line 1527
    :cond_47
    :goto_15
    const/4 v4, 0x1

    :try_start_e
    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1

    goto/16 :goto_0

    .line 1567
    .end local v33           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v69           #surfaceGenerationId:I
    .end local v73           #visibleInsetsChanged:Z
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_48
    const/16 v68, 0x1

    .line 1569
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_49
    if-eqz v68, :cond_4a

    .line 1570
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v12, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-interface {v4, v5, v6, v11, v12}, Landroid/view/SurfaceHolder$Callback2;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1572
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1573
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_4a

    .line 1574
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_16
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_4a

    aget-object v20, v17, v45

    .line 1575
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v11, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v20

    invoke-interface {v0, v4, v5, v6, v11}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 1574
    add-int/lit8 v45, v45, 0x1

    goto :goto_16

    .line 1580
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_4a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mIsCreating:Z

    .line 1599
    :cond_4b
    :goto_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_4d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v4}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1601
    if-nez v42, :cond_4c

    if-nez v75, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getWidth()I

    move-result v5

    if-ne v4, v5, :cond_4c

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v5, v5, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v5}, Landroid/view/HardwareRenderer;->getHeight()I

    move-result v5

    if-eq v4, v5, :cond_4d

    .line 1604
    :cond_4c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v4, v5, v6}, Landroid/view/HardwareRenderer;->setup(II)V

    .line 1605
    if-nez v42, :cond_4d

    .line 1606
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v4, v5}, Landroid/view/HardwareRenderer;->invalidate(Landroid/view/SurfaceHolder;)V

    .line 1611
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_52

    .line 1612
    and-int/lit8 v4, v60, 0x1

    if-eqz v4, :cond_5e

    const/4 v4, 0x1

    :goto_18
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v35

    .line 1614
    .local v35, focusChangedDueToTouchMode:Z
    if-nez v35, :cond_4e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-ne v4, v5, :cond_4e

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-ne v4, v5, :cond_4e

    if-eqz v28, :cond_52

    .line 1616
    :cond_4e
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v24

    .line 1617
    .restart local v24       #childWidthMeasureSpec:I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Landroid/view/ViewRootImpl;->getRootMeasureSpec(II)I

    move-result v23

    .line 1626
    .restart local v23       #childHeightMeasureSpec:I
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1631
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v74

    .line 1632
    .local v74, width:I
    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v40

    .line 1633
    .local v40, height:I
    const/16 v53, 0x0

    .line 1635
    .local v53, measureAgain:Z
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4f

    .line 1636
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mWidth:I

    sub-int v4, v4, v74

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v74, v74, v4

    .line 1637
    const/high16 v4, 0x4000

    move/from16 v0, v74

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1639
    const/16 v53, 0x1

    .line 1641
    :cond_4f
    move-object/from16 v0, v52

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_50

    .line 1642
    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    sub-int v4, v4, v40

    int-to-float v4, v4

    move-object/from16 v0, v52

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int v40, v40, v4

    .line 1643
    const/high16 v4, 0x4000

    move/from16 v0, v40

    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1645
    const/16 v53, 0x1

    .line 1648
    :cond_50
    if-eqz v53, :cond_51

    .line 1652
    move-object/from16 v0, v41

    move/from16 v1, v24

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1655
    :cond_51
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1660
    .end local v23           #childHeightMeasureSpec:I
    .end local v24           #childWidthMeasureSpec:I
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v35           #focusChangedDueToTouchMode:Z
    .end local v39           #hadSurface:Z
    .end local v40           #height:I
    .end local v42           #hwInitialized:Z
    .end local v53           #measureAgain:Z
    .end local v74           #width:I
    :cond_52
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    if-eqz v4, :cond_5f

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-nez v4, :cond_5f

    const/16 v31, 0x1

    .line 1661
    .local v31, didLayout:Z
    :goto_19
    if-nez v31, :cond_53

    move-object/from16 v0, v18

    iget-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-eqz v4, :cond_60

    :cond_53
    const/16 v70, 0x1

    .line 1663
    .local v70, triggerGlobalLayoutListener:Z
    :goto_1a
    if-eqz v31, :cond_55

    .line 1664
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 1665
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 1669
    const-wide/16 v66, 0x0

    .line 1673
    .local v66, startTime:J
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual/range {v41 .. v41}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object/from16 v0, v41

    invoke-virtual {v0, v4, v5, v6, v11}, Landroid/view/View;->layout(IIII)V

    .line 1690
    move-object/from16 v0, v41

    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v4, v4, 0x200

    if-eqz v4, :cond_55

    .line 1693
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1694
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v11, 0x1

    aget v6, v6, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mRight:I

    add-int/2addr v11, v12

    move-object/from16 v0, v41

    iget v12, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mTmpLocation:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mBottom:I

    add-int/2addr v12, v13

    move-object/from16 v0, v41

    iget v13, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v12, v13

    invoke-virtual {v4, v5, v6, v11, v12}, Landroid/graphics/Region;->set(IIII)Z

    .line 1698
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 1699
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_54

    .line 1700
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->translateRegionInWindowToScreen(Landroid/graphics/Region;)V

    .line 1703
    :cond_54
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_55

    .line 1704
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPreviousTransparentRegion:Landroid/graphics/Region;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1707
    :try_start_f
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mTransparentRegion:Landroid/graphics/Region;

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowSession;->setTransparentRegion(Landroid/view/IWindow;Landroid/graphics/Region;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_7

    .line 1720
    .end local v66           #startTime:J
    :cond_55
    :goto_1b
    if-eqz v70, :cond_56

    .line 1721
    const/4 v4, 0x0

    move-object/from16 v0, v18

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 1722
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalLayout()V

    .line 1724
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_56

    .line 1725
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->postSendWindowContentChangedCallback()V

    .line 1729
    :cond_56
    if-eqz v27, :cond_58

    .line 1731
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mGivenInternalInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v47, v0

    .line 1732
    .local v47, insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    invoke-virtual/range {v47 .. v47}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->reset()V

    .line 1735
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnComputeInternalInsets(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1738
    if-nez v49, :cond_57

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 1739
    :cond_57
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mLastGivenInsets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;

    move-object/from16 v0, v47

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->set(Landroid/view/ViewTreeObserver$InternalInsetsInfo;)V

    .line 1745
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v4, :cond_61

    .line 1746
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedContentInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 1747
    .local v7, contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 1748
    .local v8, visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, v47

    iget-object v5, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v4, v5}, Landroid/content/res/CompatibilityInfo$Translator;->getTranslatedTouchableArea(Landroid/graphics/Region;)Landroid/graphics/Region;

    move-result-object v9

    .line 1756
    .local v9, touchableRegion:Landroid/graphics/Region;
    :goto_1c
    :try_start_10
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, v47

    iget v6, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->mTouchableInsets:I

    invoke-interface/range {v4 .. v9}, Landroid/view/IWindowSession;->setInsets(Landroid/view/IWindow;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Region;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_6

    .line 1763
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_58
    :goto_1d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-eqz v4, :cond_59

    .line 1767
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_59

    .line 1768
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-nez v4, :cond_62

    .line 1769
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/View;->requestFocus(I)Z

    .line 1770
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 1781
    :cond_59
    :goto_1e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFirst:Z

    .line 1782
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    .line 1783
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 1784
    move/from16 v0, v71

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewRootImpl;->mViewVisibility:I

    .line 1786
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v4, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    if-eqz v4, :cond_5a

    .line 1787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v4}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v46

    .line 1789
    .local v46, imTarget:Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    move/from16 v0, v46

    if-eq v0, v4, :cond_5a

    .line 1790
    move/from16 v0, v46

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 1791
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v10

    .line 1792
    .local v10, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v10, :cond_5a

    if-eqz v46, :cond_5a

    .line 1793
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v10, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 1794
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v4, :cond_63

    const/4 v14, 0x1

    :goto_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v15, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v10 .. v15}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 1801
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v46           #imTarget:Z
    :cond_5a
    move-object/from16 v0, v18

    iget-object v4, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v4}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    move-result v4

    if-nez v4, :cond_5b

    if-eqz v71, :cond_64

    :cond_5b
    const/16 v22, 0x1

    .line 1804
    .local v22, cancelDraw:Z
    :goto_20
    if-nez v22, :cond_6b

    if-nez v54, :cond_6b

    .line 1805
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_66

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_66

    .line 1806
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_65

    .line 1807
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->startChangingAnimations()V

    .line 1806
    add-int/lit8 v44, v44, 0x1

    goto :goto_21

    .line 1581
    .end local v22           #cancelDraw:Z
    .end local v31           #didLayout:Z
    .end local v44           #i:I
    .end local v70           #triggerGlobalLayoutListener:Z
    .restart local v28       #contentInsetsChanged:Z
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    :cond_5c
    if-eqz v39, :cond_4b

    .line 1582
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->ungetCallbacks()V

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1584
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1585
    if-eqz v21, :cond_5d

    .line 1586
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_22
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_5d

    aget-object v20, v17, v45

    .line 1587
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 1586
    add-int/lit8 v45, v45, 0x1

    goto :goto_22

    .line 1590
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_5d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1592
    :try_start_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    new-instance v5, Landroid/view/Surface;

    invoke-direct {v5}, Landroid/view/Surface;-><init>()V

    iput-object v5, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurface:Landroid/view/Surface;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 1594
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v4, v4, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_17

    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    iget-object v5, v5, Lcom/android/internal/view/BaseSurfaceHolder;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4

    .line 1612
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    :cond_5e
    const/4 v4, 0x0

    goto/16 :goto_18

    .line 1660
    .end local v28           #contentInsetsChanged:Z
    .end local v34           #fl:I
    .end local v39           #hadSurface:Z
    .end local v42           #hwInitialized:Z
    :cond_5f
    const/16 v31, 0x0

    goto/16 :goto_19

    .line 1661
    .restart local v31       #didLayout:Z
    :cond_60
    const/16 v70, 0x0

    goto/16 :goto_1a

    .line 1750
    .restart local v47       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v70       #triggerGlobalLayoutListener:Z
    :cond_61
    move-object/from16 v0, v47

    iget-object v7, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->contentInsets:Landroid/graphics/Rect;

    .line 1751
    .restart local v7       #contentInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v8, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 1752
    .restart local v8       #visibleInsets:Landroid/graphics/Rect;
    move-object/from16 v0, v47

    iget-object v9, v0, Landroid/view/ViewTreeObserver$InternalInsetsInfo;->touchableRegion:Landroid/graphics/Region;

    .restart local v9       #touchableRegion:Landroid/graphics/Region;
    goto/16 :goto_1c

    .line 1774
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :cond_62
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    goto/16 :goto_1e

    .line 1794
    .restart local v10       #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v46       #imTarget:Z
    :cond_63
    const/4 v14, 0x0

    goto/16 :goto_1f

    .line 1801
    .end local v10           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v46           #imTarget:Z
    :cond_64
    const/16 v22, 0x0

    goto/16 :goto_20

    .line 1809
    .restart local v22       #cancelDraw:Z
    .restart local v44       #i:I
    :cond_65
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1811
    .end local v44           #i:I
    :cond_66
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1818
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl;->draw(Z)V

    .line 1824
    and-int/lit8 v4, v60, 0x2

    if-nez v4, :cond_67

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    if-eqz v4, :cond_6a

    .line 1829
    :cond_67
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1830
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-eqz v4, :cond_69

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1831
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1832
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    invoke-virtual {v4}, Lcom/android/internal/view/BaseSurfaceHolder;->getCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v21

    .line 1833
    .restart local v21       #callbacks:[Landroid/view/SurfaceHolder$Callback;
    if-eqz v21, :cond_69

    .line 1834
    move-object/from16 v17, v21

    .restart local v17       #arr$:[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v51, v0

    .restart local v51       #len$:I
    const/16 v45, 0x0

    .restart local v45       #i$:I
    :goto_23
    move/from16 v0, v45

    move/from16 v1, v51

    if-ge v0, v1, :cond_69

    aget-object v20, v17, v45

    .line 1835
    .restart local v20       #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    instance-of v4, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v4, :cond_68

    .line 1836
    check-cast v20, Landroid/view/SurfaceHolder$Callback2;

    .end local v20           #c:Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    move-object/from16 v0, v20

    invoke-interface {v0, v4}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    .line 1834
    :cond_68
    add-int/lit8 v45, v45, 0x1

    goto :goto_23

    .line 1843
    .end local v17           #arr$:[Landroid/view/SurfaceHolder$Callback;
    .end local v21           #callbacks:[Landroid/view/SurfaceHolder$Callback;
    .end local v45           #i$:I
    .end local v51           #len$:I
    :cond_69
    :try_start_12
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 1845
    sget-boolean v4, Lcom/htc/utils/PerformanceLogUtil;->Enabled:Z

    if-eqz v4, :cond_6a

    .line 1846
    move-object/from16 v0, v41

    iget-object v4, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/htc/utils/PerformanceLogUtil;->logFinishDrawing(Landroid/content/Context;)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_5

    .line 1878
    :cond_6a
    :goto_24
    sget-boolean v4, Landroid/view/ViewRootImpl;->SUPPORT_PEN_EVENT:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mPenModeStatus:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    if-eq v4, v5, :cond_0

    .line 1879
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/view/ViewRootImpl;->mPenModeStatus:I

    .line 1884
    :try_start_13
    sget-object v4, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    invoke-interface {v4, v5, v6}, Landroid/view/IWindowSession;->updatePenWorkingMode(Landroid/view/IWindow;I)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_4

    goto/16 :goto_0

    .line 1885
    :catch_4
    move-exception v4

    goto/16 :goto_0

    .line 1856
    :cond_6b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v4, :cond_6d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_6d

    .line 1857
    const/16 v44, 0x0

    .restart local v44       #i:I
    :goto_25
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v44

    if-ge v0, v4, :cond_6c

    .line 1858
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    move/from16 v0, v44

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/LayoutTransition;

    invoke-virtual {v4}, Landroid/animation/LayoutTransition;->endChangingAnimations()V

    .line 1857
    add-int/lit8 v44, v44, 0x1

    goto :goto_25

    .line 1860
    :cond_6c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1864
    .end local v44           #i:I
    :cond_6d
    and-int/lit8 v4, v60, 0x2

    if-eqz v4, :cond_6e

    .line 1865
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 1867
    :cond_6e
    if-eqz v37, :cond_6f

    .line 1868
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 1871
    :cond_6f
    if-nez v71, :cond_6a

    .line 1874
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_24

    .line 1849
    :catch_5
    move-exception v4

    goto :goto_24

    .line 1758
    .end local v22           #cancelDraw:Z
    .restart local v7       #contentInsets:Landroid/graphics/Rect;
    .restart local v8       #visibleInsets:Landroid/graphics/Rect;
    .restart local v9       #touchableRegion:Landroid/graphics/Region;
    .restart local v47       #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    :catch_6
    move-exception v4

    goto/16 :goto_1d

    .line 1708
    .end local v7           #contentInsets:Landroid/graphics/Rect;
    .end local v8           #visibleInsets:Landroid/graphics/Rect;
    .end local v9           #touchableRegion:Landroid/graphics/Region;
    .end local v47           #insets:Landroid/view/ViewTreeObserver$InternalInsetsInfo;
    .restart local v66       #startTime:J
    :catch_7
    move-exception v4

    goto/16 :goto_1b

    .line 1525
    .end local v31           #didLayout:Z
    .end local v66           #startTime:J
    .end local v70           #triggerGlobalLayoutListener:Z
    .restart local v28       #contentInsetsChanged:Z
    .restart local v33       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v34       #fl:I
    .restart local v39       #hadSurface:Z
    .restart local v42       #hwInitialized:Z
    .restart local v69       #surfaceGenerationId:I
    .restart local v73       #visibleInsetsChanged:Z
    :catch_8
    move-exception v4

    goto/16 :goto_15

    .line 1492
    :catch_9
    move-exception v4

    goto/16 :goto_14
.end method

.method private postSendWindowContentChangedCallback()V
    .locals 3

    .prologue
    .line 4352
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-nez v0, :cond_0

    .line 4353
    new-instance v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;-><init>(Landroid/view/ViewRootImpl;Landroid/view/ViewRootImpl$1;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    .line 4356
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    if-nez v0, :cond_1

    .line 4357
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;->mIsPending:Z

    .line 4358
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewRootImpl;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4361
    :cond_1
    return-void
.end method

.method private processInputEvents(Z)V
    .locals 2
    .parameter "outOfOrder"

    .prologue
    .line 953
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    if-eqz v1, :cond_1

    .line 954
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mMessage:Landroid/os/Message;

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->handleMessage(Landroid/os/Message;)V

    .line 955
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 956
    .local v0, tmpMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    iget-object v1, v1, Landroid/view/ViewRootImpl$InputEventMessage;->mNext:Landroid/view/ViewRootImpl$InputEventMessage;

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mPendingInputEvents:Landroid/view/ViewRootImpl$InputEventMessage;

    .line 957
    invoke-virtual {v0}, Landroid/view/ViewRootImpl$InputEventMessage;->recycle()V

    .line 958
    if-eqz p1, :cond_0

    .line 959
    const/16 v1, 0x400

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    goto :goto_0

    .line 962
    .end local v0           #tmpMessage:Landroid/view/ViewRootImpl$InputEventMessage;
    :cond_1
    return-void
.end method

.method private profileRendering(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 1985
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfileRendering:Z

    if-eqz v0, :cond_0

    .line 1986
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mRenderProfilingEnabled:Z

    .line 1987
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 1988
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/view/ViewRootImpl$1;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$1;-><init>(Landroid/view/ViewRootImpl;)V

    const-string v2, "Rendering Profiler"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    .line 2009
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2015
    :cond_0
    :goto_0
    return-void

    .line 2011
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 2012
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mRenderProfiler:Ljava/lang/Thread;

    goto :goto_0
.end method

.method private relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I
    .locals 17
    .parameter "params"
    .parameter "viewVisibility"
    .parameter "insetsPending"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3883
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v14, v1, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 3884
    .local v14, appScale:F
    const/16 v16, 0x0

    .line 3885
    .local v16, restore:Z
    if-eqz p1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_0

    .line 3886
    const/16 v16, 0x1

    .line 3887
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 3888
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 3890
    :cond_0
    if-eqz p1, :cond_1

    .line 3893
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    const/4 v2, 0x0

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    .line 3895
    if-eqz p1, :cond_2

    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_2

    .line 3897
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mTargetSdkVersion:I

    const/16 v2, 0xe

    if-ge v1, v2, :cond_2

    .line 3898
    const-string v1, "ViewRootImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Window type can not be changed after the window is added; ignoring change of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3900
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    move-object/from16 v0, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3903
    :cond_2
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mSeq:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v5, 0x3f00

    add-float/2addr v4, v5

    float-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v14

    const/high16 v6, 0x3f00

    add-float/2addr v4, v6

    float-to-int v6, v4

    if-eqz p3, :cond_5

    const/4 v8, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/ViewRootImpl;->mPendingConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    move-object/from16 v4, p1

    move/from16 v7, p2

    invoke-interface/range {v1 .. v13}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v15

    .line 3911
    .local v15, relayoutResult:I
    if-eqz v16, :cond_3

    .line 3912
    invoke-virtual/range {p1 .. p1}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 3915
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_4

    .line 3916
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWinFrame(Landroid/graphics/Rect;)V

    .line 3917
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3918
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 3920
    :cond_4
    return v15

    .line 3903
    .end local v15           #relayoutResult:I
    :cond_5
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private removeSendWindowContentChangedCallback()V
    .locals 1

    .prologue
    .line 4368
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    if-eqz v0, :cond_0

    .line 4369
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSendWindowContentChangedAccessibilityEvent:Landroid/view/ViewRootImpl$SendWindowContentChangedAccessibilityEvent;

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4371
    :cond_0
    return-void
.end method

.method private requestDoubleBuffering()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWantDoubleBuffering:Z

    .line 374
    return-void
.end method

.method private sendAccessibilityEvents()V
    .locals 3

    .prologue
    .line 4335
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4343
    :cond_0
    :goto_0
    return-void

    .line 4338
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 4339
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 4340
    .local v0, focusedView:Landroid/view/View;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    .line 4341
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0
.end method

.method private sendActionUpPosition(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4264
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1, v2, v3}, Landroid/view/IWindowSession;->sendActionUpPositionForAnimation(FFLandroid/view/IWindow;)V

    .line 4265
    return-void
.end method

.method private startInputEvent(Landroid/view/InputQueue$FinishedCallback;)V
    .locals 2
    .parameter "finishedCallback"

    .prologue
    .line 2951
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    if-eqz v0, :cond_0

    .line 2952
    const-string v0, "ViewRootImpl"

    const-string v1, "Received a new input event from the input queue but there is already an unfinished input event in progress."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2962
    :cond_0
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mFinishedCallback:Landroid/view/InputQueue$FinishedCallback;

    .line 2963
    return-void
.end method

.method private trackFPS()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 2023
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 2024
    .local v3, nowTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-gez v8, :cond_1

    .line 2025
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2026
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2041
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    .line 2029
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2030
    .local v5, thisHash:Ljava/lang/String;
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    sub-long v1, v3, v8

    .line 2031
    .local v1, frameTime:J
    iget-wide v8, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    sub-long v6, v3, v8

    .line 2032
    .local v6, totalTime:J
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFrame time:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2033
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsPrevTime:J

    .line 2034
    const-wide/16 v8, 0x3e8

    cmp-long v8, v6, v8

    if-lez v8, :cond_0

    .line 2035
    iget v8, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    int-to-float v8, v8

    const/high16 v9, 0x447a

    mul-float/2addr v8, v9

    long-to-float v9, v6

    div-float v0, v8, v9

    .line 2036
    .local v0, fps:F
    const-string v8, "ViewRootImpl"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\tFPS:\t"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2037
    iput-wide v3, p0, Landroid/view/ViewRootImpl;->mFpsStartTime:J

    .line 2038
    iput v12, p0, Landroid/view/ViewRootImpl;->mFpsNumFrames:I

    goto :goto_0
.end method

.method private updateJoystickDirection(Landroid/view/MotionEvent;Z)V
    .locals 16
    .parameter "event"
    .parameter "synthesizeNewKeys"

    .prologue
    .line 3385
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 3386
    .local v2, time:J
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    .line 3387
    .local v9, metaState:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v10

    .line 3388
    .local v10, deviceId:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v13

    .line 3390
    .local v13, source:I
    const/16 v1, 0xf

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3391
    .local v14, xDirection:I
    if-nez v14, :cond_0

    .line 3392
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v14

    .line 3395
    :cond_0
    const/16 v1, 0x10

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3396
    .local v15, yDirection:I
    if-nez v15, :cond_1

    .line 3397
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Landroid/view/ViewRootImpl;->joystickAxisValueToDirection(F)I

    move-result v15

    .line 3400
    :cond_1
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    if-eq v14, v1, :cond_3

    .line 3401
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    if-eqz v1, :cond_2

    .line 3402
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3405
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3408
    :cond_2
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ViewRootImpl;->mLastJoystickXDirection:I

    .line 3410
    if-eqz v14, :cond_3

    if-eqz p2, :cond_3

    .line 3411
    if-lez v14, :cond_6

    const/16 v1, 0x16

    :goto_0
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    .line 3413
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickXKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3419
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    if-eq v15, v1, :cond_5

    .line 3420
    move-object/from16 v0, p0

    iget v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    if-eqz v1, :cond_4

    .line 3421
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3424
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3427
    :cond_4
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/ViewRootImpl;->mLastJoystickYDirection:I

    .line 3429
    if-eqz v15, :cond_5

    if-eqz p2, :cond_5

    .line 3430
    if-lez v15, :cond_7

    const/16 v1, 0x14

    :goto_1
    move-object/from16 v0, p0

    iput v1, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    .line 3432
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/ViewRootImpl;->mLastJoystickYKeyCode:I

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x400

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v4}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    .line 3437
    :cond_5
    return-void

    .line 3411
    :cond_6
    const/16 v1, 0x15

    goto :goto_0

    .line 3430
    :cond_7
    const/16 v1, 0x13

    goto :goto_1
.end method


# virtual methods
.method public bringChildToFront(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 884
    return-void
.end method

.method checkThread()V
    .locals 2

    .prologue
    .line 4396
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4397
    new-instance v0, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;

    const-string v1, "Only the original thread that created a view hierarchy can touch its views."

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$CalledFromWrongThreadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4400
    :cond_0
    return-void
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .locals 0
    .parameter "child"

    .prologue
    .line 4385
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .locals 4
    .parameter "child"

    .prologue
    const/4 v3, 0x0

    .line 2427
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2429
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2432
    .local v0, oldFocus:Landroid/view/View;
    iput-object v3, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2433
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2435
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2436
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2441
    :cond_0
    :goto_0
    return-void

    .line 2438
    :cond_1
    if-eqz v0, :cond_0

    .line 2439
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    invoke-virtual {v1, v0, v3}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method public createContextMenu(Landroid/view/ContextMenu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 4382
    return-void
.end method

.method public debug()V
    .locals 1

    .prologue
    .line 3985
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->debug()V

    .line 3986
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 669
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 671
    const/16 v0, 0x3c

    invoke-static {v0}, Landroid/view/HardwareRenderer;->trimMemory(I)V

    .line 679
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    goto :goto_0
.end method

.method destroyHardwareResources()V
    .locals 2

    .prologue
    .line 652
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyLayers(Landroid/view/View;)V

    .line 656
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 658
    :cond_1
    return-void
.end method

.method public die(Z)V
    .locals 1
    .parameter "immediate"

    .prologue
    .line 4014
    if-eqz p1, :cond_0

    .line 4015
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->doDie()V

    .line 4019
    :goto_0
    return-void

    .line 4017
    :cond_0
    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public dispatchAppVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 4283
    const/16 v1, 0x3f0

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4284
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4285
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4286
    return-void

    .line 4284
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchCloseSystemDialogs(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 4302
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4303
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3f6

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4304
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4305
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4306
    return-void
.end method

.method dispatchDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2478
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_1

    .line 2479
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2481
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    invoke-virtual {v0}, Landroid/view/HardwareRenderer;->validate()Z

    .line 2483
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 2486
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    .line 2487
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    .line 2489
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->removeSendWindowContentChangedCallback()V

    .line 2493
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mGhostView:Ljava/lang/ref/WeakReference;

    .line 2496
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 2497
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 2498
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object v2, v0, Landroid/view/View$AttachInfo;->mSurface:Landroid/view/Surface;

    .line 2500
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 2502
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 2504
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    if-eqz v0, :cond_4

    .line 2505
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v0, v1}, Landroid/view/InputQueue$Callback;->onInputQueueDestroyed(Landroid/view/InputQueue;)V

    .line 2506
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 2507
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 2512
    :cond_2
    :goto_0
    :try_start_0
    sget-object v0, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v0, v1}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2518
    :goto_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_3

    .line 2519
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 2520
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 2522
    :cond_3
    return-void

    .line 2508
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_2

    .line 2509
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-static {v0}, Landroid/view/InputQueue;->unregisterInputChannel(Landroid/view/InputChannel;)V

    goto :goto_0

    .line 2513
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 4310
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 4311
    const/16 v1, 0x3f8

    .line 4312
    .local v1, what:I
    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 4316
    :goto_0
    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4317
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4318
    return-void

    .line 4314
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #what:I
    :cond_0
    const/16 v1, 0x3f7

    .restart local v1       #what:I
    goto :goto_0
.end method

.method public dispatchFinishedEvent(IZ)V
    .locals 2
    .parameter "seq"
    .parameter "handled"

    .prologue
    .line 4067
    const/16 v1, 0x3f2

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4068
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4069
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 4070
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4071
    return-void

    .line 4069
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public dispatchGetNewSurface()V
    .locals 2

    .prologue
    .line 4289
    const/16 v1, 0x3f1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4290
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4291
    return-void
.end method

.method public dispatchKey(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 4199
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchKey(Landroid/view/KeyEvent;Z)V

    .line 4200
    return-void
.end method

.method public dispatchPen(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 5591
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewRootImpl;->dispatchPen(Landroid/view/MotionEvent;Z)V

    .line 5592
    return-void
.end method

.method public dispatchRelocated(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 4098
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v1, p2, :cond_0

    .line 4106
    :goto_0
    return-void

    .line 4102
    :cond_0
    const/16 v1, 0x401

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4103
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4104
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4105
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public dispatchResized(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "coveredInsets"
    .parameter "visibleInsets"
    .parameter "reportDraw"
    .parameter "newConfig"

    .prologue
    .line 4079
    if-eqz p5, :cond_1

    const/16 v2, 0x3eb

    :goto_0
    invoke-virtual {p0, v2}, Landroid/view/ViewRootImpl;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 4080
    .local v0, msg:Landroid/os/Message;
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v2, :cond_0

    .line 4081
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p3}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 4082
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v2, p4}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 4083
    int-to-float v2, p1

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p1, v2

    .line 4084
    int-to-float v2, p2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v3, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    mul-float/2addr v2, v3

    float-to-int p2, v2

    .line 4086
    :cond_0
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 4087
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 4088
    new-instance v1, Landroid/view/ViewRootImpl$ResizedInfo;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$ResizedInfo;-><init>(Landroid/view/ViewRootImpl;)V

    .line 4089
    .local v1, ri:Landroid/view/ViewRootImpl$ResizedInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    .line 4090
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    .line 4091
    iput-object p6, v1, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 4092
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 4093
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4094
    return-void

    .line 4079
    .end local v0           #msg:Landroid/os/Message;
    .end local v1           #ri:Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_1
    const/16 v2, 0x3ea

    goto :goto_0
.end method

.method public dispatchSystemUiVisibilityChanged(IIII)V
    .locals 2
    .parameter "seq"
    .parameter "globalVisibility"
    .parameter "localValue"
    .parameter "localChanges"

    .prologue
    .line 4322
    new-instance v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;-><init>()V

    .line 4323
    .local v0, args:Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;
    iput p1, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    .line 4324
    iput p2, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    .line 4325
    iput p3, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    .line 4326
    iput p4, v0, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    .line 4327
    const/16 v1, 0x3f9

    invoke-virtual {p0, v1, v0}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4328
    return-void
.end method

.method disposeResizeBuffer()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    invoke-virtual {v0}, Landroid/view/HardwareLayer;->destroy()V

    .line 926
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    .line 928
    :cond_0
    return-void
.end method

.method doDie()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 4022
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 4024
    monitor-enter p0

    .line 4025
    :try_start_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 4026
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 4027
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->dispatchDetachedFromWindow()V

    .line 4030
    :cond_0
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mFirst:Z

    if-nez v2, :cond_4

    .line 4031
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->destroyHardwareRenderer()V

    .line 4033
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 4034
    .local v0, viewVisibility:I
    iget v2, p0, Landroid/view/ViewRootImpl;->mViewVisibility:I

    if-eq v2, v0, :cond_1

    const/4 v1, 0x1

    .line 4035
    .local v1, viewVisibilityChanged:Z
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 4040
    :cond_2
    :try_start_1
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v0, v3}, Landroid/view/ViewRootImpl;->relayoutWindow(Landroid/view/WindowManager$LayoutParams;IZ)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 4042
    sget-object v2, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 4048
    :cond_3
    :goto_0
    :try_start_2
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 4050
    .end local v0           #viewVisibility:I
    .end local v1           #viewVisibilityChanged:Z
    :cond_4
    monitor-exit p0

    .line 4051
    return-void

    .line 4050
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 4044
    .restart local v0       #viewVisibility:I
    .restart local v1       #viewVisibilityChanged:Z
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public dumpGfxInfo(Ljava/io/PrintWriter;[I)V
    .locals 2
    .parameter "pw"
    .parameter "info"

    .prologue
    const/4 v1, 0x0

    .line 3989
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3990
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-direct {p0, v0, p2}, Landroid/view/ViewRootImpl;->getGfxInfo(Landroid/view/View;[I)V

    .line 3994
    :goto_0
    return-void

    .line 3992
    :cond_0
    const/4 v0, 0x1

    aput v1, p2, v0

    aput v1, p2, v1

    goto :goto_0
.end method

.method enqueuePendingEvent(Ljava/lang/Object;Z)I
    .locals 2
    .parameter "event"
    .parameter "sendDone"

    .prologue
    .line 3552
    iget v1, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    add-int/lit8 v0, v1, 0x1

    .line 3553
    .local v0, seq:I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 3554
    :cond_0
    iput v0, p0, Landroid/view/ViewRootImpl;->mPendingEventSeq:I

    .line 3555
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3556
    if-eqz p2, :cond_1

    .end local v0           #seq:I
    :goto_0
    return v0

    .restart local v0       #seq:I
    :cond_1
    neg-int v0, v0

    goto :goto_0
.end method

.method ensureTouchMode(Z)Z
    .locals 2
    .parameter "inTouchMode"

    .prologue
    .line 3026
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mInTouchMode:Z

    if-ne v1, p1, :cond_0

    const/4 v1, 0x0

    .line 3036
    :goto_0
    return v1

    .line 3030
    :cond_0
    :try_start_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    invoke-interface {v1, p1}, Landroid/view/IWindowSession;->setInTouchMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3036
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    move-result v1

    goto :goto_0

    .line 3031
    :catch_0
    move-exception v0

    .line 3032
    .local v0, e:Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 3977
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3978
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3979
    const/4 v0, 0x0

    .line 3981
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 2445
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2447
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 2448
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2449
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 2465
    :cond_0
    :goto_0
    return-void

    .line 2454
    :cond_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2455
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x4

    if-ne v1, v2, :cond_2

    const/4 v0, 0x1

    .line 2459
    .local v0, descendantsHaveDibsOnFocus:Z
    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-static {p1, v1}, Landroid/view/ViewRootImpl;->isViewDescendantOf(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2461
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2455
    .end local v0           #descendantsHaveDibsOnFocus:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;
    .locals 2

    .prologue
    .line 3870
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 3871
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getAccessibilityInteractionController called when there is no mView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3874
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    if-nez v0, :cond_1

    .line 3875
    new-instance v0, Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    invoke-direct {v0, p0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    .line 3877
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionController:Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    return-object v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .locals 3
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eq p1, v0, :cond_0

    .line 876
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "child is not mine, honest!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 880
    :cond_0
    iget v0, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v1, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v0

    return v0
.end method

.method getHostVisibility()I
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public getLastTouchPoint(Landroid/graphics/Point;)V
    .locals 1
    .parameter "outLocation"

    .prologue
    .line 3849
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 3850
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLastTouchPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 3851
    return-void
.end method

.method final getLocation()Landroid/view/WindowLeaked;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mLocation:Landroid/view/WindowLeaked;

    return-object v0
.end method

.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .parameter "message"

    .prologue
    .line 2627
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 2686
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2629
    :sswitch_0
    const-string v0, "DO_TRAVERSAL"

    goto :goto_0

    .line 2631
    :sswitch_1
    const-string v0, "DIE"

    goto :goto_0

    .line 2633
    :sswitch_2
    const-string v0, "RESIZED"

    goto :goto_0

    .line 2635
    :sswitch_3
    const-string v0, "RESIZED_REPORT"

    goto :goto_0

    .line 2637
    :sswitch_4
    const-string v0, "WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 2639
    :sswitch_5
    const-string v0, "DISPATCH_KEY"

    goto :goto_0

    .line 2641
    :sswitch_6
    const-string v0, "DISPATCH_POINTER"

    goto :goto_0

    .line 2643
    :sswitch_7
    const-string v0, "DISPATCH_TRACKBALL"

    goto :goto_0

    .line 2645
    :sswitch_8
    const-string v0, "DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 2647
    :sswitch_9
    const-string v0, "DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 2649
    :sswitch_a
    const-string v0, "FINISHED_EVENT"

    goto :goto_0

    .line 2651
    :sswitch_b
    const-string v0, "DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 2653
    :sswitch_c
    const-string v0, "FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 2655
    :sswitch_d
    const-string v0, "CHECK_FOCUS"

    goto :goto_0

    .line 2657
    :sswitch_e
    const-string v0, "CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 2659
    :sswitch_f
    const-string v0, "DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 2661
    :sswitch_10
    const-string v0, "DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 2663
    :sswitch_11
    const-string v0, "DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 2665
    :sswitch_12
    const-string v0, "DISPATCH_GENERIC_MOTION"

    goto :goto_0

    .line 2667
    :sswitch_13
    const-string v0, "UPDATE_CONFIGURATION"

    goto :goto_0

    .line 2669
    :sswitch_14
    const-string v0, "DO_PERFORM_ACCESSIBILITY_ACTION"

    goto :goto_0

    .line 2671
    :sswitch_15
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_ACCESSIBILITY_ID"

    goto :goto_0

    .line 2673
    :sswitch_16
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_ID"

    goto :goto_0

    .line 2675
    :sswitch_17
    const-string v0, "DO_FIND_ACCESSIBLITY_NODE_INFO_BY_VIEW_TEXT"

    goto :goto_0

    .line 2677
    :sswitch_18
    const-string v0, "PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 2680
    :sswitch_19
    const-string v0, "RELOCATED"

    goto :goto_0

    .line 2683
    :sswitch_1a
    const-string v0, "DISPATCH_PEN"

    goto :goto_0

    .line 2627
    nop

    :sswitch_data_0
    .sparse-switch
        0x3e8 -> :sswitch_0
        0x3e9 -> :sswitch_1
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_3
        0x3ec -> :sswitch_4
        0x3ed -> :sswitch_5
        0x3ee -> :sswitch_6
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_8
        0x3f1 -> :sswitch_9
        0x3f2 -> :sswitch_a
        0x3f3 -> :sswitch_b
        0x3f4 -> :sswitch_c
        0x3f5 -> :sswitch_d
        0x3f6 -> :sswitch_e
        0x3f7 -> :sswitch_f
        0x3f8 -> :sswitch_10
        0x3f9 -> :sswitch_11
        0x3fa -> :sswitch_12
        0x3fb -> :sswitch_13
        0x3fc -> :sswitch_14
        0x3fd -> :sswitch_15
        0x3fe -> :sswitch_16
        0x3ff -> :sswitch_17
        0x400 -> :sswitch_18
        0x401 -> :sswitch_19
        0x44c -> :sswitch_1a
    .end sparse-switch
.end method

.method public getParent()Landroid/view/ViewParent;
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    return-object v0
.end method

.method handleAppVisibility(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 792
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    if-eq v0, p1, :cond_0

    .line 793
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 794
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 796
    :cond_0
    return-void
.end method

.method public handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V
    .locals 5
    .parameter "args"

    .prologue
    const/4 v4, 0x1

    .line 3826
    iget v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    if-eq v0, v1, :cond_0

    .line 3830
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->seq:I

    iput v0, p0, Landroid/view/ViewRootImpl;->mSeq:I

    .line 3831
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mForceReportNewAttributes:Z

    .line 3832
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3834
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 3846
    :goto_0
    return-void

    .line 3835
    :cond_1
    iget v0, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    if-eqz v0, :cond_3

    .line 3836
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_2

    .line 3837
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v1, v1, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v3, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/View$AttachInfo;->mSystemUiVisibility:I

    .line 3841
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localValue:I

    iget v2, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->localChanges:I

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->updateLocalSystemUiVisibility(II)V

    .line 3842
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v4, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 3843
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 3845
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, p1, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;->globalVisibility:I

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    goto :goto_0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 799
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mNewSurfaceNeeded:Z

    .line 800
    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 801
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 802
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 16
    .parameter "msg"

    .prologue
    .line 2691
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 2948
    :cond_0
    :goto_0
    return-void

    .line 2693
    :sswitch_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 2696
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v13, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v13, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 2697
    .local v13, info:Landroid/view/View$AttachInfo$InvalidateInfo;
    iget-object v2, v13, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    iget v3, v13, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    iget v4, v13, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    iget v5, v13, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    iget v6, v13, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->invalidate(IIII)V

    .line 2698
    invoke-virtual {v13}, Landroid/view/View$AttachInfo$InvalidateInfo;->release()V

    goto :goto_0

    .line 2701
    .end local v13           #info:Landroid/view/View$AttachInfo$InvalidateInfo;
    :sswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v2, :cond_1

    .line 2702
    const-string v2, "ViewAncestor"

    invoke-static {v2}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 2711
    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->performTraversals()V

    .line 2723
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mProfile:Z

    if-eqz v2, :cond_0

    .line 2724
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 2725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mProfile:Z

    goto :goto_0

    .line 2729
    :sswitch_3
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Landroid/view/ViewRootImpl;->handleFinishedEvent(IZ)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 2732
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverKeyEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 2735
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverPointerEvent(Landroid/view/MotionEvent;Z)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    goto :goto_3

    .line 2739
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverPenEvent(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto :goto_4

    .line 2743
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    :goto_5
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverTrackballEvent(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_5

    .line 2746
    :sswitch_8
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    :goto_6
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverGenericMotionEvent(Landroid/view/MotionEvent;Z)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_6

    .line 2749
    :sswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Landroid/view/ViewRootImpl;->processInputEvents(Z)V

    goto/16 :goto_0

    .line 2752
    :sswitch_a
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v2, 0x0

    goto :goto_7

    .line 2755
    :sswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto/16 :goto_0

    .line 2758
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/view/ViewRootImpl$ResizedInfo;

    .line 2760
    .local v14, ri:Landroid/view/ViewRootImpl$ResizedInfo;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    if-ne v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v3, v14, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v2, v2, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    .line 2768
    .end local v14           #ri:Landroid/view/ViewRootImpl$ResizedInfo;
    :cond_9
    :sswitch_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 2771
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v7, v2, Landroid/view/ViewRootImpl$ResizedInfo;->newConfig:Landroid/content/res/Configuration;

    .line 2772
    .local v7, config:Landroid/content/res/Configuration;
    if-eqz v7, :cond_a

    .line 2773
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 2775
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2776
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2777
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2778
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2779
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v2, v2, Landroid/view/ViewRootImpl$ResizedInfo;->coveredInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$ResizedInfo;

    iget-object v2, v2, Landroid/view/ViewRootImpl$ResizedInfo;->visibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2781
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v3, 0x3eb

    if-ne v2, v3, :cond_b

    .line 2782
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 2785
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_c

    .line 2786
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-static {v2}, Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V

    .line 2788
    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 2793
    .end local v7           #config:Landroid/content/res/Configuration;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    .line 2794
    .local v15, w:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    .line 2795
    .local v10, h:I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 2796
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    add-int/2addr v3, v15

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 2797
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 2798
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    add-int/2addr v3, v10

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 2800
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v2, :cond_0

    .line 2801
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowLeft:I

    .line 2802
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iput v3, v2, Landroid/view/View$AttachInfo;->mWindowTop:I

    goto/16 :goto_0

    .line 2807
    .end local v10           #h:I
    .end local v15           #w:I
    :sswitch_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v2, :cond_0

    .line 2808
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_12

    const/4 v11, 0x1

    .line 2809
    .local v11, hasWindowFocus:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v11, v2, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 2811
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Landroid/view/ViewRootImpl;->profileRendering(Z)V

    .line 2813
    if-eqz v11, :cond_d

    .line 2814
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg2:I

    if-eqz v2, :cond_13

    const/4 v12, 0x1

    .line 2815
    .local v12, inTouchMode:Z
    :goto_9
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z

    .line 2817
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2819
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 2821
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2839
    .end local v12           #inTouchMode:Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v2}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 2842
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2843
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 2844
    if-eqz v11, :cond_e

    if-eqz v1, :cond_e

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_e

    .line 2845
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 2847
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v2}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 2848
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2, v11}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 2853
    :cond_f
    if-eqz v11, :cond_11

    .line 2854
    if-eqz v1, :cond_10

    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v2, :cond_10

    .line 2855
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v5, :cond_15

    const/4 v5, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v1 .. v6}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 2861
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2863
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 2866
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 2869
    :cond_11
    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2870
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewRootImpl;->sendAccessibilityEvents()V

    goto/16 :goto_0

    .line 2808
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v11           #hasWindowFocus:Z
    :cond_12
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 2814
    .restart local v11       #hasWindowFocus:Z
    :cond_13
    const/4 v12, 0x0

    goto/16 :goto_9

    .line 2823
    .restart local v12       #inTouchMode:Z
    :catch_0
    move-exception v8

    .line 2824
    .local v8, e:Landroid/view/Surface$OutOfResourcesException;
    const-string v2, "ViewRootImpl"

    const-string v3, "OutOfResourcesException locking surface"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2826
    :try_start_1
    sget-object v2, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v2, v3}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v2

    if-nez v2, :cond_14

    .line 2827
    const-string v2, "ViewRootImpl"

    const-string v3, "No processes killed for memory; killing self"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2828
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2833
    :cond_14
    :goto_b
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewRootImpl;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 2855
    .end local v8           #e:Landroid/view/Surface$OutOfResourcesException;
    .end local v12           #inTouchMode:Z
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_15
    const/4 v5, 0x0

    goto :goto_a

    .line 2875
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v11           #hasWindowFocus:Z
    :sswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 2881
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/view/KeyEvent;

    .line 2882
    .local v9, event:Landroid/view/KeyEvent;
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_16

    .line 2886
    invoke-virtual {v9}, Landroid/view/KeyEvent;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    invoke-static {v9, v2}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v9

    .line 2888
    :cond_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Landroid/view/ViewRootImpl;->deliverKeyEventPostIme(Landroid/view/KeyEvent;Z)V

    goto/16 :goto_0

    .line 2891
    .end local v9           #event:Landroid/view/KeyEvent;
    :sswitch_12
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2892
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2893
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v1, v2}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 2897
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_13
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 2898
    .restart local v1       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_0

    .line 2899
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    goto/16 :goto_0

    .line 2903
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2904
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2909
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/view/DragEvent;

    .line 2910
    .local v9, event:Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    iput-object v2, v9, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 2911
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 2914
    .end local v9           #event:Landroid/view/DragEvent;
    :sswitch_16
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    goto/16 :goto_0

    .line 2917
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/content/res/Configuration;

    .line 2918
    .restart local v7       #config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v7, v2}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2919
    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2921
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 2924
    .end local v7           #config:Landroid/content/res/Configuration;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2925
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByAccessibilityIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2930
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2931
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->perfromAccessibilityActionUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2936
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2937
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfoByViewIdUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2942
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 2943
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewRootImpl;->getAccessibilityInteractionController()Landroid/view/ViewRootImpl$AccessibilityInteractionController;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionController;->findAccessibilityNodeInfosByViewTextUiThread(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2830
    .restart local v8       #e:Landroid/view/Surface$OutOfResourcesException;
    .restart local v11       #hasWindowFocus:Z
    .restart local v12       #inTouchMode:Z
    :catch_1
    move-exception v2

    goto/16 :goto_b

    .line 2691
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3e8 -> :sswitch_2
        0x3e9 -> :sswitch_10
        0x3ea -> :sswitch_c
        0x3eb -> :sswitch_d
        0x3ec -> :sswitch_f
        0x3ed -> :sswitch_4
        0x3ee -> :sswitch_5
        0x3ef -> :sswitch_7
        0x3f0 -> :sswitch_a
        0x3f1 -> :sswitch_b
        0x3f2 -> :sswitch_3
        0x3f3 -> :sswitch_11
        0x3f4 -> :sswitch_12
        0x3f5 -> :sswitch_13
        0x3f6 -> :sswitch_14
        0x3f7 -> :sswitch_15
        0x3f8 -> :sswitch_15
        0x3f9 -> :sswitch_16
        0x3fa -> :sswitch_8
        0x3fb -> :sswitch_17
        0x3fc -> :sswitch_19
        0x3fd -> :sswitch_18
        0x3fe -> :sswitch_1a
        0x3ff -> :sswitch_1b
        0x400 -> :sswitch_9
        0x401 -> :sswitch_e
        0x44c -> :sswitch_6
    .end sparse-switch
.end method

.method invalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 852
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    iget v1, p0, Landroid/view/ViewRootImpl;->mWidth:I

    iget v2, p0, Landroid/view/ViewRootImpl;->mHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 853
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 854
    return-void
.end method

.method public invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4
    .parameter "child"
    .parameter "dirty"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 821
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 823
    if-nez p2, :cond_1

    .line 825
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->invalidate()V

    .line 849
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_5

    .line 829
    :cond_2
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 830
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    .line 831
    iget v0, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    if-eqz v0, :cond_3

    .line 832
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mCurScrollY:I

    neg-int v1, v1

    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 834
    :cond_3
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v0, :cond_4

    .line 835
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v0, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInAppWindowToScreen(Landroid/graphics/Rect;)V

    .line 837
    :cond_4
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    if-eqz v0, :cond_5

    .line 838
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 841
    :cond_5
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 842
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mSetIgnoreDirtyState:Z

    .line 843
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-boolean v3, v0, Landroid/view/View$AttachInfo;->mIgnoreDirtyState:Z

    .line 845
    :cond_6
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 846
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 847
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    goto :goto_0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    const/4 v0, 0x0

    .line 870
    invoke-virtual {p0, v0, p2}, Landroid/view/ViewRootImpl;->invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 871
    return-object v0
.end method

.method public isLayoutRequested()Z
    .locals 1

    .prologue
    .line 817
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    return v0
.end method

.method public onHardwarePostDraw(Landroid/view/HardwareCanvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 1948
    sget-boolean v3, Landroid/view/ViewRootImpl;->sLogFps:Z

    if-nez v3, :cond_0

    sget-boolean v3, Landroid/view/ViewRootImpl;->SHOW_FPS:Z

    if-eqz v3, :cond_3

    .line 1949
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    long-to-int v1, v3

    .line 1950
    .local v1, now:I
    sget v3, Landroid/view/ViewRootImpl;->sLastDrawTime:I

    if-eqz v3, :cond_2

    .line 1951
    sget v3, Landroid/view/ViewRootImpl;->sLastDrawTime:I

    sub-int v3, v1, v3

    sget-boolean v4, Landroid/view/ViewDebug;->logFps:Z

    invoke-static {p1, v3, v4}, Landroid/view/ViewRootImpl;->nativeHWLogFPS(Landroid/graphics/Canvas;IZ)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1953
    invoke-virtual {p1}, Landroid/view/HardwareCanvas;->getWidth()I

    move-result v2

    .line 1954
    .local v2, width:I
    invoke-virtual {p1}, Landroid/view/HardwareCanvas;->getHeight()I

    move-result v0

    .line 1955
    .local v0, height:I
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mDirty:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, -0x1a

    add-int/lit8 v5, v0, -0xa

    invoke-virtual {v3, v4, v5, v2, v0}, Landroid/graphics/Rect;->union(IIII)V

    .line 1957
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_1
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    if-eqz v3, :cond_2

    .line 1958
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    invoke-virtual {v3}, Lcom/htc/utils/perf/FramerateMonitor;->updateFrame()V

    .line 1960
    :cond_2
    sput v1, Landroid/view/ViewRootImpl;->sLastDrawTime:I

    .line 1963
    .end local v1           #now:I
    :cond_3
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-eqz v3, :cond_4

    .line 1964
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    iget v4, p0, Landroid/view/ViewRootImpl;->mResizeAlpha:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1965
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    const/4 v4, 0x0

    iget v5, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    int-to-float v5, v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 1967
    :cond_4
    return-void
.end method

.method public onHardwarePreDraw(Landroid/view/HardwareCanvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 1942
    const/4 v0, 0x0

    iget v1, p0, Landroid/view/ViewRootImpl;->mHardwareYOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/HardwareCanvas;->translate(FF)V

    .line 1943
    return-void
.end method

.method outputDisplayList(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 1973
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    if-eqz v1, :cond_0

    .line 1974
    invoke-virtual {p1}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v0

    .line 1975
    .local v0, displayList:Landroid/view/DisplayList;
    if-eqz v0, :cond_0

    .line 1976
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, v1, Landroid/view/View$AttachInfo;->mHardwareCanvas:Landroid/view/HardwareCanvas;

    invoke-virtual {v1, v0}, Landroid/view/HardwareCanvas;->outputDisplayList(Landroid/view/DisplayList;)V

    .line 1979
    .end local v0           #displayList:Landroid/view/DisplayList;
    :cond_0
    return-void
.end method

.method public performHapticFeedback(IZ)Z
    .locals 4
    .parameter "effectId"
    .parameter "always"

    .prologue
    .line 3965
    :try_start_0
    sget-boolean v1, Landroid/view/ViewRootImpl;->DEBUG_HAPTIC_STACK:Z

    if-eqz v1, :cond_0

    const-string v1, "HapticStack"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dump performHaptic(), ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3967
    :cond_0
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v1, v2, p1, p2}, Landroid/view/IWindowSession;->performHapticFeedback(Landroid/view/IWindow;IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3969
    :goto_0
    return v1

    .line 3968
    :catch_0
    move-exception v0

    .line 3969
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public playSoundEffect(I)V
    .locals 5
    .parameter "effectId"

    .prologue
    .line 3927
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 3930
    :try_start_0
    invoke-direct {p0}, Landroid/view/ViewRootImpl;->getAudioManager()Landroid/media/AudioManager;

    move-result-object v0

    .line 3932
    .local v0, audioManager:Landroid/media/AudioManager;
    packed-switch p1, :pswitch_data_0

    .line 3949
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown effect id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not defined in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Landroid/view/SoundEffectConstants;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3952
    .end local v0           #audioManager:Landroid/media/AudioManager;
    :catch_0
    move-exception v1

    .line 3954
    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v2, "ViewRootImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FATAL EXCEPTION when attempting to play sound effect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3955
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 3957
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 3934
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    :pswitch_0
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3937
    :pswitch_1
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3940
    :pswitch_2
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3943
    :pswitch_3
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_0

    .line 3946
    :pswitch_4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3932
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public profile()V
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mProfile:Z

    .line 464
    return-void
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 2468
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2469
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2470
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    .line 2471
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mWillDrawSoon:Z

    if-nez v0, :cond_0

    .line 2472
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2475
    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 2416
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 2417
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    if-eq v0, p2, :cond_0

    .line 2418
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    invoke-virtual {v0, v1, p2}, Landroid/view/ViewTreeObserver;->dispatchOnGlobalFocusChange(Landroid/view/View;Landroid/view/View;)V

    .line 2419
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 2421
    :cond_0
    iput-object p2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    iput-object p2, p0, Landroid/view/ViewRootImpl;->mFocusedView:Landroid/view/View;

    .line 2424
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 4408
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewRootImpl;->scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0
    .parameter "disallowIntercept"

    .prologue
    .line 4404
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 808
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 809
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mLayoutRequested:Z

    .line 810
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 811
    return-void
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "child"
    .parameter "event"

    .prologue
    .line 4388
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 4389
    const/4 v0, 0x0

    .line 4392
    :goto_0
    return v0

    .line 4391
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 4392
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public requestTransitionStart(Landroid/animation/LayoutTransition;)V
    .locals 1
    .parameter "transition"

    .prologue
    .line 944
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 945
    :cond_0
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    .line 948
    :cond_1
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mPendingTransitions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :cond_2
    return-void
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1893
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->checkThread()V

    .line 1894
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 1895
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    iget v1, v0, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v0, Landroid/view/View;->mPrivateFlags:I

    .line 1898
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 1899
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 1900
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 1902
    :cond_0
    return-void
.end method

.method public requestUpdateConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 4054
    const/16 v1, 0x3fb

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewRootImpl;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4055
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4056
    return-void
.end method

.method retrievePendingEvent(I)Ljava/lang/Object;
    .locals 2
    .parameter "seq"

    .prologue
    .line 3560
    if-gez p1, :cond_0

    neg-int p1, p1

    .line 3561
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 3562
    .local v0, event:Ljava/lang/Object;
    if-eqz v0, :cond_1

    .line 3563
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingEvents:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3565
    :cond_1
    return-object v0
.end method

.method public scheduleTraversals()V
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-nez v0, :cond_0

    .line 892
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 908
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendEmptyMessage(I)Z

    .line 910
    :cond_0
    return-void
.end method

.method scrollToRectOrFocus(Landroid/graphics/Rect;Z)Z
    .locals 10
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 2292
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 2293
    .local v0, attachInfo:Landroid/view/View$AttachInfo;
    iget-object v1, v0, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    .line 2294
    .local v1, ci:Landroid/graphics/Rect;
    iget-object v5, v0, Landroid/view/View$AttachInfo;->mVisibleInsets:Landroid/graphics/Rect;

    .line 2295
    .local v5, vi:Landroid/graphics/Rect;
    const/4 v4, 0x0

    .line 2296
    .local v4, scrollY:I
    const/4 v3, 0x0

    .line 2298
    .local v3, handled:Z
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->right:I

    if-gt v6, v8, :cond_0

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_4

    .line 2304
    :cond_0
    iget v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    .line 2311
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    .line 2316
    .local v2, focus:Landroid/view/View;
    if-eqz v2, :cond_1

    iget-object v6, v2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eq v6, v8, :cond_2

    .line 2317
    :cond_1
    iput-object v9, p0, Landroid/view/ViewRootImpl;->mRealFocusedView:Landroid/view/View;

    move v6, v7

    .line 2412
    .end local v2           #focus:Landroid/view/View;
    :goto_0
    return v6

    .line 2321
    .restart local v2       #focus:Landroid/view/View;
    :cond_2
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-eq v2, v6, :cond_3

    .line 2325
    const/4 p1, 0x0

    .line 2330
    :cond_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    if-ne v2, v6, :cond_8

    iget-boolean v6, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    .line 2398
    .end local v2           #focus:Landroid/view/View;
    :cond_4
    :goto_1
    iget v6, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    if-eq v4, v6, :cond_7

    .line 2401
    if-nez p2, :cond_e

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mResizeBuffer:Landroid/view/HardwareLayer;

    if-nez v6, :cond_e

    .line 2402
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-nez v6, :cond_5

    .line 2403
    new-instance v6, Landroid/widget/Scroller;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v6, v8}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    .line 2405
    :cond_5
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    iget v8, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    iget v9, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    sub-int v9, v4, v9

    invoke-virtual {v6, v7, v8, v7, v9}, Landroid/widget/Scroller;->startScroll(IIII)V

    .line 2409
    :cond_6
    :goto_2
    iput v4, p0, Landroid/view/ViewRootImpl;->mScrollY:I

    :cond_7
    move v6, v3

    .line 2412
    goto :goto_0

    .line 2337
    .restart local v2       #focus:Landroid/view/View;
    :cond_8
    if-eqz v2, :cond_4

    .line 2341
    iput-object v2, p0, Landroid/view/ViewRootImpl;->mLastScrolledFocus:Landroid/view/View;

    .line 2342
    iput-boolean v7, p0, Landroid/view/ViewRootImpl;->mScrollMayChange:Z

    .line 2345
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v9}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2350
    if-nez p1, :cond_b

    .line 2351
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    .line 2354
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    instance-of v6, v6, Landroid/view/ViewGroup;

    if-eqz v6, :cond_9

    .line 2355
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v2, v8}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2369
    :cond_9
    :goto_3
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2373
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_c

    .line 2392
    :cond_a
    :goto_4
    const/4 v3, 0x1

    goto :goto_1

    .line 2363
    :cond_b
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    .line 2379
    :cond_c
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v4

    iget v8, v5, Landroid/graphics/Rect;->top:I

    if-ge v6, v8, :cond_d

    .line 2380
    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v4

    sub-int/2addr v6, v8

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    sub-int/2addr v4, v6

    goto :goto_4

    .line 2384
    :cond_d
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v6, v8, :cond_a

    .line 2386
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v4

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    sub-int/2addr v6, v8

    iget-object v8, p0, Landroid/view/ViewRootImpl;->mVisRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Landroid/view/ViewRootImpl;->mTempRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    add-int/2addr v6, v8

    add-int/2addr v4, v6

    goto :goto_4

    .line 2406
    .end local v2           #focus:Landroid/view/View;
    :cond_e
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    if-eqz v6, :cond_6

    .line 2407
    iget-object v6, p0, Landroid/view/ViewRootImpl;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->abortAnimation()V

    goto/16 :goto_2
.end method

.method public setDragFocus(Landroid/view/View;)V
    .locals 1
    .parameter "newDragTarget"

    .prologue
    .line 3854
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 3855
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mCurrentDragView:Landroid/view/View;

    .line 3857
    :cond_0
    return-void
.end method

.method setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V
    .locals 5
    .parameter "attrs"
    .parameter "newView"

    .prologue
    .line 761
    monitor-enter p0

    .line 762
    :try_start_0
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 764
    .local v1, oldSoftInputMode:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x2000

    and-int v0, v2, v3

    .line 766
    .local v0, compatibleWindowFlag:I
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, p1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    iput v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 767
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v3, v0

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 769
    if-eqz p2, :cond_0

    .line 770
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v2, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 771
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 774
    :cond_0
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0xf0

    if-nez v2, :cond_1

    .line 776
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, -0xf1

    and-int/lit16 v4, v1, 0xf0

    or-int/2addr v3, v4

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 783
    :cond_1
    iget-boolean v2, p0, Landroid/view/ViewRootImpl;->mIsSketcherDisabledInCurrentTask:Z

    if-eqz v2, :cond_2

    .line 784
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 786
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 787
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 788
    monitor-exit p0

    .line 789
    return-void

    .line 788
    .end local v0           #compatibleWindowFlag:I
    .end local v1           #oldSoftInputMode:I
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method setLocalDragState(Ljava/lang/Object;)V
    .locals 0
    .parameter "obj"

    .prologue
    .line 3743
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    .line 3744
    return-void
.end method

.method public setMonitor(Lcom/htc/utils/perf/FramerateMonitor;)V
    .locals 1
    .parameter "monitor"

    .prologue
    .line 435
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v0, :cond_0

    .line 436
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mMonitor:Lcom/htc/utils/perf/FramerateMonitor;

    .line 438
    :cond_0
    return-void
.end method

.method protected setShowSWPenButton(ZZ)V
    .locals 2
    .parameter "newView"
    .parameter "show"

    .prologue
    .line 5616
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 5617
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    if-eqz p2, :cond_0

    .line 5618
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 5622
    :goto_0
    invoke-virtual {p0, v0, p1}, Landroid/view/ViewRootImpl;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;Z)V

    .line 5623
    return-void

    .line 5620
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    xor-int/lit8 v1, v1, 0x20

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    goto :goto_0
.end method

.method setStopped(Z)V
    .locals 1
    .parameter "stopped"

    .prologue
    .line 857
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    if-eq v0, p1, :cond_0

    .line 858
    iput-boolean p1, p0, Landroid/view/ViewRootImpl;->mStopped:Z

    .line 859
    if-nez p1, :cond_0

    .line 860
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 863
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;Landroid/view/View;)V
    .locals 12
    .parameter "view"
    .parameter "attrs"
    .parameter "panelParentView"

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-nez v1, :cond_11

    .line 490
    iput-object p1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 491
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    invoke-interface {v1, p1}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 492
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 493
    iget-object p2, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    .line 495
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_0

    .line 496
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheSurface()Landroid/view/SurfaceHolder$Callback2;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    .line 498
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback2;

    if-eqz v1, :cond_0

    .line 499
    new-instance v1, Landroid/view/ViewRootImpl$TakenSurfaceHolder;

    invoke-direct {v1, p0}, Landroid/view/ViewRootImpl$TakenSurfaceHolder;-><init>(Landroid/view/ViewRootImpl;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    .line 500
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/view/BaseSurfaceHolder;->setFormat(I)V

    .line 504
    :cond_0
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v1}, Landroid/view/CompatibilityInfoHolder;->get()Landroid/content/res/CompatibilityInfo;

    move-result-object v8

    .line 505
    .local v8, compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->getTranslator()Landroid/content/res/CompatibilityInfo$Translator;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 508
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurfaceHolder:Lcom/android/internal/view/BaseSurfaceHolder;

    if-nez v1, :cond_1

    .line 509
    invoke-direct {p0, p2}, Landroid/view/ViewRootImpl;->enableHardwareAcceleration(Landroid/view/WindowManager$LayoutParams;)V

    .line 512
    :cond_1
    const/4 v11, 0x0

    .line 513
    .local v11, restore:Z
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_2

    .line 514
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, v2}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 515
    const/4 v11, 0x1

    .line 516
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->backup()V

    .line 517
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v1, p2}, Landroid/content/res/CompatibilityInfo$Translator;->translateWindowLayout(Landroid/view/WindowManager$LayoutParams;)V

    .line 521
    :cond_2
    invoke-virtual {v8}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v1

    if-nez v1, :cond_3

    .line 522
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2000

    or-int/2addr v1, v2

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 523
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mLastInCompatMode:Z

    .line 526
    :cond_3
    iget v1, p2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mSoftInputMode:I

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChanged:Z

    .line 528
    const/4 v1, -0x1

    iput v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributesChangesFlag:I

    .line 529
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iput-object p1, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 530
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v2, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    .line 531
    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v1, :cond_b

    const/high16 v1, 0x3f80

    :goto_1
    iput v1, v2, Landroid/view/View$AttachInfo;->mApplicationScale:F

    .line 533
    if-eqz p3, :cond_4

    .line 534
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    invoke-virtual {p3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mPanelParentWindowToken:Landroid/os/IBinder;

    .line 537
    :cond_4
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 541
    sget-boolean v1, Landroid/view/ViewRootImpl;->SUPPORT_PEN_EVENT:Z

    if-eqz v1, :cond_6

    .line 542
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->disableSketcher:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/ViewRootImpl;->isSketcherDisabledInCurrentTask(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 544
    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsSketcherDisabledInCurrentTask:Z

    .line 545
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->extraFlags:I

    .line 555
    :cond_6
    :goto_2
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->requestLayout()V

    .line 556
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    .line 558
    new-instance v1, Landroid/view/InputChannel;

    invoke-direct {v1}, Landroid/view/InputChannel;-><init>()V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    :cond_7
    :try_start_1
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v1, p0, Landroid/view/ViewRootImpl;->mOrigWindowType:I

    .line 562
    sget-object v1, Landroid/view/ViewRootImpl;->sWindowSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    iget v3, p0, Landroid/view/ViewRootImpl;->mSeq:I

    iget-object v4, p0, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->getHostVisibility()I

    move-result v5

    iget-object v6, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v6, v6, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    iget-object v7, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-interface/range {v1 .. v7}, Landroid/view/IWindowSession;->add(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;ILandroid/graphics/Rect;Landroid/view/InputChannel;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .line 574
    .local v10, res:I
    if-eqz v11, :cond_8

    .line 575
    :try_start_2
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 579
    :cond_8
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v1, :cond_9

    .line 580
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/content/res/CompatibilityInfo$Translator;->translateRectInScreenToAppWindow(Landroid/graphics/Rect;)V

    .line 582
    :cond_9
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v2, Landroid/view/View$AttachInfo;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 583
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 585
    if-gez v10, :cond_e

    .line 586
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 587
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 588
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 589
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 590
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 591
    packed-switch v10, :pswitch_data_0

    .line 622
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- unknown error code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 530
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v11       #restore:Z
    :cond_a
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 531
    :cond_b
    :try_start_3
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v1, v1, Landroid/content/res/CompatibilityInfo$Translator;->applicationScale:F

    goto/16 :goto_1

    .line 547
    :cond_c
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mIsSketcherDisabledInCurrentTask:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 565
    :catch_0
    move-exception v9

    .line 566
    .local v9, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    :try_start_4
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAdded:Z

    .line 567
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 568
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/view/View$AttachInfo;->mRootView:Landroid/view/View;

    .line 569
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    .line 570
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mFallbackEventHandler:Landroid/view/FallbackEventHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/FallbackEventHandler;->setView(Landroid/view/View;)V

    .line 571
    invoke-virtual {p0}, Landroid/view/ViewRootImpl;->unscheduleTraversals()V

    .line 572
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Adding window failed"

    invoke-direct {v1, v2, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 574
    .end local v9           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v1

    if-eqz v11, :cond_d

    .line 575
    :try_start_5
    invoke-virtual {p2}, Landroid/view/WindowManager$LayoutParams;->restore()V

    .line 574
    :cond_d
    throw v1

    .line 594
    .restart local v10       #res:I
    :pswitch_0
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not valid; is your activity running?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 598
    :pswitch_1
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not for an application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :pswitch_2
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- app for token "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is exiting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 606
    :pswitch_3
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window -- window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has already been added"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 612
    :pswitch_4
    monitor-exit p0

    .line 649
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :goto_3
    return-void

    .line 614
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :pswitch_5
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- another window of this type already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 618
    :pswitch_6
    new-instance v1, Landroid/view/WindowManager$BadTokenException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to add window "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " -- permission denied for this window type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/WindowManager$BadTokenException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 626
    :cond_e
    instance-of v1, p1, Lcom/android/internal/view/RootViewSurfaceTaker;

    if-eqz v1, :cond_f

    .line 627
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/RootViewSurfaceTaker;

    move-object v1, v0

    invoke-interface {v1}, Lcom/android/internal/view/RootViewSurfaceTaker;->willYouTakeTheInputQueue()Landroid/view/InputQueue$Callback;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    .line 630
    :cond_f
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v1, :cond_10

    .line 631
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    if-eqz v1, :cond_12

    .line 632
    new-instance v1, Landroid/view/InputQueue;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    invoke-direct {v1, v2}, Landroid/view/InputQueue;-><init>(Landroid/view/InputChannel;)V

    iput-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    .line 633
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputQueueCallback:Landroid/view/InputQueue$Callback;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputQueue:Landroid/view/InputQueue;

    invoke-interface {v1, v2}, Landroid/view/InputQueue$Callback;->onInputQueueCreated(Landroid/view/InputQueue;)V

    .line 640
    :cond_10
    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 641
    and-int/lit8 v1, v10, 0x1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    :goto_5
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAddedTouchMode:Z

    .line 642
    and-int/lit8 v1, v10, 0x2

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    :goto_6
    iput-boolean v1, p0, Landroid/view/ViewRootImpl;->mAppVisible:Z

    .line 644
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 645
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v1}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureConnection()V

    .line 648
    .end local v8           #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .end local v10           #res:I
    .end local v11           #restore:Z
    :cond_11
    monitor-exit p0

    goto/16 :goto_3

    .line 635
    .restart local v8       #compatibilityInfo:Landroid/content/res/CompatibilityInfo;
    .restart local v10       #res:I
    .restart local v11       #restore:Z
    :cond_12
    iget-object v1, p0, Landroid/view/ViewRootImpl;->mInputChannel:Landroid/view/InputChannel;

    iget-object v2, p0, Landroid/view/ViewRootImpl;->mInputHandler:Landroid/view/InputHandler;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/view/InputQueue;->registerInputChannel(Landroid/view/InputChannel;Landroid/view/InputHandler;Landroid/os/MessageQueue;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 641
    :cond_13
    const/4 v1, 0x0

    goto :goto_5

    .line 642
    :cond_14
    const/4 v1, 0x0

    goto :goto_6

    .line 591
    :pswitch_data_0
    .packed-switch -0x8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .locals 1
    .parameter "originalView"

    .prologue
    .line 4374
    const/4 v0, 0x0

    return v0
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 4378
    const/4 v0, 0x0

    return-object v0
.end method

.method terminateHardwareResources()V
    .locals 2

    .prologue
    .line 661
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    iget-object v1, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroyHardwareResources(Landroid/view/View;)V

    .line 663
    iget-object v0, p0, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v0, v0, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/HardwareRenderer;->destroy(Z)V

    .line 665
    :cond_0
    return-void
.end method

.method public unscheduleTraversals()V
    .locals 1

    .prologue
    .line 913
    iget-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    if-eqz v0, :cond_0

    .line 914
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewRootImpl;->mTraversalScheduled:Z

    .line 915
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->removeMessages(I)V

    .line 917
    :cond_0
    return-void
.end method

.method updateConfiguration(Landroid/content/res/Configuration;Z)V
    .locals 5
    .parameter "config"
    .parameter "force"

    .prologue
    .line 2542
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mCompatibilityInfo:Landroid/view/CompatibilityInfoHolder;

    invoke-virtual {v3}, Landroid/view/CompatibilityInfoHolder;->getIfNeeded()Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    .line 2543
    .local v0, ci:Landroid/content/res/CompatibilityInfo;
    if-eqz v0, :cond_0

    .line 2544
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 2545
    .end local p1
    .local v1, config:Landroid/content/res/Configuration;
    invoke-virtual {v0, v1}, Landroid/content/res/CompatibilityInfo;->applyToConfiguration(Landroid/content/res/Configuration;)V

    move-object p1, v1

    .line 2548
    .end local v1           #config:Landroid/content/res/Configuration;
    .restart local p1
    :cond_0
    sget-object v4, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    monitor-enter v4

    .line 2549
    :try_start_0
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_1

    .line 2550
    sget-object v3, Landroid/view/ViewRootImpl;->sConfigCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentCallbacks;

    invoke-interface {v3, p1}, Landroid/content/ComponentCallbacks;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2549
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 2552
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2553
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v3, :cond_3

    .line 2557
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2558
    if-nez p2, :cond_2

    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v3

    if-eqz v3, :cond_3

    .line 2559
    :cond_2
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2560
    iget-object v3, p0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2562
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/view/ViewRootImpl;->mConfigurationChanged:Z

    .line 2566
    :cond_3
    return-void

    .line 2552
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public windowFocusChanged(ZZ)V
    .locals 4
    .parameter "hasFocus"
    .parameter "inTouchMode"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4294
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 4295
    .local v0, msg:Landroid/os/Message;
    const/16 v1, 0x3ec

    iput v1, v0, Landroid/os/Message;->what:I

    .line 4296
    if-eqz p1, :cond_0

    move v1, v2

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 4297
    if-eqz p2, :cond_1

    :goto_1
    iput v2, v0, Landroid/os/Message;->arg2:I

    .line 4298
    invoke-virtual {p0, v0}, Landroid/view/ViewRootImpl;->sendMessage(Landroid/os/Message;)Z

    .line 4299
    return-void

    :cond_0
    move v1, v3

    .line 4296
    goto :goto_0

    :cond_1
    move v2, v3

    .line 4297
    goto :goto_1
.end method
