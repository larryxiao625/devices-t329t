.class public final Lcom/android/internal/telephony/CallManager;
.super Ljava/lang/Object;
.source "CallManager.java"

# interfaces
.implements Lcom/android/internal/telephony/HtcIfCallManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CallManager$2;,
        Lcom/android/internal/telephony/CallManager$SelfCallTracker;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_CALL_WAITING:I = 0x6c

.field private static final EVENT_CDMA_OTA_STATUS_CHANGE:I = 0x6f

.field private static final EVENT_DISCONNECT:I = 0x64

.field private static final EVENT_DISPLAY_INFO:I = 0x6d

.field private static final EVENT_ECM_TIMER_RESET:I = 0x73

.field private static final EVENT_INCOMING_RING:I = 0x68

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_OFF:I = 0x6b

.field private static final EVENT_IN_CALL_VOICE_PRIVACY_ON:I = 0x6a

.field private static final EVENT_LINE_CONTROL_INFO:I = 0x78

.field private static final EVENT_MMI_COMPLETE:I = 0x72

.field private static final EVENT_MMI_INITIATE:I = 0x71

.field private static final EVENT_NEW_RINGING_CONNECTION:I = 0x66

.field private static final EVENT_POST_DIAL_CHARACTER:I = 0x77

.field private static final EVENT_PRECISE_CALL_STATE_CHANGED:I = 0x65

.field private static final EVENT_RESEND_INCALL_MUTE:I = 0x70

.field private static final EVENT_RINGBACK_TONE:I = 0x69

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x76

.field private static final EVENT_SIGNAL_INFO:I = 0x6e

.field private static final EVENT_SUBSCRIPTION_INFO_READY:I = 0x74

.field private static final EVENT_SUPP_SERVICE_FAILED:I = 0x75

.field private static final EVENT_UNKNOWN_CONNECTION:I = 0x67

.field private static final EVENT_VOICE_CONNECTED:I = 0x3e9

.field private static final INSTANCE:Lcom/android/internal/telephony/CallManager; = null

.field private static final LOG_TAG:Ljava/lang/String; = "CallManager"

.field private static final SUPPORT_DISABLE_LOOPBACK_CALL_BY_PHONENUMBER:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

.field private static final SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

.field private static SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

.field private static final VDBG:Z

.field private static mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;


# instance fields
.field private HWAEC_on:Z

.field private final emptyConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mBackgroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mCallConnectedRegistrants:Landroid/os/RegistrantList;

.field protected final mCallWaitingRegistrants:Landroid/os/RegistrantList;

.field protected final mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

.field private mDefaultPhone:Lcom/android/internal/telephony/Phone;

.field protected final mDisconnectRegistrants:Landroid/os/RegistrantList;

.field protected final mDisplayInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

.field private final mForegroundCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field protected final mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

.field protected final mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

.field protected final mIncomingRingRegistrants:Landroid/os/RegistrantList;

.field protected final mLineControlInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiCompleteRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiInitiateRegistrants:Landroid/os/RegistrantList;

.field protected final mMmiRegistrants:Landroid/os/RegistrantList;

.field private mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field private mNeedToHoldAfterRing:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

.field private final mPhones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation
.end field

.field protected final mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

.field private mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

.field protected final mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

.field protected final mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

.field protected final mRingbackToneRegistrants:Landroid/os/RegistrantList;

.field private final mRingingCalls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation
.end field

.field private mRingingConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

.field protected final mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

.field protected final mSignalInfoRegistrants:Landroid/os/RegistrantList;

.field protected final mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

.field protected final mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

.field protected final mUnknownConnectionRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->IS_DEBUG()Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    sput-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v2

    if-eqz v2, :cond_0

    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    :cond_0
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_1

    :cond_1
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    sput-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    new-instance v0, Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallManager;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v0, Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallManager$SelfCallTracker;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSelfTracker1:Lcom/android/internal/telephony/CallManager$SelfCallTracker;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    new-instance v0, Lcom/android/internal/telephony/CallManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/CallManager$1;-><init>(Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    :cond_1
    iput-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/CallManager;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcMultiplePhoneSingleAudioCallChange(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMTdetection()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CallManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->hasMoreThanOneRingingCall()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CallManager;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->handleHtcMessage(Landroid/os/Message;)V

    return-void
.end method

.method private canDial(Lcom/android/internal/telephony/Phone;)Z
    .locals 10
    .parameter "phone"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    .local v6, serviceState:I
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .local v4, hasRingingCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .local v2, hasActiveCall:Z
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    move v0, v7

    .local v0, allLinesTaken:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    const/4 v9, 0x3

    if-eq v6, v9, :cond_3

    if-nez v4, :cond_3

    if-nez v0, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v9, :cond_0

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v9, :cond_3

    :cond_0
    move v5, v7

    .local v5, result:Z
    :goto_1
    if-nez v5, :cond_1

    const-string v7, "CallManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "canDial serviceState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hasRingingCall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hasActiveCall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " hasHoldingCall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " allLinesTaken="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " fgCallState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v5

    .end local v0           #allLinesTaken:Z
    .end local v1           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v5           #result:Z
    :cond_2
    move v0, v8

    goto :goto_0

    .restart local v0       #allLinesTaken:Z
    .restart local v1       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_3
    move v5, v8

    goto :goto_1
.end method

.method private getCdmaSetAudioModeBeforeRadioOperation()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .local v1, operationRequired:Z
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    .local v2, operationResult:Ljava/lang/Boolean;
    :try_start_0
    sget-object v3, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "force setAudioMode - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .end local v2           #operationResult:Ljava/lang/Boolean;
    :cond_0
    return v1

    .restart local v2       #operationResult:Ljava/lang/Boolean;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getContext()Landroid/content/Context;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method private getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;
    .locals 3
    .parameter
    .parameter "state"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;",
            "Lcom/android/internal/telephony/Call$State;",
            ")",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .local p1, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v2, p2, :cond_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;)",
            "Lcom/android/internal/telephony/Call;"
        }
    .end annotation

    .prologue
    .local p1, calls:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Call;>;"
    const/4 v2, 0x0

    .local v2, result:Lcom/android/internal/telephony/Call;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_1
    return-object v0

    .restart local v0       #call:Lcom/android/internal/telephony/Call;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v3, v4, :cond_0

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :cond_2
    move-object v0, v2

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/internal/telephony/CallManager;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/CallManager;->INSTANCE:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method private static getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "phone"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-object p0

    .restart local p0
    :cond_1
    instance-of v0, p0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    goto :goto_0
