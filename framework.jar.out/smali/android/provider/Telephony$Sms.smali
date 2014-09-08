.class public final Landroid/provider/Telephony$Sms;
.super Ljava/lang/Object;
.source "Telephony.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/Telephony$TextBasedSmsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sms"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Telephony$Sms$Intents;,
        Landroid/provider/Telephony$Sms$Conversations;,
        Landroid/provider/Telephony$Sms$Outbox;,
        Landroid/provider/Telephony$Sms$Draft;,
        Landroid/provider/Telephony$Sms$Sent;,
        Landroid/provider/Telephony$Sms$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "date DESC"

.field private static final PHONE_NUMBER_SEPARATORS:Ljava/lang/String; = " ()-./"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 328
    const-string v0, "content://sms"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1273
    return-void
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZ)Landroid/net/Uri;
    .locals 10
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"

    .prologue
    .line 352
    const-wide/16 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-static/range {v0 .. v9}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;
    .locals 11
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"

    .prologue
    .line 375
    const/4 v10, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    invoke-static/range {v0 .. v10}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJI)Landroid/net/Uri;
    .locals 12
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "nIndexOnSim"

    .prologue
    .line 382
    const/4 v1, 0x1

    move/from16 v0, p10

    if-ge v0, v1, :cond_0

    const-string v11, ""

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    invoke-static/range {v1 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;)Landroid/net/Uri;
    .locals 13
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"

    .prologue
    .line 393
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualPhoneEnable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 394
    :cond_0
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getMainPhoneType()I

    move-result v12

    .line 395
    .local v12, mainphone:I
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addMessageToUri with phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v12}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;

    move-result-object v0

    .line 400
    .end local v12           #mainphone:I
    :goto_0
    return-object v0

    :cond_1
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;I)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "phoneType"

    .prologue
    .line 409
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 410
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 411
    if-lez p11, :cond_0

    .line 412
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #values:Landroid/content/ContentValues;
    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 415
    .restart local v0       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    if-eqz p5, :cond_1

    .line 417
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 419
    :cond_1
    const-string/jumbo v2, "read"

    if-eqz p6, :cond_6

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 420
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v1, ""

    if-eq p10, v1, :cond_2

    .line 423
    const-string v1, "index_on_sim"

    invoke-virtual {v0, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_2
    if-eqz p7, :cond_3

    .line 425
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 427
    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_4

    .line 428
    const-string/jumbo v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 431
    :cond_4
    const/4 v1, 0x2

    if-ne p11, v1, :cond_7

    .line 432
    const-string v1, "is_cdma_format"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 437
    :goto_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 438
    const/4 v1, 0x1

    if-ne p11, v1, :cond_8

    .line 439
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 419
    :cond_6
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 434
    :cond_7
    const-string v1, "is_cdma_format"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 440
    :cond_8
    const/4 v1, 0x5

    if-ne p11, v1, :cond_5

    .line 441
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "other"

    .prologue
    .line 453
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 455
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    if-eqz p5, :cond_0

    .line 457
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 459
    :cond_0
    const-string/jumbo v2, "read"

    if-eqz p6, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 460
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    const-string v1, ""

    if-eq p10, v1, :cond_1

    .line 463
    const-string v1, "index_on_sim"

    invoke-virtual {v0, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :cond_1
    if-eqz p7, :cond_2

    .line 465
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 467
    :cond_2
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_3

    .line 468
    const-string/jumbo v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 470
    :cond_3
    if-eqz p11, :cond_4

    invoke-virtual {v0, p11}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 471
    :cond_4
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 459
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public static addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJLjava/lang/String;Landroid/content/ContentValues;I)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "sIndexes"
    .parameter "other"
    .parameter "phoneType"

    .prologue
    .line 481
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 482
    .local v0, values:Landroid/content/ContentValues;
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 483
    new-instance v0, Landroid/content/ContentValues;

    .end local v0           #values:Landroid/content/ContentValues;
    const/16 v1, 0xb

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 486
    .restart local v0       #values:Landroid/content/ContentValues;
    :cond_0
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz p5, :cond_1

    .line 488
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 490
    :cond_1
    const-string/jumbo v2, "read"

    if-eqz p6, :cond_7

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 491
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    const-string v1, ""

    if-eq p10, v1, :cond_2

    .line 494
    const-string v1, "index_on_sim"

    invoke-virtual {v0, v1, p10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    :cond_2
    if-eqz p7, :cond_3

    .line 496
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 498
    :cond_3
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_4

    .line 499
    const-string/jumbo v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 503
    :cond_4
    const/4 v1, 0x2

    if-ne p12, v1, :cond_8

    .line 504
    const-string v1, "is_cdma_format"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 508
    :goto_1
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->dualGSMPhoneEnable()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 509
    const/4 v1, 0x1

    if-ne p12, v1, :cond_9

    .line 510
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 515
    :cond_5
    :goto_2
    if-eqz p11, :cond_6

    invoke-virtual {v0, p11}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 516
    :cond_6
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 490
    :cond_7
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 506
    :cond_8
    const-string v1, "is_cdma_format"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 511
    :cond_9
    const/4 v1, 0x5

    if-ne p12, v1, :cond_5

    .line 512
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static addSIMMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJIII)Landroid/net/Uri;
    .locals 3
    .parameter "resolver"
    .parameter "uri"
    .parameter "address"
    .parameter "body"
    .parameter "subject"
    .parameter "date"
    .parameter "read"
    .parameter "deliveryReport"
    .parameter "threadId"
    .parameter "simsms"
    .parameter "simindex"
    .parameter "phoneType"

    .prologue
    .line 553
    new-instance v0, Landroid/content/ContentValues;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 554
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-eqz p5, :cond_0

    .line 556
    const-string v1, "date"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 558
    :cond_0
    const-string/jumbo v2, "read"

    if-eqz p6, :cond_5

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    const-string/jumbo v1, "subject"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    const-string v1, "body"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    if-eqz p7, :cond_1

    .line 562
    const-string/jumbo v1, "status"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 564
    :cond_1
    const-wide/16 v1, -0x1

    cmp-long v1, p8, v1

    if-eqz v1, :cond_2

    .line 565
    const-string/jumbo v1, "thread_id"

    invoke-static {p8, p9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 571
    :cond_2
    if-lez p11, :cond_3

    .line 572
    const-string v1, "index_on_sim"

    invoke-static {p11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    :cond_3
    const/4 v1, 0x2

    if-ne p12, v1, :cond_6

    .line 577
    const-string v1, "is_cdma_format"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 582
    :goto_1
    const/4 v1, 0x1

    if-ne p12, v1, :cond_7

    .line 583
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 587
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 558
    :cond_5
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 579
    :cond_6
    const-string v1, "is_cdma_format"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_1

    .line 584
    :cond_7
    const/4 v1, 0x5

    if-ne p12, v1, :cond_4

    .line 585
    const-string/jumbo v1, "sim_slot"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2
.end method

.method public static getContactPhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V
    .locals 5
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"
    .parameter "view"

    .prologue
    .line 724
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v2

    .line 725
    .local v2, info:Lcom/android/internal/telephony/CallerInfo;
    const-wide/16 v0, 0x0

    .line 727
    .local v0, callerID:J
    if-eqz v2, :cond_0

    .line 728
    iget-wide v0, v2, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    .line 732
    :cond_0
    iget-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_1

    .line 733
    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 735
    .local v3, mUri:Landroid/net/Uri;
    invoke-static {v2, p0, p3, v3, p2}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 747
    .end local v3           #mUri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 739
    :cond_1
    iget-object v4, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static getDisplayAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "address"

    .prologue
    .line 689
    invoke-static {p1}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 690
    const/16 v2, 0x40

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 691
    .local v0, index:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 692
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 700
    .end local v0           #index:I
    .local v1, result:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 694
    .end local v1           #result:Ljava/lang/String;
    .restart local v0       #index:I
    :cond_0
    move-object v1, p1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0

    .line 697
    .end local v0           #index:I
    .end local v1           #result:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #result:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getNamePhoto(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)Landroid/provider/Telephony$namephoto;
    .locals 21
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"
    .parameter "view"

    .prologue
    .line 752
    const-wide/16 v19, 0x0

    .line 753
    .local v19, personID:J
    const/4 v15, 0x0

    .line 754
    .local v15, callerID:Ljava/lang/String;
    new-instance v17, Landroid/provider/Telephony$namephoto;

    invoke-direct/range {v17 .. v17}, Landroid/provider/Telephony$namephoto;-><init>()V

    .line 756
    .local v17, mdata:Landroid/provider/Telephony$namephoto;
    const/4 v3, 0x0

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 758
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v12

    .line 760
    .local v12, bIsMail:Z
    invoke-static/range {p1 .. p1}, Landroid/provider/Telephony$Sms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v13

    .line 762
    .local v13, bIsPhone:Z
    if-eqz v12, :cond_5

    .line 780
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    move-object/from16 v0, p1

    invoke-static {v3, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 783
    .local v5, contactEmailLookupUri:Landroid/net/Uri;
    const/4 v3, 0x2

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "display_name"

    aput-object v4, v6, v3

    const/4 v3, 0x1

    const-string v4, "contact_id"

    aput-object v4, v6, v3

    .line 788
    .local v6, sProjection:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 795
    .local v14, cCursor:Landroid/database/Cursor;
    const-string v11, ""

    .line 796
    .local v11, _Name:Ljava/lang/String;
    if-eqz v14, :cond_3

    .line 797
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 798
    const-string v3, "Telephony"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Query result cursor count: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    .line 804
    const-string v3, "contact_id"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 807
    .local v10, _Id:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v0, v3

    move-wide/from16 v19, v0

    .line 808
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-lez v3, :cond_0

    .line 809
    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 813
    :cond_0
    const-string v3, "display_name"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 817
    .end local v10           #_Id:Ljava/lang/String;
    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 824
    :goto_0
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 825
    move-object v15, v11

    .line 826
    move-object/from16 v0, v17

    iput-object v11, v0, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 827
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 829
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v3, v4}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 832
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 833
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 907
    .end local v5           #contactEmailLookupUri:Landroid/net/Uri;
    .end local v6           #sProjection:[Ljava/lang/String;
    .end local v11           #_Name:Ljava/lang/String;
    .end local v14           #cCursor:Landroid/database/Cursor;
    :cond_2
    :goto_1
    return-object v17

    .line 821
    .restart local v5       #contactEmailLookupUri:Landroid/net/Uri;
    .restart local v6       #sProjection:[Ljava/lang/String;
    .restart local v11       #_Name:Ljava/lang/String;
    .restart local v14       #cCursor:Landroid/database/Cursor;
    :cond_3
    const-string v3, "Telephony"

    const-string v4, "Query result cursor is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 844
    :cond_4
    move-object/from16 v15, p1

    .line 845
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 850
    .end local v5           #contactEmailLookupUri:Landroid/net/Uri;
    .end local v6           #sProjection:[Ljava/lang/String;
    .end local v11           #_Name:Ljava/lang/String;
    .end local v14           #cCursor:Landroid/database/Cursor;
    :cond_5
    const/4 v3, 0x1

    if-ne v13, v3, :cond_9

    .line 853
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v16

    .line 855
    .local v16, info:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v16, :cond_2

    .line 856
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 857
    .local v18, name:Ljava/lang/String;
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-wide/from16 v19, v0

    .line 859
    const-wide/16 v3, 0x0

    cmp-long v3, v19, v3

    if-lez v3, :cond_6

    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    move-object/from16 v0, v17

    iput-wide v3, v0, Landroid/provider/Telephony$namephoto;->mPersonId:J

    .line 860
    :cond_6
    move-object/from16 v0, v16

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->recordNumber:J

    const-wide/16 v7, 0x0

    cmp-long v3, v3, v7

    if-lez v3, :cond_7

    .line 862
    const/4 v3, 0x1

    move-object/from16 v0, v17

    iput-boolean v3, v0, Landroid/provider/Telephony$namephoto;->isFromSIM:Z

    .line 873
    :cond_7
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 874
    move-object/from16 v15, v18

    .line 875
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 876
    const-string v3, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 878
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v3, v4}, Landroid/provider/HtcContactsContract$ThumbnailsSequence;->loadContactThumbnail(JLandroid/graphics/BitmapFactory$Options;Landroid/content/ContentResolver;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    .line 881
    move-object/from16 v0, v17

    iget-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    .line 882
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 893
    :cond_8
    move-object/from16 v15, p1

    .line 894
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 895
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1

    .line 900
    .end local v16           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v18           #name:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/provider/Telephony$namephoto;->mName:Ljava/lang/String;

    .line 902
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, p2

    invoke-static {v3, v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v17

    iput-object v3, v0, Landroid/provider/Telephony$namephoto;->mBitmap:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public static getPersonPhoto(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "context"
    .parameter "address"
    .parameter "mNoPhotoResource"

    .prologue
    const/4 v0, 0x0

    .line 708
    if-nez p1, :cond_0

    .line 719
    :cond_0
    return-object v0
.end method

.method public static isEmailAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 675
    if-eqz p0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isOutgoingFolder(I)Z
    .locals 7
    .parameter "messageType"

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 643
    sget-short v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    const/16 v3, 0x94

    if-ne v2, v3, :cond_2

    .line 644
    if-eq p0, v6, :cond_0

    if-eq p0, v5, :cond_0

    if-eq p0, v4, :cond_0

    const/4 v2, 0x6

    if-eq p0, v2, :cond_0

    const/16 v2, 0xc8

    if-ne p0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 652
    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eq p0, v6, :cond_3

    if-eq p0, v5, :cond_3

    if-eq p0, v4, :cond_3

    const/4 v2, 0x6

    if-ne p0, v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 6
    .parameter "recipient"

    .prologue
    const/4 v4, 0x0

    .line 926
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 927
    .local v3, len:I
    const/4 v1, 0x0

    .line 929
    .local v1, digits:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_3

    .line 930
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 932
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 933
    add-int/lit8 v1, v1, 0x1

    .line 929
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 936
    :cond_1
    const-string v5, " ()-./"

    invoke-virtual {v5, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-gez v5, :cond_0

    .line 939
    const/16 v5, 0x2b

    if-ne v0, v5, :cond_2

    if-eqz v2, :cond_0

    .line 953
    .end local v0           #c:C
    :cond_2
    :goto_1
    return v4

    .line 946
    :cond_3
    if-eqz v1, :cond_2

    .line 950
    const/16 v5, 0x14

    if-gt v3, v5, :cond_2

    .line 953
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public static moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z
    .locals 10
    .parameter "context"
    .parameter "uri"
    .parameter "folder"
    .parameter "error"

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 601
    if-nez p1, :cond_0

    .line 633
    :goto_0
    return v9

    .line 605
    :cond_0
    const/4 v7, 0x0

    .line 606
    .local v7, markAsUnread:Z
    const/4 v6, 0x0

    .line 607
    .local v6, markAsRead:Z
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 623
    :goto_1
    :pswitch_0
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 625
    .local v3, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "type"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 626
    if-eqz v7, :cond_2

    .line 627
    const-string/jumbo v0, "read"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 631
    :cond_1
    :goto_2
    const-string v0, "error_code"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 633
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-ne v8, v0, :cond_3

    move v0, v8

    :goto_3
    move v9, v0

    goto :goto_0

    .line 613
    .end local v3           #values:Landroid/content/ContentValues;
    :pswitch_1
    const/4 v6, 0x1

    .line 614
    goto :goto_1

    .line 617
    :pswitch_2
    const/4 v7, 0x1

    .line 618
    goto :goto_1

    .line 628
    .restart local v3       #values:Landroid/content/ContentValues;
    :cond_2
    if-eqz v6, :cond_1

    .line 629
    const-string/jumbo v0, "read"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    move v0, v9

    .line 633
    goto :goto_3

    .line 607
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"

    .prologue
    const/4 v3, 0x0

    .line 316
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "date DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static final query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter "cr"
    .parameter "projection"
    .parameter "where"
    .parameter "orderBy"

    .prologue
    .line 321
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    if-nez p3, :cond_0

    const-string v5, "date DESC"

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_0
    move-object v5, p3

    goto :goto_0
.end method
