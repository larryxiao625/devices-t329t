.class public Lcom/htc/util/weather/WSPData;
.super Ljava/lang/Object;
.source "WSPData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null

#the value of this static final field might be set in the static constructor
.field protected static final LOG_FLAG:Z = false

.field protected static final LOG_FLAG_SECURITY:Z = false

.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final SEPARATE:Ljava/lang/String; = ";"


# instance fields
.field protected curConditionId:Ljava/lang/String;

.field protected curLocCountry:Ljava/lang/String;

.field protected curLocLat:Ljava/lang/String;

.field protected curLocLatTrim:Ljava/lang/String;

.field protected curLocLng:Ljava/lang/String;

.field protected curLocLngTrim:Ljava/lang/String;

.field protected curLocName:Ljava/lang/String;

.field protected curLocState:Ljava/lang/String;

.field protected curLocTimezoneId:Ljava/lang/String;

.field protected curTempC:I

.field protected curTempF:I

.field protected fstConditionId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstDate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstHighTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstHighTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstLowTempC:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstLowTempF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected fstName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected lastUpdate:J

.field protected param1:Ljava/lang/String;

.field protected param2:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 14
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/htc/util/weather/WSPData;->LOG_FLAG:Z

    .line 129
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->type:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param1:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->param2:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v2}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/htc/util/weather/WSPData;->PROJECTION:[Ljava/lang/String;

    .line 166
    new-instance v0, Lcom/htc/util/weather/WSPData$1;

    invoke-direct {v0}, Lcom/htc/util/weather/WSPData$1;-><init>()V

    sput-object v0, Lcom/htc/util/weather/WSPData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 230
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 42
    iput v2, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 47
    iput v2, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 231
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 8
    .parameter "cursor"

    .prologue
    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 233
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v7, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 27
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 32
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 37
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 42
    iput v7, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 47
    iput v7, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 52
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 57
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 62
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 67
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 72
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 77
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 87
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 92
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 97
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 102
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 107
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 112
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 117
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 122
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 127
    const-string v4, ""

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 234
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    sget-object v5, Lcom/htc/util/weather/WSPData;->PROJECTION:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_7

    .line 235
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 236
    const/4 v4, 0x1

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 237
    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 238
    const/4 v4, 0x3

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 239
    const/4 v4, 0x4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 240
    const/4 v4, 0x5

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 241
    const/4 v4, 0x6

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 243
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 244
    const/4 v4, 0x7

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 245
    .local v2, item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v2           #item:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 249
    const/16 v4, 0x8

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 250
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 253
    .end local v2           #item:Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 254
    const/16 v4, 0x9

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 255
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 258
    .end local v2           #item:Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 259
    const/16 v4, 0xa

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v3, :cond_3

    aget-object v2, v0, v1

    .line 260
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 263
    .end local v2           #item:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 264
    const/16 v4, 0xb

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v3, :cond_4

    aget-object v2, v0, v1

    .line 265
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 268
    .end local v2           #item:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 269
    const/16 v4, 0xc

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v3, :cond_5

    aget-object v2, v0, v1

    .line 270
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 273
    .end local v2           #item:Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 274
    const/16 v4, 0xd

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v3, v0

    const/4 v1, 0x0

    :goto_6
    if-ge v1, v3, :cond_6

    aget-object v2, v0, v1

    .line 275
    .restart local v2       #item:Ljava/lang/String;
    iget-object v4, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 278
    .end local v2           #item:Ljava/lang/String;
    :cond_6
    const/16 v4, 0xe

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 279
    const/16 v4, 0xf

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 280
    const/16 v4, 0x10

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 281
    const/16 v4, 0x11

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 282
    const/16 v4, 0x12

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 283
    const/16 v4, 0x13

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 284
    const/16 v4, 0x14

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 285
    const/16 v4, 0x15

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 287
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v3           #len$:I
    :cond_7
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 205
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput v2, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 37
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 42
    iput v2, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 47
    iput v2, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 92
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 97
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 107
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 127
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 215
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 219
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 574
    sget-object v0, Lcom/htc/util/weather/WSPData;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 528
    .local p1, src:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 530
    .local v2, sb:Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, item:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 534
    .end local v1           #item:Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 536
    .local v3, str:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, ";"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .end local v3           #str:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x0

    return v0
.end method

.method public getCurConditionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocLat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocLatTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocLng()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocLngTrim()Ljava/lang/String;
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    return-object v0
.end method

.method public getCurLocTimezoneId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurTempC()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    return v0
.end method

.method public getCurTempF()I
    .locals 1

    .prologue
    .line 364
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    return v0
.end method

.method public getFstConditionId()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstDate()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstHighTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 416
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstHighTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstLowTempC()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstLowTempF()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFstName()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLastUpdate()J
    .locals 2

    .prologue
    .line 476
    iget-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    return-wide v0
.end method

.method public getLatitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getParam1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getParam1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/htc/util/weather/WSPData;->getParam2()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParam1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    return-object v0
.end method

.method public getParam2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 352
    iget v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    return v0
.end method

.method public hasWeatherData()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCurConditionId(Ljava/lang/String;)V
    .locals 0
    .parameter "curConditionId"

    .prologue
    .line 376
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    .line 377
    return-void
.end method

.method public setCurLocName(Ljava/lang/String;)V
    .locals 0
    .parameter "locName"

    .prologue
    .line 472
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setCurTempC(I)V
    .locals 0
    .parameter "curTempC"

    .prologue
    .line 360
    iput p1, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    .line 361
    return-void
.end method

.method public setCurTempF(I)V
    .locals 0
    .parameter "curTempF"

    .prologue
    .line 368
    iput p1, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    .line 369
    return-void
.end method

.method public setFstConditionId(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 412
    .local p1, fstConditionId:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    .line 413
    return-void
.end method

.method public setFstDate(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 400
    .local p1, fstDate:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    .line 401
    return-void
.end method

.method public setFstHighTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p1, fstHighTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    .line 425
    return-void
.end method

.method public setFstHighTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 436
    .local p1, fstHighTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    .line 437
    return-void
.end method

.method public setFstLowTempC(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, fstLowTempC:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    .line 449
    return-void
.end method

.method public setFstLowTempF(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 460
    .local p1, fstLowTempF:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    .line 461
    return-void
.end method

.method public setFstName(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 388
    .local p1, fstName:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    .line 389
    return-void
.end method

.method public setLastUpdate(J)V
    .locals 0
    .parameter "lastUpdate"

    .prologue
    .line 464
    iput-wide p1, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    .line 465
    return-void
.end method

.method public setTypeCurrentLocation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"
    .parameter "trimLatitude"
    .parameter "trimLongitude"
    .parameter "name"
    .parameter "state"
    .parameter "country"
    .parameter "timezoneId"

    .prologue
    .line 290
    const/4 v0, 0x1

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 291
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 292
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 293
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 295
    iput-object p3, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 296
    iput-object p4, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 297
    iput-object p5, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 298
    iput-object p6, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 299
    iput-object p7, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 300
    iput-object p8, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setTypeLatitude(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "latitude"
    .parameter "longitude"

    .prologue
    .line 318
    const/4 v0, 0x3

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 319
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 320
    iput-object p2, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 321
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 322
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 323
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 324
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 325
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 326
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 327
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 328
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 329
    return-void
.end method

.method public setTypeLocCode(Ljava/lang/String;)V
    .locals 1
    .parameter "locCode"

    .prologue
    .line 304
    const/4 v0, 0x2

    iput v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    .line 305
    iput-object p1, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    .line 306
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    .line 307
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    .line 308
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    .line 309
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    .line 310
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    .line 312
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    .line 313
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    .line 314
    const-string v0, ""

    iput-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public toContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 544
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 546
    .local v0, values:Landroid/content/ContentValues;
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->lastUpdate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 547
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 548
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 549
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstDate:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstConditionId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstHighTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempC:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->fstLowTempF:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Lcom/htc/util/weather/WSPData;->arrayListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLat:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLng:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLatTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocLngTrim:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocName:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocState:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocCountry:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    sget-object v1, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->curLocTimezoneId:Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;

    invoke-virtual {v1}, Lcom/htc/util/weather/WSPUtility$TABLE_DATA_COLUMNS;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    return-object v0
.end method

.method public toDebugInfo()Ljava/lang/String;
    .locals 6

    .prologue
    .line 578
    sget-boolean v2, Lcom/htc/util/weather/WSPData;->LOG_FLAG:Z

    if-eqz v2, :cond_0

    .line 580
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 581
    .local v1, sb:Ljava/lang/StringBuilder;
    const-string/jumbo v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 588
    const-string v2, ", update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", param2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", curConditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstDate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstConditionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstHighTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstHighTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstLowTempC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", fstLowTempF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    const-string v2, ", curLocTimezoneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 611
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 617
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :goto_0
    return-object v2

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 614
    const-string v2, "Exception is caught. (can\'t generate debug info)[WSPData]"

    goto :goto_0

    .line 617
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 181
    iget v0, p0, Lcom/htc/util/weather/WSPData;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->param2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-wide v0, p0, Lcom/htc/util/weather/WSPData;->lastUpdate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempC:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/htc/util/weather/WSPData;->curTempF:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curConditionId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstName:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 189
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstDate:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 190
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstConditionId:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 191
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 192
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstHighTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 193
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempC:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 194
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->fstLowTempF:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 195
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLng:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLatTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocLngTrim:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/htc/util/weather/WSPData;->curLocTimezoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return-void
.end method