.end method

.method private handleHtcMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method

.method private hasMoreThanOneRingingCall()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .local v1, count:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Call;

    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_0

    .end local v0           #call:Lcom/android/internal/telephony/Call;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V
    .locals 7
    .parameter "call"

    .prologue
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_2

    :cond_0
    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, ringPhoneIndex:I
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Phone;

    .local v0, ringPhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "answer ring call : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    .local v2, setupPreEngadge:Z
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    const/4 v2, 0x1

    .end local v0           #ringPhone:Lcom/android/internal/telephony/Phone;
    .end local v1           #ringPhoneIndex:I
    .end local v2           #setupPreEngadge:Z
    :cond_2
    :goto_0
    return-void

    .restart local v0       #ringPhone:Lcom/android/internal/telephony/Phone;
    .restart local v1       #ringPhoneIndex:I
    .restart local v2       #setupPreEngadge:Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eq v0, v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x1

    :cond_4
    :goto_1
    if-eqz v2, :cond_2

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_0

    :cond_5
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private htcBlockLoopbackMTdetection()V
    .locals 0

    .prologue
    return-void
.end method

.method private htcConnectionNumberMatch(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)Z
    .locals 2
    .parameter "conn"
    .parameter "number"

    .prologue
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .local v0, moNbr:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;
    .locals 3
    .parameter "call"

    .prologue
    const/4 v1, 0x0

    .local v1, value:Ljava/lang/Integer;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .local v0, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/Integer;

    .end local v1           #value:Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .end local v0           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v1       #value:Ljava/lang/Integer;
    :cond_0
    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/Integer;

    .end local v1           #value:Ljava/lang/Integer;
    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    .restart local v1       #value:Ljava/lang/Integer;
    :cond_1
    return-object v1
.end method

.method private htcHangupAllDialingCalls(I)V
    .locals 7
    .parameter "exceptCallIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    if-eq v3, p1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .local v1, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    const/4 v0, 0x0

    .local v0, conn:Lcom/android/internal/telephony/Connection;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_2

    const-string v4, "CallManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to hangup dialing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "), except "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    .end local v1           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .restart local v0       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v1       #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .restart local v2       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->hangup()V

    goto :goto_1

    .end local v0           #conn:Lcom/android/internal/telephony/Connection;
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    goto :goto_1

    .end local v1           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_4
    return-void
.end method

