.class public final Lcom/android/internal/telephony/HtcIccPbkEntryCache;
.super Landroid/os/Handler;
.source "HtcIccPbkEntryCache.java"

# interfaces
.implements Lcom/android/internal/telephony/IccConstants;
.implements Lcom/android/internal/telephony/HtcIccPbkEntryCacheInterface;


# static fields
.field private static final ADN_ALPHA_TAG_LENGTH:I = 0x0

.field private static final ADN_NUMBER_LENGTH:I = 0x1

.field private static final ADN_RECORDS_CAPACITY:I = 0x2

.field private static final ANR_ENTRIES_PER_PBK:I = 0x3

.field static final ANR_ENTRY_INDEX_1:I = 0x0

.field static final ANR_ENTRY_INDEX_2:I = 0x1

#the value of this static final field might be set in the static constructor
.field static final DBG:Z = false

.field private static final EMAIL_ENTRIES_PER_PBK:I = 0x4

.field static final ERROR_ANR1_FULL:I = 0x2

.field static final ERROR_ANR2_FULL:I = 0x4

.field static final ERROR_EMAIL_FULL:I = 0x1

.field static final ERROR_NONE:I = 0x0

.field static final ERROR_UNKNOWN:I = 0x8

.field private static final EVENT_ADD_PB_ENTRY_DONE:I = 0x4

.field private static final EVENT_DELETE_PB_ENTRY_DONE:I = 0x6

.field private static final EVENT_GET_PB_LENGTH_DONE:I = 0x1

.field private static final EVENT_GET_PB_USED_NUM_DONE:I = 0x2

.field private static final EVENT_LOAD_PB_2G_EXT1_DONE:I = 0x12

.field private static final EVENT_LOAD_PB_ADN_DONE:I = 0x8

.field private static final EVENT_LOAD_PB_ANR_DONE:I = 0xc

.field private static final EVENT_LOAD_PB_EMAIL_DONE:I = 0xa

.field private static final EVENT_LOAD_PB_ENTRIES_DONE:I = 0x3

.field private static final EVENT_LOAD_PB_EXT1_DONE:I = 0xb

.field private static final EVENT_LOAD_PB_IAP_DONE:I = 0x9

.field private static final EVENT_LOAD_PB_PBR_DONE:I = 0x7

.field private static final EVENT_RELOAD_PB_EXT1_DONE:I = 0x11

.field private static final EVENT_UPDATE_ANR_DONE:I = 0x10

.field private static final EVENT_UPDATE_EMAIL_DONE:I = 0xe

.field private static final EVENT_UPDATE_EXT1_DONE:I = 0xf

.field private static final EVENT_UPDATE_IAP_DONE:I = 0xd

.field private static final EVENT_UPDATE_PB_ENTRY_DONE:I = 0x5

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final IAP_ENTRY_ANR_1_INDEX:I = 0x0

.field static final IAP_ENTRY_ANR_2_INDEX:I = 0x1

.field static final IAP_ENTRY_EMAIL_INDEX:I = 0x2

.field static final LOG_TAG:Ljava/lang/String; = "HtcIccPbkEntryCache"

.field static final MAX_NUM_ANR_PER_PBK_ENTRY:I = 0x2

.field private static final QUERY_SIM_CONTACT_FILE_TIMESTAMP:Ljava/lang/String; = "query_sim_contact_file_timestamp"

.field static final SDBG:Z


# instance fields
.field mANR_swap:Z

.field mAnrFileList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAnrRecordLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/AnrRecord;",
            ">;>;>;"
        }
    .end annotation
.end field

.field mDropSIMTimeStamp:J

.field mEmailFileList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mEmailRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/EmailRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mExt1RecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/HtcExt1Record;",
            ">;"
        }
    .end annotation
.end field

