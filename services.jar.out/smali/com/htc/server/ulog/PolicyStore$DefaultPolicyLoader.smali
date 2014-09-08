.class Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;
.super Ljava/lang/Object;
.source "PolicyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/server/ulog/PolicyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultPolicyLoader"
.end annotation


# static fields
.field private static final BASIC_POLICY:[[Ljava/lang/String;

.field private static final DEBUG_POLICY:[[Ljava/lang/String;

.field private static final SENSE35_UP_POLICY:[[Ljava/lang/String;

.field private static final SENSE40_UP_POLICY:[[Ljava/lang/String;

.field private static final SENSE45_UP_POLICY:[[Ljava/lang/String;

.field private static final UP_POLICY:[[Ljava/lang/String;


# instance fields
.field private mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

.field private prePolicy:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 284
    new-array v0, v8, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.feedback"

    aput-object v2, v1, v4

    const-string v2, "HTC_UB"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "system_server"

    aput-object v2, v1, v4

    const-string v2, "data_traffic"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "ulogsampleapp"

    aput-object v2, v1, v4

    const-string v2, "user_profiling"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "sense.com"

    aput-object v2, v1, v4

    const-string v2, "test_category"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    .line 299
    const/16 v0, 0x16

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.reportagent"

    aput-object v2, v1, v4

    const-string v2, "common"

    aput-object v2, v1, v5

    const-string v2, "retry"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.reportagent"

    aput-object v2, v1, v4

    const-string v2, "policy"

    aput-object v2, v1, v5

    const-string v2, "freq"

    aput-object v2, v1, v6

    const-string v2, "168"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.reportagent"

    aput-object v2, v1, v4

    const-string v2, "log"

    aput-object v2, v1, v5

    const-string v2, "freq"

    aput-object v2, v1, v6

    const-string v2, "24"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.reportagent"

    aput-object v2, v1, v4

    const-string v2, "log"

    aput-object v2, v1, v5

    const-string v2, "cache"

    aput-object v2, v1, v6

    const-string v2, "2"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.reportagent"

    aput-object v2, v1, v4

    const-string v2, "budget"

    aput-object v2, v1, v5

    const-string v2, "period"

    aput-object v2, v1, v6

    const-string v2, "720"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "mobile_calc_unit"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "mobile_UL"

    aput-object v3, v2, v6

    const-string v3, "50"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "mobile_DL"

    aput-object v3, v2, v6

    const-string v3, "50"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "mobile_total"

    aput-object v3, v2, v6

    const-string v3, "100"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "other_calc_unit"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "other_UL"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "other_DL"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "other_total"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "all_calc_unit"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "all_UL"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "all_DL"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.reportagent"

    aput-object v3, v2, v4

    const-string v3, "budget"

    aput-object v3, v2, v5

    const-string v3, "all_total"

    aput-object v3, v2, v6

    const-string v3, "-1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.feedback"

    aput-object v3, v2, v4

    const-string v3, "HTC_APP_CRASH"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.feedback"

    aput-object v3, v2, v4

    const-string v3, "SYSTEM_CRASH"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.feedback"

    aput-object v3, v2, v4

    const-string v3, "LASTKMSG"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.feedback"

    aput-object v3, v2, v4

    const-string v3, "HTC_APP_ANR"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.feedback"

    aput-object v3, v2, v4

    const-string v3, "extra"

    aput-object v3, v2, v5

    const-string v3, "bugreport"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->BASIC_POLICY:[[Ljava/lang/String;

    .line 326
    const/16 v0, 0x32

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.feedback"

    aput-object v2, v1, v4

    const-string v2, "feedback_usageOpt"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.android.browser"

    aput-object v2, v1, v4

    const-string v2, "user_action"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.android.htccontacts"

    aput-object v2, v1, v4

    const-string v2, "contact_type"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.android.htccontacts"

    aput-object v2, v1, v4

    const-string v2, "group_info"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.android.mms"

    aput-object v2, v1, v4

    const-string v2, "message_send"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.mms"

    aput-object v3, v2, v4

    const-string v3, "message_receive"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.mms"

    aput-object v3, v2, v4

    const-string v3, "message_count"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.phone"

    aput-object v3, v2, v4

    const-string v3, "user_action"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.phone"

    aput-object v3, v2, v4

    const-string v3, "settings_quietRing"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.phone"

    aput-object v3, v2, v4

    const-string v3, "settings_pocketMode"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.phone"

    aput-object v3, v2, v4

    const-string v3, "settings_flipForSpeaker"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.phone"

    aput-object v3, v2, v4

    const-string v3, "edit_b4_call"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.futuredial"

    aput-object v3, v2, v4

    const-string v3, "transfer_data"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.album"

    aput-object v3, v2, v4

    const-string v3, "storage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "press_duration"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "UDB_words"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "special_correction"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "WCL_cnt"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "duration_SIP"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "lang_key"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "voice_key"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "set_CIME"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "user_action"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "waiting_time"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "fuzzy_pinYin"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcsetupwizard"

    aput-object v3, v2, v4

    const-string v3, "is_sysTimeChanged"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcsetupwizard"

    aput-object v3, v2, v4

    const-string v3, "feedback_usageOpt"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "mail_count"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "update_schedule"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "default_mailsize"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "widget_clickcount"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "EAS_success"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "layout"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "scene"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "user_action"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "app_launch"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "leap_view"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "skin_picker"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string v3, "storage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "device_status"

    aput-object v3, v2, v4

    const-string v3, "battery"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "device_status"

    aput-object v3, v2, v4

    const-string v3, "battery_low"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "device_status"

    aput-object v3, v2, v4

    const-string v3, "bluetooth"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "download_manager"

    aput-object v3, v2, v4

    const-string v3, "download"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "application_launch"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "activity_launch_history"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "MRU_click"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "activity_tabCount"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "tab_index"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "app_uninstalled"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "launcher_downloaded"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    .line 383
    const/16 v0, 0x10

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc.header"

    aput-object v2, v1, v4

    const-string v2, "region"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc.header"

    aput-object v2, v1, v4

    const-string v2, "city"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc.header"

    aput-object v2, v1, v4

    const-string v2, "timezone"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc.header"

    aput-object v2, v1, v4

    const-string v2, "model_id"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc.header"

    aput-object v2, v1, v4

    const-string v2, "device_id"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tellhtc.header"

    aput-object v3, v2, v4

    const-string v3, "device_sn"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tellhtc.header"

    aput-object v3, v2, v4

    const-string v3, "cid"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tellhtc.header"

    aput-object v3, v2, v4

    const-string v3, "rom_version"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tellhtc.header"

    aput-object v3, v2, v4

    const-string v3, "sense_version"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "tellhtc.header"

    aput-object v3, v2, v4

    const-string v3, "privacy_statement_version"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "Tell_HTC"

    aput-object v3, v2, v4

    const-string v3, "Shutdown"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.calendar"

    aput-object v3, v2, v4

    const-string v3, "view_switch"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    aput-object v3, v2, v4

    const-string v3, "user_activity"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.laputa"

    aput-object v3, v2, v4

    const-string v3, "navi_option"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.showme"

    aput-object v3, v2, v4

    const-string v3, "general"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "layout_move"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    .line 405
    const/16 v0, 0x33

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc_client"

    aput-object v2, v1, v4

    const-string v2, "error_report"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "tellhtc_client"

    aput-object v2, v1, v4

    const-string v2, "usage_report"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "sys_statistics"

    aput-object v2, v1, v4

    const-string v2, "device_error_count"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "sys_statistics"

    aput-object v2, v1, v4

    const-string v2, "device_use_time"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.android.camera"

    aput-object v2, v1, v4

    const-string v2, "photo_video_taken"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "IME_10000"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.htcime"

    aput-object v3, v2, v4

    const-string v3, "IME_KEY_POINT"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "screen_history"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string v3, "play_source"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string v3, "playback_music"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.album"

    aput-object v3, v2, v4

    const-string v3, "album_source"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    aput-object v3, v2, v4

    const-string v3, "view_post"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    aput-object v3, v2, v4

    const-string v3, "check_in"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "fragment_history"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    aput-object v3, v2, v4

    const-string v3, "widget_action"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.friendstream"

    aput-object v3, v2, v4

    const-string v3, "view_source"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string v3, "playback_time"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "GPS_module"

    aput-object v3, v2, v4

    const-string v3, "acquisition"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "GPS_module"

    aput-object v3, v2, v4

    const-string v3, "tracking"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.album"

    aput-object v3, v2, v4

    const-string v3, "Share"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.album"

    aput-object v3, v2, v4

    const-string v3, "Slideshow"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.photoenhancer"

    aput-object v3, v2, v4

    const-string v3, "photoenhancer"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.usage"

    aput-object v3, v2, v4

    const-string v3, "mobileUsage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.usage"

    aput-object v3, v2, v4

    const-string v3, "mobileTotalUsage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.usage"

    aput-object v3, v2, v4

    const-string v3, "wifiUsage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.usage"

    aput-object v3, v2, v4

    const-string v3, "wifiTotalUsage"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "staying"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "media_server"

    aput-object v3, v2, v4

    const-string v3, "media_playback"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "virtual_key"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.launcher"

    aput-object v3, v2, v4

    const-string v3, "layout_change"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.browser"

    aput-object v3, v2, v4

    const-string v3, "user_addlist"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.browser"

    aput-object v3, v2, v4

    const-string v3, "flash_setting"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.htccontacts"

    aput-object v3, v2, v4

    const-string v3, "People_You_Know"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.htccontacts"

    aput-object v3, v2, v4

    const-string v3, "detail_view"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.musicenhancer"

    aput-object v3, v2, v4

    const-string v3, "update_album_art"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.AutoMotive"

    aput-object v3, v2, v4

    const-string v3, "usage_time"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.AutoMotive"

    aput-object v3, v2, v4

    const-string v3, "usage_count"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.AutoMotive"

    aput-object v3, v2, v4

    const-string v3, "footer_panel"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "caller_history"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.music"

    aput-object v3, v2, v4

    const-string v3, "queue_launch"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.android.mail"

    aput-object v3, v2, v4

    const-string v3, "show_threaded_view"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.android.camera"

    aput-object v3, v2, v4

    const-string v3, "Camera_settings"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.task"

    aput-object v3, v2, v4

    const-string v3, "field_count"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.task"

    aput-object v3, v2, v4

    const-string v3, "default_account"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "system_server"

    aput-object v3, v2, v4

    const-string v3, "modem_crash"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.quicktips"

    aput-object v3, v2, v4

    const-string v3, "view_duration"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.resetnotify"

    aput-object v3, v2, v4

    const-string v3, "modem_silent_reset"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "WifiHotspot"

    aput-object v3, v2, v4

    const-string v3, "usage_time"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "beats_audio"

    aput-object v3, v2, v4

    const-string v3, "usage_time"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "beats_audio"

    aput-object v3, v2, v4

    const-string v3, "state_change"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "storage"

    aput-object v3, v2, v4

    const-string v3, "encryption"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    .line 459
    const/4 v0, 0x7

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.fm"

    aput-object v2, v1, v4

    const-string v2, "playback_duration"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v4

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.browser"

    aput-object v2, v1, v4

    const-string v2, "desktop_setting"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.browser"

    aput-object v2, v1, v4

    const-string v2, "find_on_page"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.browser"

    aput-object v2, v1, v4

    const-string v2, "reader_mode"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "com.htc.browser"

    aput-object v2, v1, v4

    const-string v2, "share"

    aput-object v2, v1, v5

    const-string v2, "enable"

    aput-object v2, v1, v6

    const-string v2, "1"

    aput-object v2, v1, v7

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.wirelessDisplayService"

    aput-object v3, v2, v4

    const-string v3, "WHDMI_WirelessDisplayService"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "com.htc.wifidisplay"

    aput-object v3, v2, v4

    const-string v3, "configuration"

    aput-object v3, v2, v5

    const-string v3, "enable"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE45_UP_POLICY:[[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/htc/server/ulog/DatabaseHelper;)V
    .locals 1
    .parameter "dbHelper"

    .prologue
    .line 533
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    .line 534
    iput-object p1, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    .line 535
    return-void
.end method

.method static synthetic access$000(Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 280
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->disableDebuggingRomPolicyInNeed()V

    return-void
.end method

.method private addIntoPolicyVTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7
    .parameter "appid"
    .parameter "category"
    .parameter "key"
    .parameter "value"
    .parameter "isSIE"

    .prologue
    const/4 v6, 0x1

    .line 750
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 751
    const-string v3, "UserBehaviorLoggingService"

    const-string v4, "New prePolicy(policy cache)"

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 754
    .local v0, app_table:Ljava/util/HashMap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 755
    .local v1, cat_table:Ljava/util/HashMap;
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert one row in virtual table, SIE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    :goto_0
    return v6

    .line 762
    .end local v0           #app_table:Ljava/util/HashMap;
    .end local v1           #cat_table:Ljava/util/HashMap;
    :cond_0
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 763
    .restart local v0       #app_table:Ljava/util/HashMap;
    if-eqz v0, :cond_4

    .line 764
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 765
    .restart local v1       #cat_table:Ljava/util/HashMap;
    if-eqz v1, :cond_3

    .line 766
    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 767
    .local v2, value_old:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 768
    if-nez p5, :cond_1

    .line 769
    const-string v3, "UserBehaviorLoggingService"

    const-string v4, "The key value set is already set in SIE xml"

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 773
    :cond_1
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The key has duplicated definition in SIE xml, Appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Already set value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " wanna to set value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert one row in virtual table, SIE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 785
    .end local v2           #value_old:Ljava/lang/String;
    :cond_3
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #cat_table:Ljava/util/HashMap;
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 786
    .restart local v1       #cat_table:Ljava/util/HashMap;
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add new Category, category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert one row in virtual table, SIE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    .end local v1           #cat_table:Ljava/util/HashMap;
    :cond_4
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #app_table:Ljava/util/HashMap;
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 795
    .restart local v0       #app_table:Ljava/util/HashMap;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 796
    .restart local v1       #cat_table:Ljava/util/HashMap;
    invoke-virtual {v1, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add new Category, category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Add new app, app="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const-string v3, "UserBehaviorLoggingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Insert one row in virtual table, SIE "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and appid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V
    .locals 8
    .parameter "source"
    .parameter "target"
    .parameter "targetOffset"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 504
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    array-length v1, p0

    array-length v2, p1

    sub-int/2addr v2, p2

    if-gt v1, v2, :cond_1

    .line 505
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 506
    aget-object v1, p1, v0

    array-length v1, v1

    if-ne v1, v7, :cond_0

    aget-object v1, p0, v0

    array-length v1, v1

    if-ne v1, v7, :cond_0

    .line 507
    add-int v1, v0, p2

    aget-object v1, p1, v1

    aget-object v2, p0, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v3

    .line 508
    add-int v1, v0, p2

    aget-object v1, p1, v1

    aget-object v2, p0, v0

    aget-object v2, v2, v4

    aput-object v2, v1, v4

    .line 509
    add-int v1, v0, p2

    aget-object v1, p1, v1

    aget-object v2, p0, v0

    aget-object v2, v2, v5

    aput-object v2, v1, v5

    .line 510
    add-int v1, v0, p2

    aget-object v1, p1, v1

    aget-object v2, p0, v0

    aget-object v2, v2, v6

    aput-object v2, v1, v6

    .line 505
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 514
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method private disableDebuggingRomPolicyInNeed()V
    .locals 9

    .prologue
    .line 739
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isFactoryRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/report/ReportConfig;->isShippingRom()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabledBySystemProperty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 740
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "start to disable debugging policies by system properties on debugging rom"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->getDisabledDebugPolicy()[[Ljava/lang/String;

    move-result-object v7

    .line 742
    .local v7, debuggingPolicy:[[Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    aget-object v1, v7, v8

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, v7, v8

    const/4 v3, 0x1

    aget-object v2, v2, v3

    aget-object v3, v7, v8

    const/4 v4, 0x2

    aget-object v3, v3, v4

    aget-object v4, v7, v8

    const/4 v5, 0x3

    aget-object v4, v4, v5

    const-wide v5, 0x7fffffffffffffffL

    invoke-virtual/range {v0 .. v6}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 742
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 746
    .end local v7           #debuggingPolicy:[[Ljava/lang/String;
    .end local v8           #i:I
    :cond_0
    return-void
.end method

.method private static getBasicPolicy()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    sget-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->BASIC_POLICY:[[Ljava/lang/String;

    return-object v0
.end method

.method private static getDebugPolicy()[[Ljava/lang/String;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    return-object v0
.end method

.method private static getDisabledDebugPolicy()[[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 517
    sget-object v2, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 518
    .local v0, disabledDebugPolidy:[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    sget-object v2, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 519
    aget-object v2, v0, v1

    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v5

    aput-object v3, v2, v5

    .line 520
    aget-object v2, v0, v1

    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v6

    aput-object v3, v2, v6

    .line 521
    aget-object v2, v0, v1

    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->DEBUG_POLICY:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v7

    aput-object v3, v2, v7

    .line 522
    aget-object v2, v0, v1

    const/4 v3, 0x3

    const-string v4, "0"

    aput-object v4, v2, v3

    .line 518
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 524
    :cond_0
    return-object v0
.end method

.method private static getUPPolicy()[[Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 470
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isLessThanSense35()Z

    move-result v1

    .line 471
    .local v1, isLessThanSense35:Z
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isLessThanSense45()Z

    move-result v2

    .line 473
    .local v2, isLessThanSense45:Z
    if-eqz v1, :cond_0

    .line 474
    const-string v3, "[getUPPolicy] less than sense 3.5"

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    .line 499
    :goto_0
    return-object v0

    .line 477
    :cond_0
    invoke-static {}, Lcom/htc/server/ulog/Utils;->isSense35()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 478
    const-string v3, "[getUPPolicy] equal to 3.5"

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 479
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v3, v3

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 480
    .local v0, allUPPolicies:[[Ljava/lang/String;
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    invoke-static {v3, v0, v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 481
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto :goto_0

    .line 484
    .end local v0           #allUPPolicies:[[Ljava/lang/String;
    :cond_1
    if-eqz v2, :cond_2

    .line 485
    const-string v3, "[getUPPolicy]equal to sense 4.0 or less than sense 4.5"

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 486
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v3, v3

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 487
    .restart local v0       #allUPPolicies:[[Ljava/lang/String;
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    invoke-static {v3, v0, v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 488
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 489
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    sget-object v5, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto :goto_0

    .line 493
    .end local v0           #allUPPolicies:[[Ljava/lang/String;
    :cond_2
    const-string v3, "[getUPPolicy] equal to sense4.5"

    invoke-static {v3}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;)V

    .line 494
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v3, v3

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE45_UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    add-int/2addr v3, v4

    filled-new-array {v3, v6}, [I

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    .line 495
    .restart local v0       #allUPPolicies:[[Ljava/lang/String;
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    invoke-static {v3, v0, v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 496
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 497
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    sget-object v5, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    .line 498
    sget-object v3, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE45_UP_POLICY:[[Ljava/lang/String;

    sget-object v4, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->UP_POLICY:[[Ljava/lang/String;

    array-length v4, v4

    sget-object v5, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE35_UP_POLICY:[[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    sget-object v5, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->SENSE40_UP_POLICY:[[Ljava/lang/String;

    array-length v5, v5

    add-int/2addr v4, v5

    invoke-static {v3, v0, v4}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->arrayCopy([[Ljava/lang/String;[[Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private hasPoliciesInDB()Z
    .locals 4

    .prologue
    .line 808
    iget-object v1, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v1}, Lcom/htc/server/ulog/DatabaseHelper;->getPolicyCount()I

    move-result v0

    .line 809
    .local v0, count:I
    const-string v1, "UserBehaviorLoggingService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The policy count in policy table="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    if-lez v0, :cond_0

    const/4 v1, 0x1

    .line 811
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private insertAllDefaultPolicy()Z
    .locals 15

    .prologue
    .line 603
    const/4 v2, 0x0

    .line 604
    .local v2, count:I
    iget-object v12, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    if-nez v12, :cond_0

    .line 605
    const-string v12, "UserBehaviorLoggingService"

    const-string v13, "No policy in policy virtual table"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const/4 v12, 0x0

    .line 630
    :goto_0
    return v12

    .line 608
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v8, p_al:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 610
    .local v3, iterator_1:Ljava/util/Iterator;
    :cond_1
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 612
    .local v0, appid:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 613
    .local v4, iterator_cat:Ljava/util/Iterator;
    :cond_2
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 614
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, category:Ljava/lang/String;
    iget-object v12, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->prePolicy:Ljava/util/HashMap;

    invoke-virtual {v12, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/HashMap;

    invoke-virtual {v12, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 616
    .local v7, key_value:Ljava/util/HashMap;
    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 617
    .local v5, iterator_key:Ljava/util/Iterator;
    :goto_1
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 618
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 619
    .local v6, key:Ljava/lang/String;
    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 620
    .local v11, value:Ljava/lang/String;
    const/4 v12, 0x5

    new-array v9, v12, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v0, v9, v12

    const/4 v12, 0x1

    aput-object v1, v9, v12

    const/4 v12, 0x2

    aput-object v6, v9, v12

    const/4 v12, 0x3

    aput-object v11, v9, v12

    const/4 v12, 0x4

    const-string v13, "-1"

    aput-object v13, v9, v12

    .line 621
    .local v9, parameters:[Ljava/lang/String;
    const-string v12, "UserBehaviorLoggingService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " Put parameters for insert appid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",category="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",key="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ",value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v2, v2, 0x1

    .line 624
    goto :goto_1

    .line 627
    .end local v0           #appid:Ljava/lang/String;
    .end local v1           #category:Ljava/lang/String;
    .end local v4           #iterator_cat:Ljava/util/Iterator;
    .end local v5           #iterator_key:Ljava/util/Iterator;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #key_value:Ljava/util/HashMap;
    .end local v9           #parameters:[Ljava/lang/String;
    .end local v11           #value:Ljava/lang/String;
    :cond_3
    const-string v12, "UserBehaviorLoggingService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "The count for policy insert, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v2, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v12, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual {v12, v8}, Lcom/htc/server/ulog/DatabaseHelper;->batchInsertPolicy(Ljava/util/ArrayList;)I

    move-result v10

    .line 629
    .local v10, suc:I
    if-lez v10, :cond_4

    const/4 v12, 0x1

    goto/16 :goto_0

    .line 630
    :cond_4
    const/4 v12, 0x0

    goto/16 :goto_0
.end method

.method private loadDefaultPoliciesWithoutBundle()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 579
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->hasPoliciesInDB()Z

    move-result v1

    if-nez v1, :cond_0

    .line 581
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setBasicPolicy(Z)V

    .line 582
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setUserProfilingPolicy(Z)V

    .line 583
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setDebuggingRomPolicyInNeed(Z)V

    .line 584
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[loadDefaultPoliciesWithoutBundle]No policies in DB,batch insert policies."

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->insertAllDefaultPolicy()Z

    move-result v0

    .line 592
    :goto_0
    return v0

    .line 588
    :cond_0
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setBasicPolicy(Z)V

    .line 589
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setUserProfilingPolicy(Z)V

    .line 590
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setDebuggingRomPolicyInNeed(Z)V

    .line 591
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[loadDefaultPoliciesWithoutBundle]has policies in DB,incrementally insert policies."

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadWithBundleAndSIE(Landroid/os/Bundle;Z)Z
    .locals 3
    .parameter "bundle"
    .parameter "isSIE"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x1

    .line 559
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->hasPoliciesInDB()Z

    move-result v1

    if-nez v1, :cond_0

    .line 560
    invoke-direct {p0, p1, p2, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setPolicyInternal(Landroid/os/Bundle;ZZ)Z

    .line 561
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setBasicPolicy(Z)V

    .line 562
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setUserProfilingPolicy(Z)V

    .line 563
    invoke-direct {p0, v2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setDebuggingRomPolicyInNeed(Z)V

    .line 564
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[loadWithBundleAndSIE]No policies in DB,batch insert policies."

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->insertAllDefaultPolicy()Z

    move-result v0

    .line 573
    :goto_0
    return v0

    .line 568
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setPolicyInternal(Landroid/os/Bundle;ZZ)Z

    .line 569
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setBasicPolicy(Z)V

    .line 570
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setUserProfilingPolicy(Z)V

    .line 571
    invoke-direct {p0, v0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setDebuggingRomPolicyInNeed(Z)V

    .line 572
    const-string v1, "UserBehaviorLoggingService"

    const-string v2, "[loadWithBundleAndSIE]has policies in DB,incrementally insert policies."

    invoke-static {v1, v2}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setBasicPolicy(Z)V
    .locals 11
    .parameter "hasDataInDB"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 701
    invoke-static {}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->getBasicPolicy()[[Ljava/lang/String;

    move-result-object v6

    .line 702
    .local v6, BasicPolicy:[[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 703
    if-eqz p1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    aget-object v1, v6, v7

    aget-object v1, v1, v5

    aget-object v2, v6, v7

    aget-object v2, v2, v8

    aget-object v3, v6, v7

    aget-object v3, v3, v9

    aget-object v4, v6, v7

    aget-object v4, v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 702
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 706
    :cond_0
    aget-object v0, v6, v7

    aget-object v1, v0, v5

    aget-object v0, v6, v7

    aget-object v2, v0, v8

    aget-object v0, v6, v7

    aget-object v3, v0, v9

    aget-object v0, v6, v7

    aget-object v4, v0, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->addIntoPolicyVTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 708
    :cond_1
    return-void
.end method

.method private setDebuggingRomPolicyInNeed(Z)V
    .locals 11
    .parameter "hasDataInDB"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 727
    invoke-static {}, Lcom/htc/utils/ulog/Util;->isDebuggingPolicyEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 728
    invoke-static {}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->getDebugPolicy()[[Ljava/lang/String;

    move-result-object v6

    .line 729
    .local v6, debuggingPolicy:[[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 730
    if-eqz p1, :cond_0

    .line 731
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    aget-object v1, v6, v7

    aget-object v1, v1, v5

    aget-object v2, v6, v7

    aget-object v2, v2, v8

    aget-object v3, v6, v7

    aget-object v3, v3, v9

    aget-object v4, v6, v7

    aget-object v4, v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 729
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 733
    :cond_0
    aget-object v0, v6, v7

    aget-object v1, v0, v5

    aget-object v0, v6, v7

    aget-object v2, v0, v8

    aget-object v0, v6, v7

    aget-object v3, v0, v9

    aget-object v0, v6, v7

    aget-object v4, v0, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->addIntoPolicyVTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 736
    .end local v6           #debuggingPolicy:[[Ljava/lang/String;
    .end local v7           #i:I
    :cond_1
    return-void
.end method

.method private setPolicyInternal(Landroid/os/Bundle;ZZ)Z
    .locals 20
    .parameter "policy"
    .parameter "isSIE"
    .parameter "hasDataInDB"

    .prologue
    .line 634
    const/16 v19, 0x0

    .line 635
    .local v19, nChanged:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    if-eqz v1, :cond_7

    .line 636
    const-string v2, ""

    .local v2, _appid:Ljava/lang/String;
    const-string v3, ""

    .local v3, _category:Ljava/lang/String;
    const-string v4, ""

    .local v4, _key:Ljava/lang/String;
    const-string v5, ""

    .line 637
    .local v5, _value:Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, _appBundle:Landroid/os/Bundle;
    const/4 v9, 0x0

    .local v9, _cateBundle:Landroid/os/Bundle;
    const/4 v14, 0x0

    .line 638
    .local v14, _keyBundle:Landroid/os/Bundle;
    const/4 v11, 0x0

    .local v11, _categorySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 639
    .local v16, _keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, _categoryIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v15, 0x0

    .line 640
    .local v15, _keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const-wide/16 v6, -0x1

    .line 641
    .local v6, _endTime:J
    invoke-virtual/range {p1 .. p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v17

    .line 642
    .local v17, _set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v17, :cond_7

    .line 643
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 644
    .local v18, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    if-eqz v18, :cond_7

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 645
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #_appid:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 646
    .restart local v2       #_appid:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 647
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    .line 648
    if-eqz v8, :cond_0

    .line 649
    invoke-virtual {v8}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    .line 650
    if-eqz v11, :cond_0

    .line 651
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 652
    :cond_1
    :goto_0
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .end local v3           #_category:Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 654
    .restart local v3       #_category:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 655
    invoke-virtual {v8, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    .line 656
    if-eqz v9, :cond_1

    .line 657
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v16

    .line 658
    if-eqz v16, :cond_1

    .line 659
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    move-wide v12, v6

    .line 660
    .end local v6           #_endTime:J
    .local v12, _endTime:J
    :cond_2
    :goto_1
    if-eqz v15, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 661
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #_key:Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 662
    .restart local v4       #_key:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 663
    if-eqz p2, :cond_5

    .line 664
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 665
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 666
    if-nez p3, :cond_3

    move-object/from16 v1, p0

    move/from16 v6, p2

    .line 667
    invoke-direct/range {v1 .. v6}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->addIntoPolicyVTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v1

    add-int v19, v19, v1

    goto :goto_1

    .line 669
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    const-wide/16 v6, -0x1

    invoke-virtual/range {v1 .. v7}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    :goto_2
    add-int v19, v19, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 673
    :cond_5
    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 674
    if-eqz v14, :cond_2

    .line 675
    invoke-virtual {v14, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 676
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 677
    const-string v1, "due_date"

    invoke-virtual {v14, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 678
    .end local v12           #_endTime:J
    .restart local v6       #_endTime:J
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    invoke-virtual/range {v1 .. v7}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_3
    add-int v19, v19, v1

    move-wide v12, v6

    .end local v6           #_endTime:J
    .restart local v12       #_endTime:J
    goto :goto_1

    .end local v12           #_endTime:J
    .restart local v6       #_endTime:J
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 694
    .end local v2           #_appid:Ljava/lang/String;
    .end local v3           #_category:Ljava/lang/String;
    .end local v4           #_key:Ljava/lang/String;
    .end local v5           #_value:Ljava/lang/String;
    .end local v6           #_endTime:J
    .end local v8           #_appBundle:Landroid/os/Bundle;
    .end local v9           #_cateBundle:Landroid/os/Bundle;
    .end local v10           #_categoryIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v11           #_categorySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14           #_keyBundle:Landroid/os/Bundle;
    .end local v15           #_keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v16           #_keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v17           #_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v18           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    if-lez v19, :cond_8

    const/4 v1, 0x1

    :goto_4
    return v1

    :cond_8
    const/4 v1, 0x0

    goto :goto_4

    .restart local v2       #_appid:Ljava/lang/String;
    .restart local v3       #_category:Ljava/lang/String;
    .restart local v4       #_key:Ljava/lang/String;
    .restart local v5       #_value:Ljava/lang/String;
    .restart local v8       #_appBundle:Landroid/os/Bundle;
    .restart local v9       #_cateBundle:Landroid/os/Bundle;
    .restart local v10       #_categoryIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v11       #_categorySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v12       #_endTime:J
    .restart local v14       #_keyBundle:Landroid/os/Bundle;
    .restart local v15       #_keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v16       #_keySet:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v17       #_set:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v18       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    move-wide v6, v12

    .end local v12           #_endTime:J
    .restart local v6       #_endTime:J
    goto/16 :goto_0
.end method

.method private setUserProfilingPolicy(Z)V
    .locals 11
    .parameter "hasDataInDB"

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 715
    invoke-static {}, Lcom/htc/utils/ulog/Util;->supportUserProfiling()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    invoke-static {}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->getUPPolicy()[[Ljava/lang/String;

    move-result-object v6

    .line 717
    .local v6, UPPolicy:[[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v0, v6

    if-ge v7, v0, :cond_1

    .line 718
    if-eqz p1, :cond_0

    .line 719
    iget-object v0, p0, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->mDBHelper:Lcom/htc/server/ulog/DatabaseHelper;

    aget-object v1, v6, v7

    aget-object v1, v1, v5

    aget-object v2, v6, v7

    aget-object v2, v2, v8

    aget-object v3, v6, v7

    aget-object v3, v3, v9

    aget-object v4, v6, v7

    aget-object v4, v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/htc/server/ulog/DatabaseHelper;->InsertPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 721
    :cond_0
    aget-object v0, v6, v7

    aget-object v1, v0, v5

    aget-object v0, v6, v7

    aget-object v2, v0, v8

    aget-object v0, v6, v7

    aget-object v3, v0, v9

    aget-object v0, v6, v7

    aget-object v4, v0, v10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->addIntoPolicyVTable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_1

    .line 724
    .end local v6           #UPPolicy:[[Ljava/lang/String;
    .end local v7           #i:I
    :cond_1
    return-void
.end method


# virtual methods
.method public loadProvisionPolicy(Landroid/os/Bundle;)Z
    .locals 2
    .parameter "policy"

    .prologue
    .line 597
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[loadProvisionPolicy]Provisioning, incrementally insert policies."

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->setPolicyInternal(Landroid/os/Bundle;ZZ)Z

    move-result v0

    return v0
.end method

.method public loadSIEPolicies(Landroid/os/Bundle;Z)V
    .locals 2
    .parameter "bundle"
    .parameter "isSIE"

    .prologue
    .line 539
    if-eqz p2, :cond_0

    .line 541
    if-eqz p1, :cond_1

    .line 544
    invoke-direct {p0, p1, p2}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadWithBundleAndSIE(Landroid/os/Bundle;Z)Z

    .line 545
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[setPolicyAndNotify(SIE)] setPolicyInternal() succeeds => notify UPolicy listener and broadcast to others"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/htc/server/ulog/PolicyStore$DefaultPolicyLoader;->loadDefaultPoliciesWithoutBundle()Z

    .line 551
    const-string v0, "UserBehaviorLoggingService"

    const-string v1, "[setPolicyAndNotify] [no SIE customization table] set default policies => notify UPolicy listener and broadcast to others"

    invoke-static {v0, v1}, Lcom/htc/server/ulog/Utils;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