.method private htcHangupLoopbackMTconnections(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "phone"
    .parameter "call"
    .parameter "blockNumber"

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method private htcMultiplePhoneSingleAudioCallChange(ZZ)V
    .locals 29
    .parameter "onlyDisconnectConnection"
    .parameter "onlyUnknownConnection"

    .prologue
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v25, :cond_0

    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v25, :cond_36

    :cond_0
    const/4 v4, 0x0

    .local v4, b:Ljava/lang/StringBuilder;
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, ringingConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, backgroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, foregroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    .end local v4           #b:Ljava/lang/StringBuilder;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .restart local v4       #b:Ljava/lang/StringBuilder;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "State Change:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ","

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v24, 0x0

    .local v24, totalConnections:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    .local v6, basePhone:Lcom/android/internal/telephony/Phone;
    const/16 v21, 0x0

    .local v21, noConns:I
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    .local v9, conns:Ljava/lang/Integer;
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_3

    add-int/lit8 v24, v24, 0x1

    :cond_3
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_4

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_5

    add-int/lit8 v24, v24, 0x1

    :cond_5
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_6

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v25

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v9

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v21

    if-eqz v21, :cond_7

    add-int/lit8 v24, v24, 0x1

    :cond_7
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_8

    move/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_8
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_2

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-interface {v6, v0}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .end local v6           #basePhone:Lcom/android/internal/telephony/Phone;
    .end local v9           #conns:Ljava/lang/Integer;
    .end local v21           #noConns:I
    :cond_9
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_b

    const-string v25, ":"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_a
    const-string v25, ","

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_c

    const-string v25, ":PendHold"

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_c

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Boolean;

    .local v20, needHold:Ljava/lang/Boolean;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "-"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v20           #needHold:Ljava/lang/Boolean;
    :cond_c
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO_DBG:Z

    if-eqz v25, :cond_d

    const-string v25, "CallManager"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    if-lez v24, :cond_37

    const/4 v11, -0x1

    .local v11, currentPickUpIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    if-gez v11, :cond_12

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    const/4 v11, -0x2

    :cond_e
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_f

    if-gez v11, :cond_32

    :cond_f
    const/4 v10, -0x1

    .local v10, currActivePhoneIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_10

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    const/4 v11, -0x2

    :cond_10
    const/16 v24, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_11
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_15

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .restart local v9       #conns:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_11

    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .end local v9           #conns:Ljava/lang/Integer;
    .end local v10           #currActivePhoneIndex:I
    :cond_12
    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_e

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_14

    const/4 v10, -0x1

    .restart local v10       #currActivePhoneIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-eq v11, v10, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    .end local v10           #currActivePhoneIndex:I
    :goto_4
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    goto/16 :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto :goto_4

    .restart local v10       #currActivePhoneIndex:I
    :cond_15
    const/16 v23, 0x0

    .local v23, searchActiveConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, -0x1

    .local v3, activePhoneIndex:I
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_1b

    if-ltz v10, :cond_1a

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_19

    move-object/from16 v23, v17

    :cond_16
    :goto_5
    if-eqz v23, :cond_21

    const/16 v24, 0x0

    const/16 v16, -0x1

    .local v16, firstPhoneActive:I
    const/4 v15, -0x1

    .local v15, firstConnActive:I
    const/16 v19, 0x0

    .local v19, index:I
    :goto_6
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v25

    if-eqz v25, :cond_17

    add-int/lit8 v24, v24, 0x1

    if-gez v16, :cond_17

    move/from16 v16, v19

    :cond_17
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .restart local v9       #conns:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_18

    if-gez v15, :cond_18

    move/from16 v15, v19

    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto :goto_6

    .end local v9           #conns:Ljava/lang/Integer;
    .end local v15           #firstConnActive:I
    .end local v16           #firstPhoneActive:I
    .end local v19           #index:I
    :cond_19
    move v3, v10

    goto :goto_5

    :cond_1a
    move-object/from16 v23, v17

    goto :goto_5

    :cond_1b
    if-lez v24, :cond_1c

    const/4 v3, 0x0

    :goto_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_16

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_1d
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1e

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .restart local v9       #conns:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_1d

    add-int/lit8 v24, v24, 0x1

    goto :goto_8

    .end local v9           #conns:Ljava/lang/Integer;
    :cond_1e
    if-lez v24, :cond_1f

    move-object/from16 v23, v22

    goto :goto_5

    :cond_1f
    move-object/from16 v23, v5

    goto/16 :goto_5

    .restart local v15       #firstConnActive:I
    .restart local v16       #firstPhoneActive:I
    .restart local v19       #index:I
    :cond_20
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_24

    move/from16 v3, v16

    .end local v15           #firstConnActive:I
    .end local v16           #firstPhoneActive:I
    .end local v19           #index:I
    :cond_21
    :goto_9
    if-eq v3, v10, :cond_22

    if-ltz v10, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_22
    sget-boolean v25, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v25, :cond_30

    const/4 v14, 0x0

    .local v14, fgConnections:I
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_23
    :goto_a
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_27

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .restart local v9       #conns:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_23

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .end local v9           #conns:Ljava/lang/Integer;
    .end local v14           #fgConnections:I
    .restart local v15       #firstConnActive:I
    .restart local v16       #firstPhoneActive:I
    .restart local v19       #index:I
    :cond_24
    move v3, v15

    goto :goto_9

    .end local v15           #firstConnActive:I
    .end local v16           #firstPhoneActive:I
    .end local v19           #index:I
    :cond_25
    const/16 v19, 0x0

    .restart local v19       #index:I
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_22

    move/from16 v0, v19

    if-eq v0, v3, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_26
    add-int/lit8 v19, v19, 0x1

    goto :goto_b

    .end local v19           #index:I
    .restart local v14       #fgConnections:I
    :cond_27
    const/4 v8, 0x0

    .local v8, bgConnections:I
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_28
    :goto_c
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_29

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .restart local v9       #conns:Ljava/lang/Integer;
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-eqz v25, :cond_28

    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .end local v9           #conns:Ljava/lang/Integer;
    :cond_29
    add-int v25, v14, v8

    const/16 v26, 0x2

    move/from16 v0, v25

    move/from16 v1, v26

    if-le v0, v1, :cond_30

    const/16 v25, 0x1

    move/from16 v0, v25

    if-le v14, v0, :cond_2e

    const/16 v19, 0x0

    .restart local v19       #index:I
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_2b

    move/from16 v0, v19

    if-eq v0, v3, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    .local v13, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v13, :cond_2a

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_2a

    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v26
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v25, "CallManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Hangup phantom fg call - phone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v13           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2a
    :goto_e
    add-int/lit8 v19, v19, 0x1

    goto :goto_d

    .restart local v13       #fgCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v25

    :try_start_3
    monitor-exit v26
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v25
    :try_end_4
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v12

    .local v12, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v25, "CallManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Hangup phantom fg call - phone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", ex:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .end local v12           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v13           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2b
    const/16 v24, 0x1

    .end local v19           #index:I
    :goto_f
    move/from16 v0, v24

    if-le v8, v0, :cond_30

    const/16 v19, 0x0

    .restart local v19       #index:I
    :goto_10
    if-lez v24, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .local v7, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_2c

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v25

    sget-object v26, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_2d

    :cond_2c
    if-lez v24, :cond_2f

    add-int/lit8 v24, v24, -0x1

    :cond_2d
    :goto_11
    add-int/lit8 v19, v19, 0x1

    goto :goto_10

    .end local v7           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v19           #index:I
    :cond_2e
    const/16 v24, 0x2

    goto :goto_f

    .restart local v7       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v19       #index:I
    :cond_2f
    :try_start_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V

    const-string v25, "CallManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Hangup phantom bg call - phone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_11

    :catch_1
    move-exception v12

    .restart local v12       #ex:Lcom/android/internal/telephony/CallStateException;
    const-string v25, "CallManager"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Hangup phantom bg call - phone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ", ex:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    .end local v7           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v8           #bgConnections:I
    .end local v12           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v14           #fgConnections:I
    .end local v19           #index:I
    :cond_30
    if-ne v3, v10, :cond_31

    const/16 v25, -0x2

    move/from16 v0, v25

    if-ne v11, v0, :cond_34

    :cond_31
    if-ltz v3, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    .end local v3           #activePhoneIndex:I
    .end local v10           #currActivePhoneIndex:I
    .end local v23           #searchActiveConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_32
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    monitor-enter v26

    const/16 v19, 0x0

    .restart local v19       #index:I
    :goto_13
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Boolean;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    if-eqz v25, :cond_33

    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v25

    if-nez v25, :cond_33

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result v25

    if-eqz v25, :cond_33

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/internal/telephony/Phone;

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    const-string v25, "CallManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Pending Hold call execution "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_33
    :goto_14
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_13

    .end local v19           #index:I
    .restart local v3       #activePhoneIndex:I
    .restart local v10       #currActivePhoneIndex:I
    .restart local v23       #searchActiveConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_34
    if-ne v3, v10, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    move-result v25

    if-nez v25, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_12

    .end local v3           #activePhoneIndex:I
    .end local v10           #currActivePhoneIndex:I
    .end local v23           #searchActiveConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v19       #index:I
    :catch_2
    move-exception v12

    .restart local v12       #ex:Lcom/android/internal/telephony/CallStateException;
    :try_start_8
    const-string v25, "CallManager"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Pending Hold call execution "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, ", ex:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    .end local v12           #ex:Lcom/android/internal/telephony/CallStateException;
    :catchall_1
    move-exception v25

    monitor-exit v26
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v25

    :cond_35
    :try_start_9
    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .end local v11           #currentPickUpIndex:I
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    monitor-enter v26

    :try_start_a
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    monitor-exit v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .end local v4           #b:Ljava/lang/StringBuilder;
    .end local v5           #backgroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v17           #foregroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #index:I
    .end local v22           #ringingConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v24           #totalConnections:I
    :cond_36
    return-void

    .restart local v4       #b:Ljava/lang/StringBuilder;
    .restart local v5       #backgroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v17       #foregroundConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v22       #ringingConnections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v24       #totalConnections:I
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    if-eqz v25, :cond_39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    move-object/from16 v25, v0

    sget-object v26, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface/range {v25 .. v26}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v26, v0

    monitor-enter v26

    const/16 v19, 0x0

    .restart local v19       #index:I
    :goto_16
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v25

    move/from16 v0, v19

    move/from16 v1, v25

    if-ge v0, v1, :cond_3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    sget-object v27, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v0, v25

    move/from16 v1, v19

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v19, v19, 0x1

    goto :goto_16

    :cond_3a
    monitor-exit v26

    goto :goto_15

    :catchall_2
    move-exception v25

    monitor-exit v26
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    throw v25

    :catchall_3
    move-exception v25

    :try_start_c
    monitor-exit v26
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    throw v25
.end method

.method private initCdmaSetAudioModeBeforeRadioOperation()V
    .locals 3

    .prologue
    sget-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .local v0, cls:Ljava/lang/Class;
    :try_start_0
    const-string v1, "com.android.internal.telephony.HtcBuildUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    const-string v1, "cdmaSetAudioModeBeforeRadioOperation"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/CallManager;->mCdmaSetAudioModeBeforeRadioOperation:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #cls:Ljava/lang/Class;
    :cond_0
    :goto_1
    return-void

    .restart local v0       #cls:Ljava/lang/Class;
    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z
    .locals 2
    .parameter "p1"
    .parameter "p2"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 5
    .parameter "fgPhone"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "com.movial.ipphone.IPPhone"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    :goto_0
    return v2

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 3
    .parameter "phone"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x67

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x68

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x69

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6d

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6e

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x71

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x72

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x73

    invoke-interface {p1, v0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->initCdmaSetAudioModeBeforeRadioOperation()V

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CallManager;->registerForHtcPhoneStates(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private toggleHwAecForAnsweringTmoWiFiCalling(Landroid/media/AudioManager;)V
    .locals 3
    .parameter "audioManager"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS] original HTCHWAEC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set to ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HTCHWAEC=ON"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    :cond_0
    return-void
.end method

.method private toggleHwAecForTmoWiFiCalling(Landroid/media/AudioManager;I)V
    .locals 3
    .parameter "audioManager"
    .parameter "mode"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    if-nez v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS] original HTCHWAEC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set to ON"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HTCHWAEC=ON"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IMS] original HTCHWAEC= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", set to OFF"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "HTCHWAEC=OFF"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/CallManager;->HWAEC_on:Z

    goto :goto_0