.field mIAPRecordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/IAPRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mIap_Updatedata:[B

.field mMsgNumber:I

.field mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

.field mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private mRecordNums:I

.field mSimPbkEntryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation
.end field

.field mSimPbkWaiters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field mSupportAnr:[Z

.field mSupportEmail:Z

.field private mTotal:I

.field private mUsed:I

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field misloading:Z

.field pollingContext:[I

.field reloadExt1:Z

.field reloadExt1_count:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->DBG:Z

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    .line 151
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    .line 159
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->misloading:Z

    .line 162
    const/4 v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    .line 163
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 164
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    .line 165
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    .line 167
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    .line 174
    iput-object p1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 175
    return-void
.end method

.method private addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 8
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v4, 0x1

    .line 2055
    const-string v0, "addAnrRecord()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2056
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-lez v0, :cond_1

    .line 2057
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v4, :cond_1

    .line 2058
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2060
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v7, v0, v1

    .line 2061
    .local v7, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v7, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2062
    .local v3, efid:I
    if-eqz v3, :cond_1

    .line 2064
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    mul-int/2addr v1, v7

    sub-int v6, v0, v1

    .line 2066
    .local v6, adnRecordNumber:I
    const/4 v2, 0x0

    .line 2067
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v4, :cond_2

    .line 2068
    invoke-virtual {p0, v7, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v2

    .line 2070
    if-eqz v2, :cond_0

    .line 2071
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 2095
    :cond_0
    :goto_0
    if-eqz v2, :cond_6

    .line 2096
    const/4 v0, 0x0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2097
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2098
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2099
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2101
    iget v1, v2, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    const/16 v0, 0x10

    invoke-virtual {p0, v0, v7, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2112
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #num:I
    :cond_1
    :goto_1
    return-void

    .line 2075
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v7       #num:I
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v7, v0, :cond_5

    .line 2076
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_4

    .line 2078
    if-lez v6, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v6, v0, :cond_3

    .line 2081
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    add-int/lit8 v1, v6, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    goto :goto_0

    .line 2084
    :cond_3
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2088
    :cond_4
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "anrindex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2091
    :cond_5
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2106
    :cond_6
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "Can not find empty ANR record"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I
    .locals 7
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "num"
    .parameter "entry"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1742
    const/4 v2, 0x0

    .line 1743
    .local v2, error:I
    iput-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    .line 1745
    iget-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v5, v5, v3

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v5, v5, v6

    if-nez v5, :cond_0

    .line 1809
    :goto_0
    return v3

    .line 1749
    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v5, :cond_1

    move v3, v4

    .line 1750
    goto :goto_0

    .line 1753
    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v5

    if-nez v5, :cond_2

    move v3, v4

    .line 1754
    goto :goto_0

    .line 1758
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1759
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    if-ne v4, v6, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_3

    .line 1760
    iget v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-nez v4, :cond_3

    .line 1761
    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v1

    .line 1762
    .local v1, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    if-nez v1, :cond_3

    .line 1763
    add-int/lit8 v2, v2, 0x1

    .line 1770
    .end local v1           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1771
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v4, v4, v3

    if-ne v4, v6, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1772
    iget-object v4, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, v3

    if-nez v4, :cond_4

    .line 1773
    invoke-virtual {p0, p4, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1774
    .local v0, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_4

    .line 1775
    add-int/lit8 v2, v2, 0x2

    .line 1781
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1782
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_5

    .line 1783
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_5

    .line 1784
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1785
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-nez v0, :cond_5

    .line 1786
    add-int/lit8 v2, v2, 0x4

    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_5
    :goto_1
    move v3, v2

    .line 1809
    goto :goto_0

    .line 1791
    :cond_6
    const/4 v3, 0x2

    if-eq v2, v3, :cond_7

    const/4 v3, 0x3

    if-ne v2, v3, :cond_8

    .line 1792
    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v3, v3, v6

    if-ne v3, v6, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v3, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v3

    if-ne v3, v6, :cond_8

    .line 1794
    iget-object v3, p5, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v3, v3, v6

    if-nez v3, :cond_9

    .line 1795
    invoke-virtual {p0, p4, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;

    move-result-object v0

    .line 1796
    .restart local v0       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    if-eqz v0, :cond_8

    .line 1797
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    .line 1804
    .end local v0           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_8
    :goto_2
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    if-ne v3, v6, :cond_5

    .line 1805
    add-int/lit8 v2, v2, -0x2

    goto :goto_1

    .line 1800
    :cond_9
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    goto :goto_2
.end method

.method private checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter "number"
    .parameter "number1"
    .parameter "number2"

    .prologue
    const/16 v6, 0x2b

    const/4 v5, 0x0

    const/4 v4, -0x1

    const/16 v1, 0x8

    const/4 v3, 0x1

    .line 1708
    const/4 v0, 0x0

    .line 1710
    .local v0, error:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1711
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1738
    .end local v0           #error:I
    :cond_0
    :goto_0
    return v0

    .line 1716
    .restart local v0       #error:I
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v2, v2, v3

    if-ne v2, v3, :cond_4

    .line 1717
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-nez v2, :cond_3

    move v0, v1

    .line 1718
    goto :goto_0

    .line 1721
    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 1722
    goto :goto_0

    .line 1726
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_5

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1727
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    move v0, v1

    .line 1728
    goto :goto_0

    .line 1732
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v2, v2, v5

    if-ne v2, v3, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1733
    invoke-virtual {p3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v4, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_0

    move v0, v1

    .line 1734
    goto :goto_0
.end method

.method private getPbkEntryListIfLoaded()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/PhoneBookEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private handleExt1loaded(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1179
    const-string v2, "handleExt1loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1183
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1184
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 1185
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 1186
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1187
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1189
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    move-object v1, v2

    check-cast v1, Ljava/util/ArrayList;

    .line 1190
    .local v1, ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    iput-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    .line 1192
    const/16 v2, 0x28

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 1198
    .end local v1           #ext1RecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/HtcExt1Record;>;"
    :goto_0
    iput-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    .line 1199
    iput v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 1200
    return-void

    .line 1194
    :cond_1
    const/16 v2, 0x14

    invoke-direct {p0, v3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 1195
    const-string v2, "HtcIccPbkEntryCache"

    const-string v3, "Failed to load EF_EXT1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handlePollPBResult(ILandroid/os/AsyncResult;)V
    .locals 5
    .parameter "what"
    .parameter "ar"

    .prologue
    .line 1204
    iget-object v3, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    if-eq v3, v4, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1209
    const-string v3, "handlePollPBResult()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1211
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v3, :cond_0

    .line 1212
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1214
    :pswitch_0
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    .line 1216
    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    .line 1217
    .local v2, temp:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v2, :cond_0

    .line 1219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() temp.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1222
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1223
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1225
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollPBResult() entry.index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1227
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 1228
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    iget v4, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1222
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1212
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method private notifySimPbkWaiter()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1160
    const-string v2, "notifySimPbkWaiter"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1162
    new-instance v0, Landroid/os/AsyncResult;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-direct {v0, v4, v2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 1163
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 1165
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 1166
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1169
    .local v1, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1170
    :cond_0
    const-string v2, "phone_type"

    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    :cond_1
    invoke-static {v1, v4}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1176
    .end local v1           #intent:Landroid/content/Intent;
    :cond_2
    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 7
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    const/4 v6, 0x0

    .line 2277
    if-nez p1, :cond_0

    .line 2288
    :goto_0
    return-void

    .line 2281
    :cond_0
    const-string v3, "HtcIccPbkEntryCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "notifyWaiters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2282
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 2283
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 2284
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2285
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2282
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2287
    .end local v2           #waiter:Landroid/os/Message;
    :cond_1
    iput-boolean v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->misloading:Z

    goto :goto_0
.end method

.method private pollPBList()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1296
    const/4 v3, 0x1

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    .line 1297
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    aput v5, v3, v5

    .line 1299
    const/4 v2, 0x0

    .local v2, start:I
    const/4 v0, 0x0

    .line 1301
    .local v0, end:I
    const-string v3, "pollPBList()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1303
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    if-ge v0, v3, :cond_5

    .line 1304
    add-int/lit8 v2, v0, 0x1

    .line 1305
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->CT_CONFIG()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1306
    add-int/lit8 v0, v2, 0x0

    .line 1316
    :goto_1
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    if-le v0, v3, :cond_0

    .line 1317
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    .line 1319
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    aget v4, v3, v5

    add-int/lit8 v4, v4, 0x1

    aput v4, v3, v5

    .line 1320
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1323
    .local v1, response:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v3, :cond_4

    .line 1324
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v2, v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookEntries(IILandroid/os/Message;)V

    .line 1329
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto :goto_0

    .line 1307
    .end local v1           #response:Landroid/os/Message;
    :cond_1
    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x70

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0xe4

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x4a

    if-eq v3, v4, :cond_2

    sget-short v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    const/16 v4, 0x241

    if-ne v3, v4, :cond_3

    .line 1311
    :cond_2
    add-int/lit8 v0, v2, 0x4

    goto :goto_1

    .line 1313
    :cond_3
    add-int/lit8 v0, v2, 0xa

    goto :goto_1

    .line 1326
    .restart local v1       #response:Landroid/os/Message;
    :cond_4
    const-string v3, "mPhone is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto :goto_2

    .line 1331
    .end local v1           #response:Landroid/os/Message;
    :cond_5
    return-void
.end method

.method private reloadEFEXT1()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1142
    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    if-ne v1, v2, :cond_0

    .line 1143
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_0

    .line 1144
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v1

    if-ne v1, v2, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v2, 0xc2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v0

    .line 1146
    .local v0, efid:I
    if-eqz v0, :cond_0

    .line 1147
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_1

    .line 1148
    new-instance v1, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v2, 0x11

    invoke-virtual {p0, v2, v3, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    .line 1157
    .end local v0           #efid:I
    :cond_0
    :goto_0
    return-void

    .line 1151
    .restart local v0       #efid:I
    :cond_1
    const-string v1, "mPhone is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private sLog(Ljava/lang/String;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 2356
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 2291
    if-eqz p1, :cond_0

    .line 2292
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 2293
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2294
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 2296
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0
    .parameter "response"
    .parameter "result"
    .parameter "ex"

    .prologue
    .line 2299
    if-nez p1, :cond_0

    .line 2305
    :goto_0
    return-void

    .line 2303
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 2304
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private setLocalMemberToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2759
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    .line 2760
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    .line 2761
    iput v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUsed:I

    .line 2762
    iput-boolean v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    .line 2763
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aput-boolean v1, v0, v1

    .line 2764
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aput-boolean v1, v0, v2

    .line 2765
    iput-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->misloading:Z

    .line 2766
    return-void
.end method

.method private setSIMSystemProperties(II)V
    .locals 5
    .parameter "tag"
    .parameter "value"

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2684
    const/4 v0, 0x0

    .line 2685
    .local v0, propertyName:Ljava/lang/String;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2686
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2753
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 2754
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    :cond_2
    return-void

    .line 2688
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 2689
    const-string v0, "gsm.sim.alpha-tag.length"

    goto :goto_0

    .line 2690
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_4

    .line 2691
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    goto :goto_0

    .line 2692
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2693
    const-string v0, "cdma.sim.alpha-tag.length"

    goto :goto_0

    .line 2697
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_5

    .line 2698
    const-string v0, "gsm.sim.number.length"

    goto :goto_0

    .line 2699
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_6

    .line 2700
    const-string v0, "gsm.sub.icc.number.length"

    goto :goto_0

    .line 2701
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2702
    const-string v0, "cdma.sim.number.length"

    goto :goto_0

    .line 2706
    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 2707
    const-string v0, "gsm.sim.adn.records.capacity"

    goto :goto_0

    .line 2708
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_8

    .line 2709
    const-string v0, "gsm.sub.adn.records.capacity"

    goto :goto_0

    .line 2710
    :cond_8
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2711
    const-string v0, "cdma.sim.adn.records.capacity"

    goto :goto_0

    .line 2715
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 2716
    const-string v0, "gsm.sim.anr.max-no"

    goto :goto_0

    .line 2717
    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_a

    .line 2718
    const-string v0, "gsm.sub.icc.anr.max-no"

    goto/16 :goto_0

    .line 2719
    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2720
    const-string v0, "cdma.sim.anr.max-no"

    goto/16 :goto_0

    .line 2724
    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v2, :cond_b

    .line 2725
    const-string v0, "gsm.sim.email.max-no"

    goto/16 :goto_0

    .line 2726
    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v4, :cond_c

    .line 2727
    const-string v0, "gsm.sub.icc.email.max-no"

    goto/16 :goto_0

    .line 2728
    :cond_c
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 2729
    const-string v0, "cdma.sim.email.max-no"

    goto/16 :goto_0

    .line 2734
    :cond_d
    packed-switch p1, :pswitch_data_1

    goto/16 :goto_0

    .line 2736
    :pswitch_5
    const-string v0, "gsm.usim.alpha-tag.length"

    .line 2737
    goto/16 :goto_0

    .line 2739
    :pswitch_6
    const-string v0, "gsm.usim.number.length"

    .line 2740
    goto/16 :goto_0

    .line 2742
    :pswitch_7
    const-string v0, "gsm.adn.records.capacity"

    .line 2743
    goto/16 :goto_0

    .line 2745
    :pswitch_8
    const-string v0, "gsm.usim.anr.max-no"

    .line 2746
    goto/16 :goto_0

    .line 2748
    :pswitch_9
    const-string v0, "gsm.usim.email.max-no"

    goto/16 :goto_0

    .line 2686
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2734
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private setSIMSystemPropertiesToDefault()V
    .locals 2

    .prologue
    .line 2770
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 2772
    const-string v0, "gsm.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2773
    const-string v0, "gsm.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    const-string v0, "gsm.sim.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    const-string v0, "gsm.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2776
    const-string v0, "gsm.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2797
    :cond_1
    :goto_0
    return-void

    .line 2777
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 2778
    const-string v0, "gsm.sub.icc.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    const-string v0, "gsm.sub.icc.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2780
    const-string v0, "gsm.sub.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2781
    const-string v0, "gsm.sub.icc.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2782
    const-string v0, "gsm.sub.icc.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2783
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2784
    const-string v0, "cdma.sim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    const-string v0, "cdma.sim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2786
    const-string v0, "cdma.sim.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    const-string v0, "cdma.sim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2788
    const-string v0, "cdma.sim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2791
    :cond_4
    const-string v0, "gsm.usim.alpha-tag.length"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2792
    const-string v0, "gsm.usim.number.length"

    const-string v1, "20"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2793
    const-string v0, "gsm.adn.records.capacity"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    const-string v0, "gsm.usim.anr.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2795
    const-string v0, "gsm.usim.email.max-no"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "number"

    .prologue
    .line 1692
    if-nez p0, :cond_0

    .line 1693
    const/4 v4, 0x0

    .line 1704
    :goto_0
    return-object v4

    .line 1695
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 1696
    .local v2, len:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1698
    .local v3, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_2

    .line 1699
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1700
    .local v0, c:C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isNonSeparator_FDN(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1701
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1698
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1704
    .end local v0           #c:C
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V
    .locals 11
    .parameter "anrNumber"
    .parameter "entry"
    .parameter "anrEntryIndex"

    .prologue
    const/16 v5, 0xff

    const/16 v4, 0x10

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAnrRecord()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2118
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-lez v0, :cond_0

    .line 2119
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2120
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v8, v0, v1

    .line 2121
    .local v8, num:I
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, v8, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 2122
    .local v3, efid:I
    if-eqz v3, :cond_0

    .line 2124
    iget v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    mul-int/2addr v1, v8

    sub-int v6, v0, v1

    .line 2126
    .local v6, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-ne v0, v9, :cond_4

    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_3

    .line 2129
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    .line 2130
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_0

    .line 2132
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_1

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_1

    .line 2135
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2138
    .local v2, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 2139
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    .line 2143
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aput v10, v0, p3

    .line 2144
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, p3

    .line 2146
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_0

    .line 2147
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getIAPIndex(I)I

    move-result v7

    .line 2148
    .local v7, index:I
    if-ltz v7, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v7

    .line 2213
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v3           #efid:I
    .end local v6           #adnRecordNumber:I
    .end local v7           #index:I
    .end local v8           #num:I
    :cond_0
    :goto_0
    return-void

    .line 2153
    .restart local v3       #efid:I
    .restart local v6       #adnRecordNumber:I
    .restart local v8       #num:I
    :cond_1
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2158
    :cond_2
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2161
    :cond_3
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2167
    :cond_4
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eqz v0, :cond_9

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-eq v0, v5, :cond_9

    .line 2170
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v0

    if-ne v0, v9, :cond_5

    .line 2171
    invoke-virtual {p0, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getIAPIndex(I)I

    move-result v7

    .line 2172
    .restart local v7       #index:I
    if-ltz v7, :cond_5

    .line 2173
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, v0, v7

    .line 2177
    .end local v7           #index:I
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_8

    .line 2178
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p3, v0, :cond_7

    .line 2179
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v0, v0, p3

    if-lez v0, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v1, v0, :cond_6

    .line 2182
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v1, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v1, p3

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/AnrRecord;

    .line 2185
    .restart local v2       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    iput v10, v2, Lcom/android/internal/telephony/AnrRecord;->mAnrId:I

    .line 2186
    iput v6, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    .line 2187
    iput-object p1, v2, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    .line 2188
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v1, 0xc0

    invoke-virtual {v0, v8, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v0

    iput v0, v2, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    .line 2190
    iget-object v0, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v1, v0, p3

    invoke-virtual {p0, v4, v8, p3, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    move-object v0, p0

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2195
    .end local v2           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_6
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "out of anr index = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    aget v4, v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2199
    :cond_7
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "anrEntryIndex out of mAnrRecordLists.get(num).size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2202
    :cond_8
    const-string v0, "HtcIccPbkEntryCache"

    const-string v1, "num out of mAnrRecordLists.size()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2207
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    goto/16 :goto_0
.end method

.method private updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V
    .locals 11
    .parameter "email"
    .parameter "entry"

    .prologue
    const/16 v10, 0xc0

    const/16 v9, 0xe

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1814
    const-string v4, "updateEmailRecord()"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1815
    iget-boolean v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    if-ne v4, v6, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-lez v4, :cond_0

    .line 1817
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1818
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v3, v4, v5

    .line 1819
    .local v3, num:I
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v5, 0xca

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v1

    .line 1821
    .local v1, efid:I
    if-eqz v1, :cond_0

    .line 1822
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    iget v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    mul-int/2addr v5, v3

    sub-int v0, v4, v5

    .line 1824
    .local v0, adnRecordNumber:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1826
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1827
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_0

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_0

    .line 1829
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_1

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_1

    .line 1832
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 1835
    .local v2, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 1836
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    .line 1843
    iput v7, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1844
    const-string v4, ""

    iput-object v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1846
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_0

    .line 1848
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v5, -0x1

    aput-byte v5, v4, v8

    .line 1942
    .end local v0           #adnRecordNumber:I
    .end local v1           #efid:I
    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v3           #num:I
    :cond_0
    :goto_0
    return-void

    .line 1851
    .restart local v0       #adnRecordNumber:I
    .restart local v1       #efid:I
    .restart local v3       #num:I
    :cond_1
    const-string v4, "HtcIccPbkEntryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1857
    :cond_2
    const-string v4, "HtcIccPbkEntryCache"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1860
    :cond_3
    const/4 v2, 0x0

    .line 1863
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-eqz v4, :cond_7

    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 1865
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_4

    .line 1866
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 1868
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 1869
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    if-lez v4, :cond_5

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v5, v4, :cond_5

    .line 1872
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    iget v5, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .line 1874
    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 1875
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 1876
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 1881
    iget v4, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1889
    :cond_5
    const-string v4, "HtcIccPbkEntryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p2, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1894
    :cond_6
    const-string v4, "HtcIccPbkEntryCache"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1899
    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    if-ne v4, v6, :cond_9

    .line 1900
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;

    move-result-object v2

    .line 1901
    if-eqz v2, :cond_8

    .line 1902
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    iget v5, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v4, v8

    .line 1920
    :cond_8
    :goto_1
    if-eqz v2, :cond_c

    .line 1921
    iput v0, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    .line 1922
    iput-object p1, v2, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    .line 1923
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v4, v3, v10}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFSFI(II)I

    move-result v4

    iput v4, v2, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    .line 1927
    iget v4, v2, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    invoke-virtual {p0, v9, v3, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v2, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1905
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_b

    .line 1906
    if-lez v0, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v0, v4, :cond_a

    .line 1909
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    check-cast v2, Lcom/android/internal/telephony/EmailRecord;

    .restart local v2       #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    goto :goto_1

    .line 1913
    :cond_a
    const-string v4, "HtcIccPbkEntryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "out of e-mail index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1916
    :cond_b
    const-string v4, "HtcIccPbkEntryCache"

    const-string v5, "num out of mEmailRecordList.size()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1935
    :cond_c
    const-string v4, "HtcIccPbkEntryCache"

    const-string v5, "Can not find empty email record"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private updateIAP(IZ)V
    .locals 15
    .parameter "index"
    .parameter "clear"

    .prologue
    .line 1945
    const-string v11, "updateIAP()"

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1946
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_0

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1950
    :cond_0
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v11, :cond_3

    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-lez v11, :cond_3

    .line 1951
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1952
    add-int/lit8 v11, p1, -0x1

    iget v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v7, v11, v12

    .line 1954
    .local v7, num:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xc1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v3

    .line 1957
    .local v3, efid_iap:I
    if-eqz v3, :cond_9

    .line 1958
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v7, v11, :cond_8

    .line 1959
    iget v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    mul-int/2addr v11, v7

    sub-int v9, p1, v11

    .line 1961
    .local v9, recordNumber:I
    if-lez v9, :cond_7

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-gt v9, v11, :cond_7

    .line 1964
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    add-int/lit8 v12, v9, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/IAPRecord;

    .line 1967
    .local v5, iapRecord:Lcom/android/internal/telephony/IAPRecord;
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    new-array v10, v11, [B

    .line 1969
    .local v10, recordString:[B
    const/4 v1, 0x0

    .line 1970
    .local v1, doUpdate:Z
    const/4 v11, 0x1

    move/from16 v0, p2

    if-ne v0, v11, :cond_4

    .line 1971
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v11, v11

    if-ge v4, v11, :cond_1

    .line 1972
    const/4 v11, -0x1

    aput-byte v11, v10, v4

    .line 1971
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1974
    :cond_1
    const/4 v1, 0x1

    .line 2025
    .end local v4           #i:I
    :cond_2
    :goto_1
    const/4 v11, 0x1

    if-ne v1, v11, :cond_3

    .line 2026
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "num ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " doUpdate = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " iapRecord.mRecordNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2029
    const/4 v11, 0x0

    iget-object v12, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v10, v11, v12, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2033
    const/16 v11, 0xd

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v7, v12, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {p0, v9, v5, v3, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V

    .line 2050
    .end local v1           #doUpdate:Z
    .end local v3           #efid_iap:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v7           #num:I
    .end local v9           #recordNumber:I
    .end local v10           #recordString:[B
    :cond_3
    :goto_2
    return-void

    .line 1976
    .restart local v1       #doUpdate:Z
    .restart local v3       #efid_iap:I
    .restart local v5       #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .restart local v7       #num:I
    .restart local v9       #recordNumber:I
    .restart local v10       #recordString:[B
    :cond_4
    iget-object v11, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-object v14, v5, Lcom/android/internal/telephony/IAPRecord;->mRecordData:[B

    array-length v14, v14

    invoke-static {v11, v12, v10, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1979
    iget-boolean v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 1981
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/16 v12, 0xca

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 1983
    .local v2, efid:I
    if-eqz v2, :cond_5

    .line 1984
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 1986
    .local v8, position:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v12, 0x2

    aget-byte v11, v11, v12

    if-eqz v11, :cond_5

    if-lez v8, :cond_5

    .line 1987
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v13, 0x2

    aget-byte v12, v12, v13

    aput-byte v12, v10, v11

    .line 1988
    const/4 v1, 0x1

    .line 1993
    .end local v2           #efid:I
    .end local v8           #position:I
    :cond_5
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v12, 0x0

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_6

    .line 1996
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x0

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 1998
    .restart local v2       #efid:I
    if-eqz v2, :cond_6

    .line 1999
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2001
    .restart local v8       #position:I
    const/4 v11, 0x0

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getIAPIndex(I)I

    move-result v6

    .line 2002
    .local v6, index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_6

    if-lez v8, :cond_6

    .line 2003
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2004
    const/4 v1, 0x1

    .line 2009
    .end local v2           #efid:I
    .end local v6           #index_iap:I
    .end local v8           #position:I
    :cond_6
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v12, 0x1

    aget-boolean v11, v11, v12

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_2

    .line 2012
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v12, 0x1

    invoke-virtual {v11, v7, v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    .line 2014
    .restart local v2       #efid:I
    if-eqz v2, :cond_2

    .line 2015
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v11, v7, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getIAPTagNumber(II)I

    move-result v8

    .line 2017
    .restart local v8       #position:I
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getIAPIndex(I)I

    move-result v6

    .line 2018
    .restart local v6       #index_iap:I
    iget-object v11, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    aget-byte v11, v11, v6

    if-eqz v11, :cond_2

    if-lez v8, :cond_2

    .line 2019
    add-int/lit8 v11, v8, -0x1

    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    aget-byte v12, v12, v6

    aput-byte v12, v10, v11

    .line 2020
    const/4 v1, 0x1

    goto/16 :goto_1

    .line 2038
    .end local v1           #doUpdate:Z
    .end local v2           #efid:I
    .end local v5           #iapRecord:Lcom/android/internal/telephony/IAPRecord;
    .end local v6           #index_iap:I
    .end local v8           #position:I
    .end local v10           #recordString:[B
    :cond_7
    const-string v11, "HtcIccPbkEntryCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "out of mIAPRecordList.get(num).size()"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2041
    .end local v9           #recordNumber:I
    :cond_8
    const-string v11, "HtcIccPbkEntryCache"

    const-string v12, "num out of mIAPRecordList.size()"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2044
    :cond_9
    const-string v11, "HtcIccPbkEntryCache"

    const-string v12, "no EF-IAP"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method


# virtual methods
.method public addPBKEntry(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)J
    .locals 20
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "response"

    .prologue
    .line 1347
    const-string v4, "addPBKEntry()"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1349
    const-wide/16 v14, 0x0

    .line 1350
    .local v14, index:J
    const/4 v10, 0x0

    .line 1352
    .local v10, error:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v4, :cond_0

    .line 1353
    const-string v4, "mPhone null"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide/from16 v16, v14

    .line 1473
    .end local v14           #index:J
    .local v16, index:J
    :goto_0
    return-wide v16

    .line 1358
    .end local v16           #index:J
    .restart local v14       #index:J
    :cond_0
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    array-length v4, v4

    if-ge v12, v4, :cond_1

    .line 1359
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v5, 0x0

    aput-byte v5, v4, v12

    .line 1358
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1362
    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1364
    .local v18, phonenumber:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1365
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide/from16 v16, v14

    .line 1366
    .end local v14           #index:J
    .restart local v16       #index:J
    goto :goto_0

    .line 1369
    .end local v16           #index:J
    .restart local v14       #index:J
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 1371
    if-eqz v10, :cond_3

    .line 1372
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    move-wide/from16 v16, v14

    .line 1373
    .end local v14           #index:J
    .restart local v16       #index:J
    goto :goto_0

    .line 1377
    .end local v16           #index:J
    .restart local v14       #index:J
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v13

    .line 1379
    .local v13, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v4, v5, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1381
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    :goto_2
    move-wide/from16 v16, v14

    .line 1473
    .end local v14           #index:J
    .restart local v16       #index:J
    goto :goto_0

    .line 1385
    .end local v16           #index:J
    .restart local v14       #index:J
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;

    move-result-object v9

    .line 1387
    .local v9, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-nez v9, :cond_5

    .line 1388
    const-string v4, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1390
    :cond_5
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-gtz v4, :cond_6

    .line 1391
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1393
    :cond_6
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v8, v4, v5

    .line 1395
    .local v8, num:I
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    .line 1396
    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v10

    .line 1397
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    .line 1398
    move-object/from16 p4, p3

    .line 1399
    const-string p3, ""

    .line 1402
    :cond_7
    if-eqz v10, :cond_8

    .line 1403
    packed-switch v10, :pswitch_data_0

    .line 1414
    const-string v4, "error"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1411
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MemoryFull:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_2

    .line 1420
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 1421
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1427
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v5, 0x0

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_a

    .line 1428
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1431
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 1432
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v9, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->addAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1438
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1439
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateIAP(IZ)V

    .line 1448
    :cond_c
    const/16 v4, 0x2b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_d

    const/4 v11, 0x1

    .line 1450
    .local v11, hasPlus:Z
    :goto_3
    move-object/from16 v0, p1

    iput-object v0, v9, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1451
    const/16 v4, 0x2b

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1453
    if-eqz v11, :cond_e

    .line 1454
    const/16 v4, 0x91

    iput v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1460
    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    rem-int/lit16 v4, v4, 0xff

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    .line 1461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    move-object/from16 v0, p6

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1463
    const/4 v4, 0x4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6, v9}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v19

    .line 1465
    .local v19, res:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v0, v19

    invoke-interface {v4, v9, v0}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    .line 1467
    iget v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    int-to-long v14, v4

    goto/16 :goto_2

    .line 1448
    .end local v11           #hasPlus:Z
    .end local v19           #res:Landroid/os/Message;
    :cond_d
    const/4 v11, 0x0

    goto :goto_3

    .line 1456
    .restart local v11       #hasPlus:Z
    :cond_e
    const/16 v4, 0x81

    iput v4, v9, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_4

    .line 1403
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method checkSupportANR(I)Z
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method checkSupportEmail()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    return v0
.end method

.method convertEventToTag(II)I
    .locals 1
    .parameter "event"
    .parameter "index"

    .prologue
    const/4 v0, 0x1

    .line 2586
    packed-switch p1, :pswitch_data_0

    .line 2600
    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2588
    :pswitch_0
    const/16 v0, 0xc1

    goto :goto_0

    .line 2590
    :pswitch_1
    const/16 v0, 0xca

    goto :goto_0

    .line 2592
    :pswitch_2
    const/16 v0, 0xc2

    goto :goto_0

    .line 2594
    :pswitch_3
    if-nez p2, :cond_1

    .line 2595
    const/4 v0, 0x0

    goto :goto_0

    .line 2596
    :cond_1
    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 2586
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public deletePBKEntry(ILandroid/os/Message;)V
    .locals 9
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1485
    const-string v3, "deletePBKEntry()"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1487
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v3, :cond_0

    .line 1488
    const-string v3, "mPhone null"

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1492
    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    .line 1494
    .local v1, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v3, v4, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1496
    const-string v3, "error"

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1554
    :goto_0
    return-void

    .line 1500
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8

    .line 1501
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v4, p1, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1503
    .local v0, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v0, :cond_2

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-gtz v3, :cond_3

    .line 1504
    :cond_2
    const-string v3, "error"

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1509
    :cond_3
    iget-boolean v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    if-ne v3, v5, :cond_4

    .line 1510
    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1516
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v3, v3, v8

    if-ne v3, v5, :cond_5

    .line 1517
    invoke-direct {p0, v6, v0, v8}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1520
    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    aget-boolean v3, v3, v5

    if-ne v3, v5, :cond_6

    .line 1521
    invoke-direct {p0, v6, v0, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1527
    :cond_6
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1528
    iget v3, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateIAP(IZ)V

    .line 1535
    :cond_7
    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    rem-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    .line 1536
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    invoke-virtual {v3, v4, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1538
    new-instance v0, Lcom/android/internal/telephony/PhoneBookEntry;

    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-direct {v0}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 1539
    .restart local v0       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iput-object v6, v0, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1540
    iput-object v6, v0, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1541
    iput v7, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1542
    iput v7, v0, Lcom/android/internal/telephony/PhoneBookEntry;->hidden:I

    .line 1543
    iput v7, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adtype:I

    .line 1544
    iput p1, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 1545
    const/4 v3, 0x6

    iget v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    invoke-virtual {p0, v3, v4, p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    .line 1547
    .local v2, res:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    goto :goto_0

    .line 1550
    .end local v0           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v2           #res:Landroid/os/Message;
    :cond_8
    const-string v3, "HtcIccPbkEntryCache"

    const-string v4, "mSimPbkEntryList = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1551
    const-string v3, "error"

    invoke-direct {p0, p2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2624
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 2625
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v7, :cond_0

    .line 2626
    const-string v4, "HtcIccPbkEntryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2629
    new-instance v1, Ljava/lang/Exception;

    const-string v4, "SIM Phonebook Entries have been droped."

    invoke-direct {v1, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2630
    .local v1, ex:Ljava/lang/Exception;
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v8, v8, v1}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 2631
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 2635
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v1           #ex:Ljava/lang/Exception;
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    if-eqz v4, :cond_3

    .line 2636
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lt v4, v7, :cond_3

    .line 2637
    const-string v4, "HtcIccPbkEntryCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dispose()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2638
    const/4 v2, 0x0

    .local v2, msgNum:I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-gt v2, v4, :cond_3

    .line 2639
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    .line 2640
    .local v3, response:Landroid/os/Message;
    if-eqz v3, :cond_2

    .line 2641
    iget v4, v3, Landroid/os/Message;->what:I

    if-eqz v4, :cond_1

    .line 2642
    const-string v4, "error"

    invoke-direct {p0, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 2644
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 2638
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2649
    .end local v2           #msgNum:I
    .end local v3           #response:Landroid/os/Message;
    :cond_3
    return-void
.end method

.method public dropSimPbkEntries()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2373
    const-string v1, "HtcIccPbkEntryCache"

    const-string v2, "dropSimPbkEntries()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2375
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    .line 2377
    const-string v1, "HtcIccPbkEntryCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDropSIMTimeStamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    invoke-virtual {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->dispose()V

    .line 2381
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setLocalMemberToDefault()V

    .line 2383
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemPropertiesToDefault()V

    .line 2386
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v1, :cond_0

    .line 2387
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_CONTACTS_READY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2388
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    .line 2391
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 2392
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2393
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 2395
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 2396
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2399
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 2400
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2404
    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 2405
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2406
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    .line 2409
    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v1, :cond_5

    .line 2410
    iput-object v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 2413
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    if-eqz v1, :cond_6

    .line 2414
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2417
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    .line 2418
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2421
    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    .line 2422
    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2426
    :cond_8
    return-void
.end method

.method getFirstEmptyAnrRecord(II)Lcom/android/internal/telephony/AnrRecord;
    .locals 4
    .parameter "num"
    .parameter "anrEntryIndex"

    .prologue
    const/4 v3, 0x0

    .line 2256
    const/4 v0, 0x0

    .line 2258
    .local v0, entry:Lcom/android/internal/telephony/AnrRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2272
    :goto_0
    return-object v2

    .line 2260
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p2, :cond_2

    move-object v2, v3

    .line 2261
    goto :goto_0

    .line 2263
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 2264
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/AnrRecord;
    check-cast v0, Lcom/android/internal/telephony/AnrRecord;

    .line 2266
    .restart local v0       #entry:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    .line 2267
    goto :goto_0

    .line 2263
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move-object v2, v3

    .line 2272
    goto :goto_0
.end method

.method getFirstEmptyEmailRecord(I)Lcom/android/internal/telephony/EmailRecord;
    .locals 4
    .parameter "num"

    .prologue
    const/4 v3, 0x0

    .line 2238
    const/4 v0, 0x0

    .line 2240
    .local v0, entry:Lcom/android/internal/telephony/EmailRecord;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, p1, :cond_1

    :cond_0
    move-object v2, v3

    .line 2252
    :goto_0
    return-object v2

    .line 2243
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 2244
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entry:Lcom/android/internal/telephony/EmailRecord;
    check-cast v0, Lcom/android/internal/telephony/EmailRecord;

    .line 2246
    .restart local v0       #entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v0}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 2247
    goto :goto_0

    .line 2243
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object v2, v3

    .line 2252
    goto :goto_0
.end method

.method getFirstEmptyPbkRecord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/PhoneBookEntry;
    .locals 8
    .parameter "number1"
    .parameter "number2"
    .parameter "emailaddress"

    .prologue
    const/4 v7, 0x0

    .line 2216
    const/4 v5, 0x0

    .line 2217
    .local v5, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v7

    .line 2234
    :goto_0
    return-object v0

    .line 2220
    :cond_1
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    .line 2221
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    check-cast v5, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 2222
    .restart local v5       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v4, v0, v1

    .line 2223
    .local v4, num:I
    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 2224
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v5

    .line 2225
    goto :goto_0

    .line 2227
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v4, v0, :cond_3

    .line 2228
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    add-int/2addr v0, v6

    iget v1, v5, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    sub-int v6, v0, v1

    .line 2220
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v4           #num:I
    :cond_4
    move-object v0, v7

    .line 2234
    goto :goto_0
.end method

.method getIAPIndex(I)I
    .locals 1
    .parameter "anrEntryIndex"

    .prologue
    .line 2605
    packed-switch p1, :pswitch_data_0

    .line 2611
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2607
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2609
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2605
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextEvent(III)I
    .locals 5
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    const/4 v4, 0x1

    .line 2552
    const/4 v0, 0x0

    .line 2553
    .local v0, nextEvent:I
    invoke-virtual {p0, p1, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->convertEventToTag(II)I

    move-result v1

    .line 2554
    .local v1, tag:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v2, :cond_0

    .line 2555
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 2556
    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    move p1, v0

    .line 2582
    .end local p1
    :cond_1
    :goto_1
    return p1

    .line 2560
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2563
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-eqz v2, :cond_3

    .line 2564
    const/16 p1, 0x9

    goto :goto_1

    .line 2567
    :cond_3
    const/16 v2, 0xa

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v0

    .line 2570
    goto :goto_0

    .line 2574
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v2, p2, v1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v2

    if-nez v2, :cond_1

    .line 2577
    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2, p2, p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v0

    goto :goto_0

    .line 2556
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 42
    .parameter "msg"

    .prologue
    .line 198
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    packed-switch v37, :pswitch_data_0

    .line 1139
    :cond_0
    :goto_0
    return-void

    .line 200
    :pswitch_0
    const-string v37, "EVENT_LOAD_PB_PBR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    if-nez v37, :cond_1

    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto :goto_0

    .line 207
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v37, v0

    if-nez v37, :cond_2

    .line 208
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto :goto_0

    .line 212
    :cond_2
    const/4 v13, 0x0

    .line 213
    .local v13, efid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xc0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v13

    .line 220
    :cond_3
    if-nez v13, :cond_4

    .line 221
    const/16 v13, 0x6f3a

    .line 222
    const/16 v37, 0x4

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 225
    :cond_4
    new-instance v29, Landroid/os/Bundle;

    invoke-direct/range {v29 .. v29}, Landroid/os/Bundle;-><init>()V

    .line 226
    .local v29, queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v38

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v37, v0

    const/16 v38, 0x8

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v0, v13, v1}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 232
    .end local v13           #efid:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    :pswitch_1
    const-string v37, "EVENT_LOAD_PB_ADN_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 233
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    .line 234
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/os/AsyncResult;

    move-object/from16 v11, v37

    check-cast v11, Landroid/os/AsyncResult;

    .line 235
    .local v11, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 237
    .restart local v13       #efid:I
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    .line 239
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 241
    .local v30, queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    move-wide/from16 v37, v0

    cmp-long v37, v30, v37

    if-gez v37, :cond_5

    .line 242
    const-string v37, "EVENT_LOAD_PB_IAP_DONE: queryTimeStamp < mDropSIMTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 246
    :cond_5
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_a

    .line 247
    const/16 v37, 0x1

    const/16 v38, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 250
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, [I

    move-object/from16 v34, v37

    check-cast v34, [I

    .line 256
    .local v34, recordSize:[I
    move-object/from16 v0, v34

    array-length v0, v0

    move/from16 v37, v0

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_9

    .line 257
    const/16 v37, 0x0

    aget v24, v34, v37

    .line 258
    .local v24, maxAlphaTagLength:I
    const/16 v37, 0xe

    move/from16 v0, v24

    move/from16 v1, v37

    if-ge v0, v1, :cond_6

    const/16 v24, 0x0

    .line 260
    :goto_1
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "maxAlphaTagLength is "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 262
    const/16 v37, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 264
    const/16 v37, 0x2

    aget v37, v34, v37

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    .line 265
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "EF-ADN record size"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 268
    const/16 v37, 0x6f3a

    move/from16 v0, v37

    if-eq v13, v0, :cond_8

    .line 269
    const/16 v37, 0x9

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v17

    .line 270
    .local v17, event:I
    if-eqz v17, :cond_7

    .line 271
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 258
    .end local v17           #event:I
    :cond_6
    add-int/lit8 v24, v24, -0xe

    goto :goto_1

    .line 273
    .restart local v17       #event:I
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 276
    .end local v17           #event:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v37, v0

    const/16 v38, 0x6f4a

    const/16 v39, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 281
    .end local v24           #maxAlphaTagLength:I
    :cond_9
    const-string v37, "get wrong EF record size format"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 285
    .end local v34           #recordSize:[I
    :cond_a
    const-string v37, "get EF-ADN record size failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 286
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 291
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #efid:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :pswitch_2
    const-string v37, "EVENT_LOAD_PB_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 293
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 294
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/16 v17, 0x0

    .line 295
    .restart local v17       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 296
    .local v27, num:I
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    .line 298
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 299
    .restart local v30       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    move-wide/from16 v37, v0

    cmp-long v37, v30, v37

    if-gez v37, :cond_b

    .line 300
    const-string v37, "EVENT_LOAD_PB_IAP_DONE: queryTimeStamp < mDropSIMTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 305
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_14

    .line 306
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_e

    .line 307
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v21, v37

    check-cast v21, Ljava/util/ArrayList;

    .line 308
    .local v21, iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 310
    add-int/lit8 v27, v27, 0x1

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_c

    .line 312
    const/16 v37, 0x9

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v27

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    .line 317
    :goto_2
    if-eqz v17, :cond_0

    .line 318
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v26

    .line 319
    .local v26, next_event:I
    if-eqz v26, :cond_d

    .line 320
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 314
    .end local v26           #next_event:I
    :cond_c
    const/16 v17, 0xa

    goto :goto_2

    .line 323
    .restart local v26       #next_event:I
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 327
    .end local v21           #iapRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/IAPRecord;>;"
    .end local v26           #next_event:I
    :cond_e
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_IAP_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 331
    const/16 v17, 0xa

    .line 333
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "remove IAP file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xc1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v37

    if-eqz v37, :cond_f

    .line 337
    const/16 v17, 0xb

    .line 338
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xca

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 342
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    if-nez v37, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x1

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    if-eqz v37, :cond_11

    .line 343
    :cond_10
    const/16 v17, 0x0

    .line 344
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "remove ANR1 file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 347
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "remove ANR2 file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 351
    :cond_11
    if-eqz v17, :cond_13

    .line 352
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v26

    .line 353
    .restart local v26       #next_event:I
    if-eqz v26, :cond_12

    .line 354
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "next_event = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 357
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 360
    .end local v26           #next_event:I
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 364
    :cond_14
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "mPBRParser is null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 370
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v17           #event:I
    .end local v27           #num:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :pswitch_3
    const-string v37, "EVENT_LOAD_PB_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 374
    .restart local v11       #ar:Landroid/os/AsyncResult;
    const/16 v17, 0x0

    .line 375
    .restart local v17       #event:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 376
    .restart local v27       #num:I
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 378
    .restart local v13       #efid:I
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    .line 380
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 382
    .restart local v30       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    move-wide/from16 v37, v0

    cmp-long v37, v30, v37

    if-gez v37, :cond_15

    .line 383
    const-string v37, "EVENT_LOAD_PB_IAP_DONE: queryTimeStamp < mDropSIMTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 387
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_1f

    .line 388
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_1d

    .line 389
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v23, v37

    check-cast v23, Ljava/util/ArrayList;

    .line 391
    .local v23, mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    move-object/from16 v37, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_1a

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 397
    const/16 v20, 0x0

    .local v20, i:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v20

    move/from16 v1, v37

    if-ge v0, v1, :cond_1a

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/telephony/EmailRecord;

    .line 400
    .local v14, emailRecord:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v14}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_16

    .line 401
    const/4 v5, 0x0

    .line 402
    .local v5, adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_17

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    iget v0, v14, Lcom/android/internal/telephony/EmailRecord;->mAdnSFI:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v32

    .line 405
    .local v32, recNum:I
    if-lez v32, :cond_18

    .line 406
    add-int/lit8 v37, v32, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    iget v0, v14, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 410
    if-lez v5, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_18

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 413
    .local v28, pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_18

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_18

    .line 414
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 415
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "emailEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget v0, v14, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 416
    const-string v37, "Becasue the corresponding pbkEntry entry is empty, clear email entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 417
    invoke-virtual {v14}, Lcom/android/internal/telephony/EmailRecord;->clear()V

    .line 397
    .end local v5           #adnRecordNumber:I
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v32           #recNum:I
    :cond_16
    :goto_4
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_3

    .line 424
    .restart local v5       #adnRecordNumber:I
    :cond_17
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v27

    iget v0, v14, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 428
    :cond_18
    if-lez v5, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_19

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 431
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    iget v0, v14, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 432
    iget-object v0, v14, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 434
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 437
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.indexEmail = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 440
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.email = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 442
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_19
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 449
    .end local v5           #adnRecordNumber:I
    .end local v14           #emailRecord:Lcom/android/internal/telephony/EmailRecord;
    .end local v20           #i:I
    :cond_1a
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    .line 451
    const/16 v37, 0x4

    const/16 v38, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 453
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mEmailRecordList num = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 455
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mEmailRecordList size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 458
    add-int/lit8 v27, v27, 0x1

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_1c

    .line 460
    const/16 v37, 0xa

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v27

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    .line 479
    .end local v23           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :goto_5
    if-eqz v17, :cond_0

    .line 480
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v26

    .line 482
    .restart local v26       #next_event:I
    const/16 v37, 0xb

    move/from16 v0, v26

    move/from16 v1, v37

    if-eq v0, v1, :cond_1b

    .line 483
    const/16 v37, 0x1

    const/16 v38, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 484
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "ICC card does not support EXT1 file"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_1b
    if-eqz v26, :cond_1e

    .line 488
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 462
    .end local v26           #next_event:I
    .restart local v23       #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_1c
    const/16 v17, 0xb

    goto :goto_5

    .line 465
    .end local v23           #mailRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/EmailRecord;>;"
    :cond_1d
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_EMAIL_DONE Failed: num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 469
    const/16 v17, 0xb

    .line 470
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    .line 472
    const/16 v37, 0x4

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 474
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "remove E-mail file from mPbrFile.mFileIds catch"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0xca

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    goto/16 :goto_5

    .line 490
    .restart local v26       #next_event:I
    :cond_1e
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 494
    .end local v26           #next_event:I
    :cond_1f
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "mPBRParser or mSimPbkEntryList is null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 500
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #efid:I
    .end local v17           #event:I
    .end local v27           #num:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :pswitch_4
    const-string v37, "EVENT_LOAD_PB_2G_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 501
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 502
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_20

    .line 503
    const/16 v37, 0x1

    const/16 v38, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 508
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 505
    :cond_20
    const/16 v37, 0x1

    const/16 v38, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 506
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "Failed to load EF_EXT1"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 513
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    const-string v37, "EVENT_LOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 517
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    .line 519
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 521
    .restart local v30       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    move-wide/from16 v37, v0

    cmp-long v37, v30, v37

    if-gez v37, :cond_21

    .line 522
    const-string v37, "EVENT_LOAD_PB_IAP_DONE: queryTimeStamp < mDropSIMTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 526
    :cond_21
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleExt1loaded(Landroid/os/Message;)V

    .line 527
    const/16 v37, 0xc

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v17

    .line 528
    .restart local v17       #event:I
    if-eqz v17, :cond_22

    .line 529
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 531
    :cond_22
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 537
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v17           #event:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :pswitch_6
    const-string v37, "EVENT_RELOAD_PB_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 538
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleExt1loaded(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 543
    :pswitch_7
    const-string v37, "EVENT_LOAD_PB_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 545
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_33

    .line 547
    :try_start_0
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 548
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 549
    .restart local v27       #num:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 550
    .local v6, anrEntryIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v13

    .line 552
    .restart local v13       #efid:I
    iget-object v0, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/os/Bundle;

    .line 554
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    const-string v37, "query_sim_contact_file_timestamp"

    const-wide/16 v38, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v37

    move-wide/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v30

    .line 556
    .restart local v30       #queryTimeStamp:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mDropSIMTimeStamp:J

    move-wide/from16 v37, v0

    cmp-long v37, v30, v37

    if-gez v37, :cond_23

    .line 557
    const-string v37, "EVENT_LOAD_PB_IAP_DONE: queryTimeStamp < mDropSIMTimeStamp"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 701
    .end local v6           #anrEntryIndex:I
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #efid:I
    .end local v27           #num:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :catch_0
    move-exception v12

    .line 702
    .local v12, e:Ljava/lang/Exception;
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "ANR arraylist problem"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-static {v0, v1, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 561
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v6       #anrEntryIndex:I
    .restart local v11       #ar:Landroid/os/AsyncResult;
    .restart local v13       #efid:I
    .restart local v27       #num:I
    .restart local v29       #queryTimeBundle:Landroid/os/Bundle;
    .restart local v30       #queryTimeStamp:J
    :cond_23
    :try_start_1
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_32

    .line 562
    if-eqz v13, :cond_24

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v6, v0, :cond_26

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 570
    .local v7, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :goto_7
    if-eqz v7, :cond_24

    .line 571
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v38

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-ge v6, v0, :cond_27

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 580
    .end local v7           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_24
    :goto_8
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    check-cast v0, Ljava/util/ArrayList;

    move-object v10, v0

    .line 583
    .local v10, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez v6, :cond_28

    .line 584
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 588
    .local v8, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_9
    if-eqz v8, :cond_31

    .line 589
    invoke-virtual {v8, v6, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 590
    if-nez v6, :cond_29

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 599
    :goto_a
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_b
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v20

    move/from16 v1, v37

    if-ge v0, v1, :cond_2d

    .line 600
    move/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/AnrRecord;

    .line 602
    .local v9, anrRecord:Lcom/android/internal/telephony/AnrRecord;
    invoke-virtual {v9}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_25

    .line 603
    const/4 v5, 0x0

    .line 604
    .restart local v5       #adnRecordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_2a

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    iget v0, v9, Lcom/android/internal/telephony/AnrRecord;->mAdnSFI:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFADNrecNum(I)I

    move-result v32

    .line 607
    .restart local v32       #recNum:I
    if-lez v32, :cond_2b

    .line 608
    add-int/lit8 v37, v32, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v38, v0

    mul-int v37, v37, v38

    iget v0, v9, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 613
    if-lez v5, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_2b

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 616
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_2b

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/PhoneBookEntry;->isEmpty()Z

    move-result v37

    if-eqz v37, :cond_2b

    .line 617
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 618
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "ANREntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    iget v0, v9, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 619
    const-string v37, "Becasue the corresponding pbkEntry entry is empty, clear ANR entry."

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 620
    invoke-virtual {v9}, Lcom/android/internal/telephony/AnrRecord;->clear()V

    .line 599
    .end local v5           #adnRecordNumber:I
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v32           #recNum:I
    :cond_25
    :goto_c
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_b

    .line 568
    .end local v8           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v9           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .end local v10           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v20           #i:I
    :cond_26
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .restart local v7       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    goto/16 :goto_7

    .line 575
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v6, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_8

    .line 586
    .end local v7           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v10       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .restart local v8       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto/16 :goto_9

    .line 593
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_a

    .line 627
    .restart local v5       #adnRecordNumber:I
    .restart local v9       #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    .restart local v20       #i:I
    :cond_2a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v27

    iget v0, v9, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 631
    :cond_2b
    if-lez v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_2c

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 634
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v37, v0

    iget v0, v9, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    aput v38, v37, v6

    .line 635
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v9, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v37, v6

    .line 637
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.index = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 640
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.indexAnr = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v38, v0

    aget v38, v38, v6

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 644
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "pbkEntry.adnumber = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v38, v0

    aget-object v38, v38, v6

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 647
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_2c
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 653
    .end local v5           #adnRecordNumber:I
    .end local v9           #anrRecord:Lcom/android/internal/telephony/AnrRecord;
    :cond_2d
    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v6, v0, :cond_2e

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aput-boolean v38, v37, v6

    .line 655
    const/16 v37, 0x3

    add-int/lit8 v38, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 658
    :cond_2e
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mAnrRecordList num = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 660
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mAnrRecordList anrEntryIndex = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 663
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "mAnrRecordList size = "

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v38

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 666
    add-int/lit8 v6, v6, 0x1

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v37

    move/from16 v0, v37

    if-ge v6, v0, :cond_2f

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v6, v0, :cond_2f

    .line 669
    const/16 v37, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 672
    :cond_2f
    add-int/lit8 v27, v27, 0x1

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v37

    move/from16 v0, v27

    move/from16 v1, v37

    if-ge v0, v1, :cond_30

    .line 674
    const/4 v6, 0x0

    .line 675
    const/16 v37, 0xc

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2, v6}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 679
    :cond_30
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 683
    .end local v20           #i:I
    :cond_31
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 686
    .end local v8           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v10           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    :cond_32
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EVENT_LOAD_PB_ANR_DONE Failed, num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " anrEntryIndex = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, " ar.exception = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->clear()V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x1

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->removeEFId(II)V

    .line 694
    const/16 v37, 0x3

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    aput-boolean v39, v37, v38

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    move-object/from16 v37, v0

    const/16 v38, 0x1

    const/16 v39, 0x0

    aput-boolean v39, v37, v38

    .line 699
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 706
    .end local v6           #anrEntryIndex:I
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v13           #efid:I
    .end local v27           #num:I
    .end local v29           #queryTimeBundle:Landroid/os/Bundle;
    .end local v30           #queryTimeStamp:J
    :cond_33
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "mPBRParser or mSimPbkEntryList is null"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 725
    :pswitch_8
    const-string v37, "EVENT_GET_PB_USED_NUM_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 726
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 729
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_36

    .line 730
    iget-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/telephony/PhoneBookMemory;

    .line 732
    .local v22, mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "get PB length:total="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " used="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 733
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->total:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    .line 734
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookMemory;->used:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUsed:I

    .line 735
    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "get PB length:total="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, " used="

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUsed:I

    move/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 737
    const/16 v37, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 740
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_34

    .line 743
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v37, v0

    move/from16 v0, v20

    move/from16 v1, v37

    if-ge v0, v1, :cond_34

    .line 744
    new-instance v15, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v15}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 745
    .local v15, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v37, v20, 0x1

    move/from16 v0, v37

    iput v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 743
    add-int/lit8 v20, v20, 0x1

    goto :goto_d

    .line 750
    .end local v15           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v20           #i:I
    :cond_34
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v37, v0

    if-lez v37, :cond_35

    .line 751
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollPBList()V

    goto/16 :goto_0

    .line 753
    :cond_35
    const-string v37, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 754
    const/16 v37, 0x0

    move-object/from16 v0, v37

    iput-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 758
    .end local v22           #mPBMemory:Lcom/android/internal/telephony/PhoneBookMemory;
    :cond_36
    const-string v37, "Cannot get PB memory"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 761
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    .line 763
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v37, v0

    if-lez v37, :cond_38

    .line 764
    new-instance v37, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_37

    .line 767
    const/16 v20, 0x0

    .restart local v20       #i:I
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mTotal:I

    move/from16 v37, v0

    move/from16 v0, v20

    move/from16 v1, v37

    if-ge v0, v1, :cond_37

    .line 768
    new-instance v15, Lcom/android/internal/telephony/PhoneBookEntry;

    invoke-direct {v15}, Lcom/android/internal/telephony/PhoneBookEntry;-><init>()V

    .line 769
    .restart local v15       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    add-int/lit8 v37, v20, 0x1

    move/from16 v0, v37

    iput v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    add-int/lit8 v20, v20, 0x1

    goto :goto_e

    .line 774
    .end local v15           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v20           #i:I
    :cond_37
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollPBList()V

    goto/16 :goto_0

    .line 776
    :cond_38
    const-string v37, "load PB complete!! mTotal = 0"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 777
    const/16 v37, 0x0

    move-object/from16 v0, v37

    iput-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 786
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_9
    const-string v37, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 787
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 788
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_39

    .line 789
    const-string v37, "EVENT_LOAD_PB_ENTRIES_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 790
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handlePollPBResult(ILandroid/os/AsyncResult;)V

    .line 795
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v39, v37, v38

    add-int/lit8 v39, v39, -0x1

    aput v39, v37, v38

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->pollingContext:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    if-nez v37, :cond_0

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iput-object v0, v11, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 800
    const-string v37, "load Phonebook Entries Complete!! "

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 802
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v37

    if-nez v37, :cond_3a

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mIccFileHandler:Lcom/android/internal/telephony/IccFileHandler;

    move-object/from16 v37, v0

    const/16 v38, 0x6f3a

    const/16 v39, 0x8

    const/16 v40, 0x6f3a

    const/16 v41, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v39

    move/from16 v2, v40

    move/from16 v3, v41

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Lcom/android/internal/telephony/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 792
    :cond_39
    const-string v37, "Error on loading PB"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto :goto_f

    .line 806
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3b

    .line 807
    new-instance v37, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v38, v0

    invoke-direct/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0x7

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->loadEfPBRFromUsim(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 810
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1, v11}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 819
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_a
    const-string v37, "EVENT_ADD_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 820
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 821
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 822
    .local v25, msgNum:I
    iget-object v15, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 823
    .restart local v15       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Message;

    .line 825
    .local v36, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 827
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_3f

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_3e

    .line 829
    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v37, v0

    if-lez v37, :cond_0

    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_0

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 832
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_3c

    .line 833
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 835
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x91

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_3d

    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-nez v37, :cond_3d

    .line 836
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/telephony/PhoneNumberUtils;->AddPlustoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 842
    :cond_3c
    :goto_10
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 843
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    .line 844
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadEFEXT1()V

    goto/16 :goto_0

    .line 838
    :cond_3d
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    goto :goto_10

    .line 847
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_3e
    const-string v37, "mSimPbkEntryList is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 851
    :cond_3f
    const-string v37, "Cannot add PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 855
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v37, v0

    if-eqz v37, :cond_40

    .line 856
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 859
    .local v16, err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v37, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_40

    .line 860
    const-string v37, "Cannot add PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 861
    const-string v37, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 866
    .end local v16           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_40
    const-string v37, "add falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 873
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v25           #msgNum:I
    .end local v36           #response:Landroid/os/Message;
    :pswitch_b
    const-string v37, "EVENT_UPDATE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 874
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 875
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 876
    .restart local v25       #msgNum:I
    iget-object v15, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 877
    .restart local v15       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Message;

    .line 879
    .restart local v36       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 881
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_44

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_43

    .line 883
    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v37, v0

    if-lez v37, :cond_0

    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->size()I

    move-result v38

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_0

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    iget v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 886
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_41

    .line 887
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 889
    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    move/from16 v37, v0

    const/16 v38, 0x91

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_42

    .line 891
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/telephony/PhoneNumberUtils;->AddPlustoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 897
    :cond_41
    :goto_11
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 898
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    .line 899
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadEFEXT1()V

    goto/16 :goto_0

    .line 893
    :cond_42
    iget-object v0, v15, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    goto :goto_11

    .line 902
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_43
    const-string v37, "mSimPbkEntryList is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 906
    :cond_44
    const-string v37, "Cannot update PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 908
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    move/from16 v37, v0

    if-eqz v37, :cond_45

    .line 909
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    check-cast v37, Lcom/android/internal/telephony/CommandException;

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v16

    .line 912
    .restart local v16       #err:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v37, Lcom/android/internal/telephony/CommandException$Error;->PB_MEM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    move-object/from16 v0, v16

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_45

    .line 913
    const-string v37, "Cannot update PB entry PB_MEM_FULL"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 914
    const-string v37, "AdnFull"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 919
    .end local v16           #err:Lcom/android/internal/telephony/CommandException$Error;
    :cond_45
    const-string v37, "update falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 925
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v15           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v25           #msgNum:I
    .end local v36           #response:Landroid/os/Message;
    :pswitch_c
    const-string v37, "EVENT_DELETE_PB_ENTRY_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 926
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 927
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 928
    .restart local v25       #msgNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v33, v0

    .line 929
    .local v33, recordNumber:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Landroid/os/Message;

    .line 931
    .restart local v36       #response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 933
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_47

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_46

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v33, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 937
    .restart local v15       #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    invoke-virtual {v15}, Lcom/android/internal/telephony/PhoneBookEntry;->clear()V

    .line 938
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 939
    const/16 v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1:Z

    .line 940
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadEFEXT1()V

    goto/16 :goto_0

    .line 942
    .end local v15           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_46
    const-string v37, "mSimPbkEntryList is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 945
    :cond_47
    const-string v37, "Cannot delete PB entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 946
    const-string v37, "delete falied"

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 952
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v25           #msgNum:I
    .end local v33           #recordNumber:I
    .end local v36           #response:Landroid/os/Message;
    :pswitch_d
    const-string v37, "EVENT_UPDATE_IAP_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 953
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 954
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 955
    .restart local v27       #num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4a

    .line 956
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_49

    .line 957
    iget-object v15, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/IAPRecord;

    .line 958
    .local v15, entry:Lcom/android/internal/telephony/IAPRecord;
    iget v0, v15, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_48

    iget v0, v15, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_48

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIAPRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    iget v0, v15, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "IAPRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 966
    :cond_48
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "out of IAP index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/IAPRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 969
    .end local v15           #entry:Lcom/android/internal/telephony/IAPRecord;
    :cond_49
    const-string v37, "Update IAP entry failed"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :cond_4a
    const-string v37, "mPBRParser is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 978
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #num:I
    :pswitch_e
    const-string v37, "EVENT_UPDATE_EMAIL_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 980
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 981
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 983
    .restart local v27       #num:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_4f

    .line 984
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_4e

    .line 985
    iget-object v15, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/EmailRecord;

    .line 986
    .local v15, entry:Lcom/android/internal/telephony/EmailRecord;
    invoke-virtual {v15}, Lcom/android/internal/telephony/EmailRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_4b

    .line 988
    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_4d

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_4d

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 993
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v27

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 995
    .restart local v5       #adnRecordNumber:I
    if-lez v5, :cond_4c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_4c

    .line 997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 998
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_4b

    .line 999
    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->indexEmail:I

    .line 1000
    iget-object v0, v15, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/internal/telephony/PhoneBookEntry;->email:Ljava/lang/String;

    .line 1010
    .end local v5           #adnRecordNumber:I
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_4b
    :goto_12
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mAdnRecordNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mAdnRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    iget-object v0, v15, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 1017
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "EmailRecord.mEmailAddress ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v15, Lcom/android/internal/telephony/EmailRecord;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1003
    .restart local v5       #adnRecordNumber:I
    :cond_4c
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 1006
    .end local v5           #adnRecordNumber:I
    :cond_4d
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "out of E-mail index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/EmailRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_12

    .line 1022
    .end local v15           #entry:Lcom/android/internal/telephony/EmailRecord;
    :cond_4e
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "updateEmailRecord failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1025
    :cond_4f
    const-string v37, "mPBRParser or mSimPbkEntryList is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1032
    .end local v11           #ar:Landroid/os/AsyncResult;
    .end local v27           #num:I
    :pswitch_f
    const-string v37, "EVENT_UPDATE_EXT1_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1036
    .restart local v11       #ar:Landroid/os/AsyncResult;
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_50

    .line 1037
    const-string v37, "Update EF-EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1039
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 1040
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    move/from16 v37, v0

    if-nez v37, :cond_0

    .line 1041
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadEFEXT1()V

    goto/16 :goto_0

    .line 1044
    :cond_50
    const-string v37, "Cannot update EF-EXT1 entry"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1050
    .end local v11           #ar:Landroid/os/AsyncResult;
    :pswitch_10
    const-string v37, "EVENT_UPDATE_ANR_DONE"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1052
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    .line 1053
    .restart local v27       #num:I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    .line 1055
    .restart local v6       #anrEntryIndex:I
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/AsyncResult;

    .line 1056
    .restart local v11       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_59

    .line 1057
    iget-object v0, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v37, v0

    if-nez v37, :cond_58

    const/16 v37, 0x2

    move/from16 v0, v37

    if-ge v6, v0, :cond_58

    .line 1059
    iget-object v15, v11, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Lcom/android/internal/telephony/AnrRecord;

    .line 1061
    .local v15, entry:Lcom/android/internal/telephony/AnrRecord;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, -0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 1063
    invoke-virtual {v15}, Lcom/android/internal/telephony/AnrRecord;->isEmpty()Z

    move-result v37

    if-nez v37, :cond_51

    .line 1065
    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v37, v0

    if-lez v37, :cond_56

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v38

    move/from16 v1, v37

    if-gt v0, v1, :cond_56

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    move-object/from16 v0, v37

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Ljava/util/ArrayList;

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1070
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    move/from16 v37, v0

    mul-int v37, v37, v27

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v38, v0

    add-int v5, v37, v38

    .line 1072
    .restart local v5       #adnRecordNumber:I
    if-lez v5, :cond_55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v37

    if-gt v5, v0, :cond_55

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v5, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1076
    .restart local v28       #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v28, :cond_51

    .line 1077
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->indexAnr:[I

    move-object/from16 v37, v0

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v38, v0

    aput v38, v37, v6

    .line 1078
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBookEntry;->adnumber:[Ljava/lang/String;

    move-object/from16 v37, v0

    iget-object v0, v15, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v38, v0

    aput-object v38, v37, v6

    .line 1089
    .end local v5           #adnRecordNumber:I
    .end local v28           #pbkEntry:Lcom/android/internal/telephony/PhoneBookEntry;
    :cond_51
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    if-eqz v37, :cond_53

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v37

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_53

    .line 1091
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move-object/from16 v37, v0

    const/16 v38, 0xc2

    move-object/from16 v0, v37

    move/from16 v1, v27

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v13

    .line 1093
    .restart local v13       #efid:I
    if-eqz v13, :cond_53

    .line 1094
    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v19, v0

    .line 1095
    .local v19, ext1index:I
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "ext1index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    if-eqz v37, :cond_57

    .line 1097
    if-lez v19, :cond_53

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljava/util/ArrayList;->size()I

    move-result v37

    move/from16 v0, v19

    move/from16 v1, v37

    if-gt v0, v1, :cond_53

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    move-object/from16 v37, v0

    add-int/lit8 v38, v19, -0x1

    invoke-virtual/range {v37 .. v38}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/HtcExt1Record;

    .line 1099
    .local v18, ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    const/16 v37, 0xf

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    move/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    move-object/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v35

    .line 1101
    .local v35, res:Landroid/os/Message;
    iget-boolean v0, v15, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    move/from16 v37, v0

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_52

    .line 1102
    const/16 v37, 0xff

    move/from16 v0, v37

    iput v0, v15, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    .line 1103
    const/16 v37, 0x0

    move/from16 v0, v37

    iput-boolean v0, v15, Lcom/android/internal/telephony/AnrRecord;->mClearExt1Record:Z

    .line 1105
    :cond_52
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "entry.mExtRecord = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mExtRecord:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    move/from16 v37, v0

    add-int/lit8 v37, v37, 0x1

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 1107
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/HtcExt1Record;->mRecId:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v18

    move-object/from16 v3, v35

    invoke-virtual {v0, v1, v2, v13, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V

    .line 1116
    .end local v13           #efid:I
    .end local v18           #ext1Record:Lcom/android/internal/telephony/HtcExt1Record;
    .end local v19           #ext1index:I
    .end local v35           #res:Landroid/os/Message;
    :cond_53
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    move/from16 v37, v0

    if-nez v37, :cond_54

    .line 1117
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadEFEXT1()V

    .line 1119
    :cond_54
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "num = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "anrEntryIndex = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1121
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mRecordNumber = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mAdnRecordNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mAdnRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v0, v15, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v37, v0

    if-eqz v37, :cond_0

    .line 1127
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "AnrRecord.mNumber ="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget-object v0, v15, Lcom/android/internal/telephony/AnrRecord;->mNumber:Ljava/lang/String;

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1081
    .restart local v5       #adnRecordNumber:I
    :cond_55
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "update pbkEntry failed - index out of mSimPbkEntryList size"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1084
    .end local v5           #adnRecordNumber:I
    :cond_56
    const-string v37, "HtcIccPbkEntryCache"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "out of Anr index = "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    iget v0, v15, Lcom/android/internal/telephony/AnrRecord;->mRecordNumber:I

    move/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .line 1110
    .restart local v13       #efid:I
    .restart local v19       #ext1index:I
    :cond_57
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "mExt1RecordList is null, but it shall not"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    .line 1130
    .end local v13           #efid:I
    .end local v15           #entry:Lcom/android/internal/telephony/AnrRecord;
    .end local v19           #ext1index:I
    :cond_58
    const-string v37, "HtcIccPbkEntryCache"

    const-string v38, "updateAnrRecord failed"

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1133
    :cond_59
    const-string v37, "mPBRParser or mSimPbkEntryList is null"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_7
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_6
        :pswitch_4
    .end packed-switch
.end method

.method handleNextSequence(III)V
    .locals 15
    .parameter "event"
    .parameter "num"
    .parameter "index"

    .prologue
    .line 2431
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v12, :cond_1

    .line 2547
    :cond_0
    :goto_0
    return-void

    .line 2435
    :cond_1
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 2436
    .local v10, queryTimeBundle:Landroid/os/Bundle;
    const-string v12, "query_sim_contact_file_timestamp"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    invoke-virtual {v10, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2438
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v12, :cond_0

    .line 2439
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 2440
    move/from16 v0, p1

    move/from16 v1, p3

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->convertEventToTag(II)I

    move-result v11

    .line 2441
    .local v11, tag:I
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p2

    invoke-virtual {v12, v0, v11}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getEFId(II)I

    move-result v5

    .line 2442
    .local v5, efid:I
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2444
    :pswitch_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read EF-IAP num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2445
    new-instance v12, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v13, 0x9

    move/from16 v0, p2

    invoke-virtual {p0, v13, v0, v5, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Lcom/android/internal/telephony/IAPRecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto :goto_0

    .line 2450
    :pswitch_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read EF-EMAIL num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2451
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2452
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailFileList:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2453
    .local v6, fileindex:I
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_0

    .line 2454
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mEmailRecordList:Ljava/util/ArrayList;

    invoke-virtual {v13, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    move/from16 v0, p2

    invoke-virtual {v12, v0, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2457
    add-int/lit8 p2, p2, 0x1

    .line 2458
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_2

    .line 2459
    const/16 v12, 0xa

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2462
    :cond_2
    const/16 v12, 0xb

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {p0, v12, v13, v14}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getNextEvent(III)I

    move-result v9

    .line 2464
    .local v9, next_event:I
    if-eqz v9, :cond_3

    .line 2465
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v9, v12, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto/16 :goto_0

    .line 2467
    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto/16 :goto_0

    .line 2473
    .end local v6           #fileindex:I
    .end local v9           #next_event:I
    :cond_4
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v8

    .line 2474
    .local v8, inIAP:Z
    new-instance v12, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v13, 0xa

    move/from16 v0, p2

    invoke-virtual {p0, v13, v0, v5, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v5, v8, v13}, Lcom/android/internal/telephony/EmailRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2481
    .end local v8           #inIAP:Z
    :pswitch_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read EF-EXT1 num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2482
    new-instance v12, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v13, 0xb

    move/from16 v0, p2

    invoke-virtual {p0, v13, v0, v5, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v5, v13}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->loadAllFromEF(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 2487
    :pswitch_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Read EF-ANR num"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2488
    const/4 v7, 0x1

    .line 2489
    .local v7, flag:Z
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v0, p3

    if-ge v0, v12, :cond_7

    .line 2490
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrFileList:Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 2492
    .local v2, anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2493
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 2494
    .restart local v6       #fileindex:I
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/ArrayList;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 2499
    .local v4, anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    if-nez p3, :cond_8

    .line 2500
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2504
    .local v3, anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    :goto_1
    if-eqz v3, :cond_5

    .line 2505
    move/from16 v0, p3

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2506
    if-nez p3, :cond_9

    .line 2507
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2511
    :goto_2
    const/4 v7, 0x0

    .line 2514
    :cond_5
    const/4 v12, 0x2

    move/from16 v0, p3

    if-ge v0, v12, :cond_6

    .line 2515
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v13, 0x1

    aput-boolean v13, v12, p3

    .line 2516
    const/4 v12, 0x3

    add-int/lit8 v13, p3, 0x1

    invoke-direct {p0, v12, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->setSIMSystemProperties(II)V

    .line 2519
    :cond_6
    add-int/lit8 p3, p3, 0x1

    .line 2520
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getANRnums()I

    move-result v12

    move/from16 v0, p3

    if-ge v0, v12, :cond_a

    const/4 v12, 0x2

    move/from16 v0, p3

    if-ge v0, v12, :cond_a

    .line 2522
    const/16 v12, 0xc

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v12, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    .line 2536
    .end local v2           #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v3           #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    .end local v4           #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .end local v6           #fileindex:I
    :cond_7
    :goto_3
    if-eqz v7, :cond_0

    .line 2537
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v8

    .line 2538
    .restart local v8       #inIAP:Z
    new-instance v12, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v13, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v14, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v12, v13, v14}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V

    const/16 v13, 0xc

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v13, v0, v1, v10}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    invoke-virtual {v12, v5, v8, v13}, Lcom/android/internal/telephony/AnrRecordLoader;->loadAllFromEF(IZLandroid/os/Message;)V

    goto/16 :goto_0

    .line 2502
    .end local v8           #inIAP:Z
    .restart local v2       #anrFileList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v4       #anrRecordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;"
    .restart local v6       #fileindex:I
    :cond_8
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .restart local v3       #anrLists:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/ArrayList<Lcom/android/internal/telephony/AnrRecord;>;>;"
    goto :goto_1

    .line 2509
    :cond_9
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mAnrRecordLists:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2525
    :cond_a
    add-int/lit8 p2, p2, 0x1

    .line 2526
    iget-object v12, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v12}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->getPBRNum()I

    move-result v12

    move/from16 v0, p2

    if-ge v0, v12, :cond_b

    .line 2527
    const/16 v12, 0xc

    const/4 v13, 0x0

    move/from16 v0, p2

    invoke-virtual {p0, v12, v0, v13}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->handleNextSequence(III)V

    goto :goto_3

    .line 2531
    :cond_b
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->notifySimPbkWaiter()V

    goto :goto_3

    .line 2442
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public isSIMPhonebookFileId(I)Z
    .locals 2
    .parameter "efid"

    .prologue
    .line 2663
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isPbrPresent()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2665
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isSIMPhonebookFileId(I)Z

    move-result v0

    .line 2668
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestLoadAllPBEntry(Landroid/os/Message;)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x1

    .line 1257
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->misloading:Z

    if-nez v2, :cond_2

    .line 1258
    invoke-direct {p0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->getPbkEntryListIfLoaded()Ljava/util/ArrayList;

    move-result-object v1

    .line 1262
    .local v1, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    if-eqz v1, :cond_2

    .line 1263
    if-eqz p1, :cond_0

    .line 1264
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v1, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1265
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1267
    :cond_0
    const-string v2, "PB has already loaded"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1291
    .end local v1           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/PhoneBookEntry;>;"
    :cond_1
    :goto_0
    return-void

    .line 1271
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1273
    const-string v2, "HtcIccPbkEntryCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestLoadAllPBEntry()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkWaiters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_1

    .line 1282
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1283
    .local v0, res:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v2, :cond_3

    .line 1284
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->getPhoneBookMemory(Landroid/os/Message;)V

    .line 1290
    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->misloading:Z

    goto :goto_0

    .line 1286
    :cond_3
    const-string v2, "mPhone is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setupIccFileHandler(Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 1
    .parameter "iccFileHandler"

    .prologue
    .line 2678
    const-string v0, "Does not support it"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 2679
    return-void
.end method

.method updateAnrByIndex(ILcom/android/internal/telephony/AnrRecord;IILandroid/os/Message;)V
    .locals 6
    .parameter "recordIndex"
    .parameter "anrRecord"
    .parameter "efid"
    .parameter "anrEntryIndex"
    .parameter "response"

    .prologue
    .line 2323
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2325
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0, p4}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isANRPresentInIAP(I)Z

    move-result v4

    .line 2327
    .local v4, inIAP:Z
    iget v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->reloadExt1_count:I

    .line 2328
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2329
    new-instance v0, Lcom/android/internal/telephony/AnrRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mExt1RecordList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/AnrRecordLoader;-><init>(Ljava/util/ArrayList;Lcom/android/internal/telephony/PhoneBase;)V

    move v1, p3

    move v2, p1

    move-object v3, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/AnrRecordLoader;->updateEF(IILcom/android/internal/telephony/AnrRecord;ZLandroid/os/Message;)V

    .line 2333
    .end local v4           #inIAP:Z
    :cond_0
    return-void
.end method

.method updateEmailByIndex(IILcom/android/internal/telephony/EmailRecord;Landroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "recordIndex"
    .parameter "emailRecord"
    .parameter "response"

    .prologue
    .line 2309
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2311
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2312
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;->isEmailPresentInIAP()Z

    move-result v4

    .line 2314
    .local v4, inIAP:Z
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2315
    new-instance v0, Lcom/android/internal/telephony/EmailRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/EmailRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/EmailRecordLoader;->updateEF(IILcom/android/internal/telephony/EmailRecord;ZLandroid/os/Message;)V

    .line 2319
    .end local v4           #inIAP:Z
    :cond_0
    return-void
.end method

.method updateExt1ByIndex(ILcom/android/internal/telephony/HtcExt1Record;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "ext1Record"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2346
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExt1ByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2347
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    .line 2348
    new-instance v0, Lcom/android/internal/telephony/HtcExt1RecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/HtcExt1RecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/HtcExt1RecordLoader;->updateEF(IILcom/android/internal/telephony/HtcExt1Record;Landroid/os/Message;)V

    .line 2351
    :cond_0
    return-void
.end method

.method updateIAPByIndex(ILcom/android/internal/telephony/IAPRecord;ILandroid/os/Message;)V
    .locals 3
    .parameter "recordIndex"
    .parameter "iapRecord"
    .parameter "efid"
    .parameter "response"

    .prologue
    .line 2337
    const-string v0, "HtcIccPbkEntryCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIAPByIndex recordIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPBRParser:Lcom/android/internal/telephony/gsm/HtcUsimPBRParser;

    if-eqz v0, :cond_0

    .line 2339
    new-instance v0, Lcom/android/internal/telephony/IAPRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/IAPRecordLoader;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    invoke-virtual {v0, p3, p1, p2, p4}, Lcom/android/internal/telephony/IAPRecordLoader;->updateEF(IILcom/android/internal/telephony/IAPRecord;Landroid/os/Message;)V

    .line 2342
    :cond_0
    return-void
.end method

.method public updatePBKEntry(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 14
    .parameter "recordNumber"
    .parameter "name"
    .parameter "number"
    .parameter "number1"
    .parameter "number2"
    .parameter "email"
    .parameter "response"

    .prologue
    .line 1566
    const-string v2, "updatePBKEntry()"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sLog(Ljava/lang/String;)V

    .line 1568
    const/4 v8, 0x0

    .line 1570
    .local v8, error:I
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v2, :cond_0

    .line 1571
    const-string v2, "mPhone null"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 1689
    :goto_0
    return-void

    .line 1576
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v11

    .line 1579
    .local v11, iccCardInterface:Lcom/android/internal/telephony/IccCard;
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    array-length v2, v2

    if-ge v10, v2, :cond_1

    .line 1580
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mIap_Updatedata:[B

    const/4 v3, 0x0

    aput-byte v3, v2, v10

    .line 1579
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1583
    :cond_1
    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1585
    .local v12, phonenumber:Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1586
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1590
    :cond_2
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-direct {p0, v12, v0, v1}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->checkNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 1592
    if-eqz v8, :cond_3

    .line 1593
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1598
    :cond_3
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/IccCard$State;->READY:Lcom/android/internal/telephony/IccCard$State;

    if-eq v2, v3, :cond_4

    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->GENERIC_WPHONE_CONFIG()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1600
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1604
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    if-eqz v2, :cond_f

    .line 1605
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSimPbkEntryList:Ljava/util/ArrayList;

    add-int/lit8 v3, p1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/PhoneBookEntry;

    .line 1607
    .local v7, entry:Lcom/android/internal/telephony/PhoneBookEntry;
    if-eqz v7, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    if-gtz v2, :cond_6

    .line 1608
    :cond_5
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 1610
    :cond_6
    iget v2, v7, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mRecordNums:I

    div-int v6, v2, v3

    .line 1611
    .local v6, num:I
    const/4 v8, 0x0

    move-object v2, p0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    .line 1612
    invoke-direct/range {v2 .. v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->checkFilesStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/android/internal/telephony/PhoneBookEntry;)I

    move-result v8

    .line 1613
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mANR_swap:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1614
    move-object/from16 p5, p4

    .line 1615
    const-string p4, ""

    .line 1618
    :cond_7
    if-eqz v8, :cond_8

    .line 1619
    packed-switch v8, :pswitch_data_0

    .line 1630
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1627
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MemoryFull:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1636
    :cond_8
    iget-boolean v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportEmail:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 1637
    move-object/from16 v0, p6

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateEmailRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;)V

    .line 1643
    :cond_9
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_a

    .line 1644
    const/4 v2, 0x0

    move-object/from16 v0, p4

    invoke-direct {p0, v0, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1647
    :cond_a
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mSupportAnr:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 1648
    const/4 v2, 0x1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v7, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateAnrRecord(Ljava/lang/String;Lcom/android/internal/telephony/PhoneBookEntry;I)V

    .line 1654
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/HtcBuildUtils;->supportAdditionalNumbersInSim()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1655
    iget v2, v7, Lcom/android/internal/telephony/PhoneBookEntry;->index:I

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->updateIAP(IZ)V

    .line 1664
    :cond_c
    const/16 v2, 0x2b

    invoke-virtual {v12, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_d

    const/4 v9, 0x1

    .line 1666
    .local v9, hasPlus:Z
    :goto_2
    move-object/from16 v0, p2

    iput-object v0, v7, Lcom/android/internal/telephony/PhoneBookEntry;->text:Ljava/lang/String;

    .line 1667
    const/16 v2, 0x2b

    invoke-virtual {v12, v2}, Ljava/lang/String;->removeSelf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/internal/telephony/PhoneBookEntry;->number:Ljava/lang/String;

    .line 1669
    if-eqz v9, :cond_e

    .line 1670
    const/16 v2, 0x91

    iput v2, v7, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    .line 1676
    :goto_3
    iget v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    rem-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    .line 1677
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mUserWriteResponse:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    move-object/from16 v0, p7

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1679
    const/4 v2, 0x5

    iget v3, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mMsgNumber:I

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4, v7}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 1681
    .local v13, res:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v7, v13}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneBookEntries(Lcom/android/internal/telephony/PhoneBookEntry;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1664
    .end local v9           #hasPlus:Z
    .end local v13           #res:Landroid/os/Message;
    :cond_d
    const/4 v9, 0x0

    goto :goto_2

    .line 1672
    .restart local v9       #hasPlus:Z
    :cond_e
    const/16 v2, 0x81

    iput v2, v7, Lcom/android/internal/telephony/PhoneBookEntry;->type:I

    goto :goto_3

    .line 1685
    .end local v6           #num:I
    .end local v7           #entry:Lcom/android/internal/telephony/PhoneBookEntry;
    .end local v9           #hasPlus:Z
    :cond_f
    const-string v2, "HtcIccPbkEntryCache"

    const-string v3, "mSimPbkEntryList = null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    const-string v2, "error"

    move-object/from16 v0, p7

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/HtcIccPbkEntryCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1619
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