.end method

.method private unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v0, 0x77

    invoke-interface {p1, v3, v0, v3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_1
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public acceptCall(Lcom/android/internal/telephony/Call;)V
    .locals 17
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    .local v10, ringingPhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v13, :cond_0

    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "acceptCall("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " from "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x1

    .local v12, tryForceSetupAudioMode:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .local v3, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-nez v13, :cond_8

    const/4 v9, 0x1

    .local v9, hasBgCall:Z
    :goto_0
    if-ne v3, v10, :cond_9

    const/4 v11, 0x1

    .local v11, sameChannel:Z
    :goto_1
    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v13, :cond_1

    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "hasBgCall: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "sameChannel:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v12, 0x0

    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v13, :cond_f

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v14

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .local v2, acceptRingCallIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v2, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v8, 0x0

    .local v8, hangupCall:Lcom/android/internal/telephony/Call;
    if-eqz v11, :cond_a

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-ne v13, v15, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    :goto_2
    if-eqz v8, :cond_2

    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v8           #hangupCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_3
    :try_start_2
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v2           #acceptRingCallIndex:I
    .end local v3           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v9           #hasBgCall:Z
    .end local v11           #sameChannel:Z
    :cond_3
    :goto_4
    if-eqz v12, :cond_4

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getCdmaSetAudioModeBeforeRadioOperation()Z

    move-result v13

    if-eqz v13, :cond_4

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    :cond_4
    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v13, :cond_5

    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v13, :cond_6

    :cond_5
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/CallManager;->htcAnswerRingingCall(Lcom/android/internal/telephony/Call;)V

    :cond_6
    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v13, :cond_7

    const-string v13, "CallManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "End acceptCall("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v13, "CallManager"

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    .restart local v3       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_8
    const/4 v9, 0x0

    goto/16 :goto_0

    .restart local v9       #hasBgCall:Z
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_1

    .restart local v2       #acceptRingCallIndex:I
    .restart local v8       #hangupCall:Lcom/android/internal/telephony/Call;
    .restart local v11       #sameChannel:Z
    :cond_a
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-nez v11, :cond_b

    const/4 v12, 0x1

    :goto_5
    goto :goto_2

    :cond_b
    const/4 v12, 0x0

    goto :goto_5

    :catch_0
    move-exception v6

    .local v6, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v13, "CallManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "acceptCall hangup: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v2           #acceptRingCallIndex:I
    .end local v6           #ex:Lcom/android/internal/telephony/CallStateException;
    .end local v8           #hangupCall:Lcom/android/internal/telephony/Call;
    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v13

    .restart local v2       #acceptRingCallIndex:I
    :cond_c
    if-nez v11, :cond_2

    :try_start_4
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-eq v13, v15, :cond_e

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .local v5, bgRingingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_6
    const/4 v12, 0x1

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .local v4, bgRingCallIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .end local v4           #bgRingCallIndex:I
    .end local v5           #bgRingingCall:Lcom/android/internal/telephony/Call;
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .local v7, fgCdmaCall:Lcom/android/internal/telephony/Call;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_3

    .end local v2           #acceptRingCallIndex:I
    .end local v7           #fgCdmaCall:Lcom/android/internal/telephony/Call;
    :cond_f
    sget-boolean v13, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v14

    :try_start_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .restart local v2       #acceptRingCallIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v13, v2, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v11, :cond_11

    if-eqz v9, :cond_10

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-eq v13, v15, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_10
    :goto_7
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CallManager;->htcHangupAllDialingCalls(I)V

    monitor-exit v14

    goto/16 :goto_4

    .end local v2           #acceptRingCallIndex:I
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v13

    .restart local v2       #acceptRingCallIndex:I
    :cond_11
    if-nez v9, :cond_13

    :try_start_6
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v13

    const/4 v15, 0x2

    if-eq v13, v15, :cond_10

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .restart local v5       #bgRingingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v13

    if-eqz v13, :cond_12

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_8
    const/4 v12, 0x1

    goto :goto_7

    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .restart local v4       #bgRingCallIndex:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v13, v4, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_8

    .end local v4           #bgRingCallIndex:I
    .end local v5           #bgRingingCall:Lcom/android/internal/telephony/Call;
    :cond_13
    const/4 v12, 0x1

    goto :goto_7

    .end local v2           #acceptRingCallIndex:I
    :cond_14
    const/4 v12, 0x1

    if-eqz v11, :cond_15

    if-eqz v9, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4

    :cond_15
    if-nez v11, :cond_16

    if-nez v9, :cond_16

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_4

    :cond_16
    if-nez v11, :cond_3

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_4
.end method

.method public canConference(Lcom/android/internal/telephony/Call;)Z
    .locals 5
    .parameter "heldCall"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    :goto_0
    return v2

    :cond_3
    instance-of v3, v0, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public canTransfer(Lcom/android/internal/telephony/Call;)Z
    .locals 3
    .parameter "heldCall"

    .prologue
    const/4 v0, 0x0

    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v1, 0x0

    .local v1, heldPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_1
    if-ne v1, v0, :cond_2

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public cdmaDialCallIsAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public cdmaRingCallIsAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public clearDisconnected()V
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    goto :goto_0

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :cond_0
    return-void
.end method

.method public conference(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, fgPhone:Lcom/android/internal/telephony/Phone;
    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference during phone type switching"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, v0, Lcom/android/internal/telephony/sip/SipPhone;

    if-eqz v1, :cond_3

    check-cast v0, Lcom/android/internal/telephony/sip/SipPhone;

    .end local v0           #fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/sip/SipPhone;->conference(Lcom/android/internal/telephony/Call;)V

    :goto_0
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End conference("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .restart local v0       #fgPhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canConference(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/android/internal/telephony/CallStateException;

    const-string v2, "Can\'t conference foreground and selected background call"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 12
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .local v1, basePhone:Lcom/android/internal/telephony/Phone;
    const/4 v4, 0x0

    .local v4, holdActivePhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v9, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v9, :cond_0

    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " dial("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, activePhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_3

    move v3, v6

    .local v3, hasBgCall:Z
    :goto_0
    const-string v9, "CallManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasBgCall: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " sameChannel:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-ne v0, v1, :cond_4

    :goto_1
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneController;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_1
    if-eq v0, v1, :cond_6

    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v6, :cond_c

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "CallManager"

    const-string v7, "Unable to dial due to both fg+bg active"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v8

    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #hasBgCall:Z
    :cond_2
    :goto_2
    return-object v5

    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    :cond_3
    move v3, v7

    goto :goto_0

    .restart local v3       #hasBgCall:Z
    :cond_4
    move v6, v7

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    const-string v6, "CallManager"

    const-string v7, "Switch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    .end local v0           #activePhone:Lcom/android/internal/telephony/Phone;
    .end local v3           #hasBgCall:Z
    :cond_6
    :goto_3
    invoke-interface {v1, p2}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .local v5, result:Lcom/android/internal/telephony/Connection;
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_7

    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End dial("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ", "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ")"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v6, :cond_8

    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v6, :cond_2

    :cond_8
    if-eqz v5, :cond_2

    if-eqz v4, :cond_9

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v6, v1}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_a
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_b
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .local v2, basePhoneIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    iput-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v7}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    goto/16 :goto_2

    .end local v2           #basePhoneIndex:I
    .end local v5           #result:Lcom/android/internal/telephony/Connection;
    .restart local v0       #activePhone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #hasBgCall:Z
    :cond_c
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v6, :cond_d

    if-nez v3, :cond_6

    const-string v6, "CallManager"

    const-string v7, "Switch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v0

    goto/16 :goto_3

    :cond_d
    if-eqz v3, :cond_e

    const-string v6, "CallManager"

    const-string v7, "Hangup"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->hangup()V

    goto/16 :goto_3

    :cond_e
    const-string v6, "CallManager"

    const-string v7, "Switch"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_3
.end method

.method public dial(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "phone"
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V

    invoke-interface {p1, p2, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public explicitCallTransfer(Lcom/android/internal/telephony/Call;)V
    .locals 3
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->canTransfer(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End explicitCallTransfer("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public getActiveFgCall()Lcom/android/internal/telephony/Call;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .local v0, call:Lcom/android/internal/telephony/Call;
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v1, :cond_4

    const/4 v0, 0x0

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1
.end method

.method public getActiveFgCallState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    goto :goto_0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAllPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Phone;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCalls()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_5

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, bgCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    const/4 v1, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .local v3, singleCall:Lcom/android/internal/telephony/Call;
    if-eq v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v3           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Call;

    .restart local v3       #singleCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .end local v0           #bgCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    .end local v1           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v2           #i$:Ljava/util/Iterator;
    :goto_2
    return-object v4

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    goto :goto_2
.end method

.method public getBgCallConnections()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v7, :cond_0

    sget-boolean v7, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v7, :cond_5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, connections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v7, v8, :cond_1

    const/4 v3, 0x0

    :cond_1
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .local v6, singleCall:Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_2

    if-eq v6, v3, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .local v1, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Call;

    .restart local v6       #singleCall:Lcom/android/internal/telephony/Call;
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .restart local v1       #conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #conn:Lcom/android/internal/telephony/Connection;
    .end local v2           #connections:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Connection;>;"
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v2

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_6
    :goto_2
    return-object v2

    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_2
.end method

.method public getBgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDefaultPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getFgCallConnections()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->emptyConnections:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFgPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFirstActiveBgCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, call:Lcom/android/internal/telephony/Call;
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_9

    :cond_0
    const/4 v1, 0x0

    .local v1, callFound:Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    const/4 v1, 0x1

    :cond_1
    :goto_0
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_2
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    .local v4, singleCall:Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_4

    if-eqz v4, :cond_4

    if-eq v4, v2, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_4

    move-object v0, v4

    const/4 v1, 0x1

    goto :goto_1

    .end local v2           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_5
    const/4 v1, 0x0

    goto :goto_0

    :cond_6
    if-nez v1, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    .end local v1           #callFound:Z
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_a

    const/4 v0, 0x0

    :cond_8
    :goto_3
    return-object v0

    :cond_9
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2

    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_3
.end method

.method public getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .local v0, call:Lcom/android/internal/telephony/Call;
    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v5, :cond_0

    sget-boolean v5, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v5, :cond_7

    :cond_0
    const/4 v2, 0x0

    .local v2, firstCall:Lcom/android/internal/telephony/Call;
    const/4 v1, 0x0

    .local v1, callFound:Z
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/Call;

    .local v4, singleCall:Lcom/android/internal/telephony/Call;
    if-nez v1, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_1

    if-nez v2, :cond_2

    move-object v2, v4

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v5, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    const/4 v1, 0x1

    goto :goto_0

    .end local v4           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_4
    if-nez v0, :cond_5

    move-object v0, v2

    .end local v1           #callFound:Z
    .end local v2           #firstCall:Lcom/android/internal/telephony/Call;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_5
    :goto_1
    if-nez v0, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_8

    const/4 v0, 0x0

    :cond_6
    :goto_2
    return-object v0

    :cond_7
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/CallManager;->getFirstNonIdleCall(Ljava/util/List;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_1

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    goto :goto_2
.end method

.method public getForegroundCalls()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_2

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, fgCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #fgCalls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/Call;>;"
    :goto_0
    return-object v2

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPendingMmiCodes(Lcom/android/internal/telephony/Phone;)Ljava/util/List;
    .locals 2
    .parameter "phone"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            ")",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "CallManager"

    const-string v1, "getPendingMmiCodes not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCalls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Call;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRingingPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, ringCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v2, 0x1

    .local v2, resultState:I
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .local v1, phone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .local v3, serviceState:I
    if-nez v3, :cond_2

    move v2, v3

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    .end local v3           #serviceState:I
    :cond_1
    return v2

    .restart local v1       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v3       #serviceState:I
    :cond_2
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    if-eq v2, v5, :cond_3

    if-ne v2, v6, :cond_0

    :cond_3
    move v2, v3

    goto :goto_0

    :cond_4
    if-ne v3, v5, :cond_0

    if-ne v2, v6, :cond_0

    move v2, v3

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/Phone$State;
    .locals 6

    .prologue
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    .local v3, s:Lcom/android/internal/telephony/Phone$State;
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    .local v2, phone:Lcom/android/internal/telephony/Phone;
    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_3

    :cond_1
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_0

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .local v0, cur:Lcom/android/internal/telephony/Phone$State;
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v4, :cond_2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v3, v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .end local v0           #cur:Lcom/android/internal/telephony/Phone$State;
    :cond_3
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    goto :goto_0

    .end local v2           #phone:Lcom/android/internal/telephony/Phone;
    :cond_5
    return-object v3
.end method

.method public gsmCallIsAllowed()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hangupForegroundResumeBackground(Lcom/android/internal/telephony/Call;)V
    .locals 6
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .local v2, foregroundPhone:Lcom/android/internal/telephony/Phone;
    const/4 v0, 0x0

    .local v0, backgroundPhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupForegroundResumeBackground("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_6

    :cond_1
    invoke-static {v2, v0}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    :cond_2
    :goto_0
    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "End hangupForegroundResumeBackground("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/CallManager;->htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v3, "CallManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hangupForegroundResumeBackground hangup: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v1           #ex:Lcom/android/internal/telephony/CallStateException;
    :cond_6
    if-ne v2, v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->hangup()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public hasActiveBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .local v2, singleCall:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasActiveFgCall()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public hasActiveRingingCall()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveCall(Ljava/util/ArrayList;)Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedBgCall()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v4, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Call;

    .local v2, singleCall:Lcom/android/internal/telephony/Call;
    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #singleCall:Lcom/android/internal/telephony/Call;
    :cond_3
    :goto_0
    return v3

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v4, v5}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasDisconnectedFgCall()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v3, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_2

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_1
    :goto_0
    return v1

    .restart local v0       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/CallManager;->getFirstCallOfState(Ljava/util/ArrayList;Lcom/android/internal/telephony/Call$State;)Lcom/android/internal/telephony/Call;

    move-result-object v3

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0
.end method

.method public htcBlockLoopbackDialing(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)V
    .locals 0
    .parameter "phone"
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .parameter "conn"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public htcBlockRingingMT(Lcom/android/internal/telephony/Connection;)Z
    .locals 5
    .parameter "conn"

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/CallManager;->htcBlockLoopbackMT(Lcom/android/internal/telephony/Connection;)Z

    move-result v0

    .local v0, blocked:Z
    if-nez v0, :cond_1

    sget-boolean v3, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->HTC_VOLTE_FLAG:Z

    if-ne v3, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v2

    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Block ring call : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to block ring call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public htcHangupWithoutAnswerOrResumeCall(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    .local v0, conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->hangup()V

    .end local v0           #conns:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_0
    return-void
.end method

.method public registerEcallAutoRetry(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public registerForATDMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerForDisconnect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public registerForUnblockPin2Done(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForVoiceCallConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerPhone(Lcom/android/internal/telephony/Phone;)Z
    .locals 4
    .parameter "phone"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerPhone("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/CallManager;->htcGetNumberOfNonIdleConnections(Lcom/android/internal/telephony/Call;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->enableTmoWifiIms()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/PhoneController;->registerImsCall(Lcom/android/internal/telephony/Phone;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->registerForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    const/4 v1, 0x1

    :goto_0
    return v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public rejectCall(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .parameter "ringingCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, ringingPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End rejectCall("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z
    .locals 1
    .parameter "dtmfString"
    .parameter "on"
    .parameter "off"
    .parameter "onComplete"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    const/4 v0, 0x1

    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End sendDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public sendUssdResponse(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2
    .parameter "phone"
    .parameter "ussdMessge"

    .prologue
    const-string v0, "CallManager"

    const-string v1, "sendUssdResponse not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public setActivePhone(I)V
    .locals 0
    .parameter "phoneType"

    .prologue
    return-void
.end method

.method public setActivePhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    return-void
.end method

.method public setAudioMode()V
    .locals 13

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v4

    .local v4, context:Landroid/content/Context;
    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v10, "audio"

    invoke-virtual {v4, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .local v2, audioManager:Landroid/media/AudioManager;
    const/4 v8, 0x0

    .local v8, mode:I
    sget-object v10, Lcom/android/internal/telephony/CallManager$2;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    :goto_1
    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v10

    if-eq v10, v8, :cond_2

    invoke-direct {p0, v2, v8}, Lcom/android/internal/telephony/CallManager;->toggleHwAecForTmoWiFiCalling(Landroid/media/AudioManager;I)V

    invoke-virtual {v2, v8}, Landroid/media/AudioManager;->setMode(I)V

    :cond_2
    sget-boolean v10, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v10, :cond_0

    sget-boolean v10, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v10, :cond_0

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x0

    .local v1, activeCallExisted:Z
    const/4 v9, 0x0

    .local v9, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .local v0, activeCall:Lcom/android/internal/telephony/Call;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v10, v11, :cond_5

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v8

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    goto :goto_2

    :cond_5
    const/4 v8, 0x1

    goto :goto_1

    .end local v0           #activeCall:Lcom/android/internal/telephony/Call;
    .end local v1           #activeCallExisted:Z
    .end local v9           #ringingCall:Lcom/android/internal/telephony/Call;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    .local v6, fgPhone:Lcom/android/internal/telephony/Phone;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .local v5, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .local v3, bgCall:Lcom/android/internal/telephony/Call;
    const-string v10, "net.gannet0.cellular"

    const-string v11, "1"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, ganLiteProperty:Ljava/lang/String;
    sget-boolean v10, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v10, :cond_6

    const-string v10, "CallManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ganLiteProperty : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v6, :cond_7

    const/4 v8, 0x2

    const-string v10, "CallManager"

    const-string v11, "Call offhook when switching phone type"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_7
    instance-of v10, v6, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v10, :cond_9

    if-eqz v3, :cond_8

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v10

    if-nez v10, :cond_8

    const-string v10, "VoLTE"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_8
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v10

    if-nez v10, :cond_9

    const-string v10, "0"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v8, 0x3

    goto/16 :goto_1

    :cond_b
    const/4 v8, 0x2

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setAudioMode(II)V
    .locals 0
    .parameter "phoneType"
    .parameter "AudioMode"

    .prologue
    return-void
.end method

.method public setAudioMode(Z)V
    .locals 1
    .parameter "answerCall"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/CallManager;->setAudioMode(ZLcom/android/internal/telephony/Call;)V

    return-void
.end method

.method public setAudioMode(ZLcom/android/internal/telephony/Call;)V
    .locals 8
    .parameter "answerCall"
    .parameter "ringCall"

    .prologue
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/CallManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, context:Landroid/content/Context;
    if-nez v1, :cond_1

    .end local v1           #context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .restart local v1       #context:Landroid/content/Context;
    :cond_1
    const-string v6, "audio"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    const-string v6, "CallManager"

    const-string v7, "setAudioMode due to answerCall"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .local v2, fgPhone:Lcom/android/internal/telephony/Phone;
    move-object v5, p2

    .local v5, targetCall:Lcom/android/internal/telephony/Call;
    if-nez v5, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .local v4, rgCall:Lcom/android/internal/telephony/Call;
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    instance-of v3, v6, Lcom/android/internal/telephony/sip/SipPhone;

    .local v3, isSipRingPhone:Z
    :goto_1
    if-eqz v2, :cond_3

    instance-of v6, v2, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v6, :cond_4

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/CallManager;->isTMOIPPhone(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    if-nez v3, :cond_4

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isVideoTelephony()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "VoLTE"

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->toggleHwAecForAnsweringTmoWiFiCalling(Landroid/media/AudioManager;)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0

    .end local v3           #isSipRingPhone:Z
    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .restart local v3       #isSipRingPhone:Z
    :cond_6
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Landroid/media/AudioManager;->setMode(I)V

    goto :goto_0
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setEchoSuppression("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public setMute(Z)V
    .locals 3
    .parameter "muted"

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End setMute("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public startDtmf(C)Z
    .locals 4
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .local v0, result:Z
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    const/4 v0, 0x1

    :cond_1
    sget-boolean v1, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "CallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "End startDtmf("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CallManager"

    const-string v1, " stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    :cond_1
    sget-boolean v0, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "CallManager"

    const-string v1, "End stopDtmf()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V
    .locals 10
    .parameter "heldCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v1, 0x0

    .local v1, activePhone:Lcom/android/internal/telephony/Phone;
    const/4 v3, 0x0

    .local v3, heldPhone:Lcom/android/internal/telephony/Phone;
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_0

    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    :cond_2
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v6, :cond_3

    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v6, :cond_12

    :cond_3
    invoke-static {v3, v1}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-eqz v1, :cond_4

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .local v0, activeCallIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v7

    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v0, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #activeCallIndex:I
    :cond_4
    :goto_0
    sget-boolean v6, Lcom/android/internal/telephony/CallManager;->VDBG:Z

    if-eqz v6, :cond_5

    const-string v6, "CallManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "End switchHoldingAndActive("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CallManager"

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    .restart local v0       #activeCallIndex:I
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .end local v0           #activeCallIndex:I
    :cond_6
    if-eqz v1, :cond_a

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_a

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .local v5, index:I
    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v7

    if-ltz v5, :cond_8

    :try_start_2
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_8

    :cond_7
    const/4 v5, -0x2

    :cond_8
    if-ltz v5, :cond_9

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :cond_9
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .end local v5           #index:I
    :cond_a
    :goto_1
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-eq v6, v9, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    if-ne v2, p1, :cond_11

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_b
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v7

    if-eqz v1, :cond_d

    :try_start_3
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    invoke-static {v1, v6}, Lcom/android/internal/telephony/CallManager;->isSamePhone(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-nez v6, :cond_d

    :cond_c
    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v1, v6}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_d
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .local v4, heldPhoneIndex:I
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Phone;

    iput-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mPreEngadgeMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mMultiplePhoneSingleAudioActive:Lcom/android/internal/telephony/Phone;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v6, v8}, Lcom/android/internal/telephony/Phone;->enableOrQueryVoiceCallAbility(Ljava/lang/Boolean;)Z

    :cond_e
    monitor-exit v7

    goto/16 :goto_0

    .end local v4           #heldPhoneIndex:I
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6

    .restart local v5       #index:I
    :catchall_2
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v6

    :cond_f
    if-ltz v5, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v7

    :try_start_5
    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_10

    iget-object v6, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v6, v5, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_10
    monitor-exit v7

    goto :goto_1

    :catchall_3
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v6

    .end local v5           #index:I
    .restart local v2       #bgCall:Lcom/android/internal/telephony/Call;
    :cond_11
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    if-ne v6, p1, :cond_b

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_2

    .end local v2           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_12
    if-eqz v1, :cond_13

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :cond_13
    if-eqz v3, :cond_4

    if-eq v3, v1, :cond_4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto/16 :goto_0
.end method

.method public switchHoldingAndActive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "toHeldCall"
    .parameter "toActiveCall"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, b:Ljava/lang/StringBuilder;
    const-string v4, "CallManager {"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nstate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .local v1, call:Lcom/android/internal/telephony/Call;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Foreground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    :goto_0
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Background: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n  Conn: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getBgCallConnections()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n- Ringing: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    :goto_3
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    :goto_4
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getAllPhones()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/Phone;

    .local v3, phone:Lcom/android/internal/telephony/Phone;
    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPhone: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", name = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const-string v4, "\n- Foreground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const-string v4, " Background: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    const-string v4, " Ringing: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5

    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    :cond_1
    const-string v4, "null"

    goto/16 :goto_0

    :cond_2
    const-string v4, "null"

    goto/16 :goto_1

    :cond_3
    const-string v4, "null"

    goto/16 :goto_2

    :cond_4
    const-string v4, "null"

    goto/16 :goto_3

    :cond_5
    const-string v4, "null"

    goto/16 :goto_4

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_6
    const-string v4, "\n}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public unregisterEcallAutoRetry(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method public unregisterForATDMmiComplete(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallWaitingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCdmaOtaStatusChangeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mDisplayInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mEcmTimerResetRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mInCallVoicePrivacyOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mIncomingRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mMmiInitiateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mNewRingingConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPostDialCharacter(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPostDialCharacterRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mPreciseCallStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mResendIncallMuteRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mRingbackToneRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mServiceStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSignalInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSubscriptionInfoReadyRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method public unregisterForUnblockPin2Done(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForVoiceCallConnected(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/CallManager;->mCallConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .parameter "phone"

    .prologue
    invoke-static {p1}, Lcom/android/internal/telephony/CallManager;->getPhoneBase(Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, basePhone:Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "CallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterPhone("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_ONLY_TWO_CALL_WITH_SINGLE_AUDIO:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/internal/telephony/CallManager;->SUPPORT_MULTIPLE_PHONE_SINGLE_AUDIO:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/CallManager;->mHandler:Landroid/os/Handler;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .local v1, index:I
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundConnections:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mNeedToHoldAfterRing:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1           #index:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mRingingCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mBackgroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mForegroundCalls:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/CallManager;->unregisterForPhoneStates(Lcom/android/internal/telephony/Phone;)V

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Phone;

    iput-object v2, p0, Lcom/android/internal/telephony/CallManager;->mDefaultPhone:Lcom/android/internal/telephony/Phone;

    goto :goto_0
.end method

.method private isSipPhoneActive()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/CallManager;->mPhones:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Phone;

    .local v1, phone:Lcom/android/internal/telephony/Phone;
    instance-of v2, v1, Lcom/android/internal/telephony/sip/SipPhone;

    if-nez v2, :cond_1

    instance-of v2, v1, Lcom/baidu/internal/telephony/sip/SipPhone;

    if-eqz v2, :cond_0

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .end local v1           #phone:Lcom/android/internal/telephony/Phone;
    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
