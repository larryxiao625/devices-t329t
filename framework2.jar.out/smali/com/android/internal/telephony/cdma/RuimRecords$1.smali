.class Lcom/android/internal/telephony/cdma/RuimRecords$1;
.super Landroid/content/BroadcastReceiver;
.source "RuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cdma/RuimRecords;->listenToBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimRecords;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 1376
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1379
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$000(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1387
    :cond_0
    :goto_0
    return-void

    .line 1382
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1383
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.htc.intent.action.RESTORE_APN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    const-string v2, "APN reset to default"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->log(Ljava/lang/String;)V

    .line 1385
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->phone:Lcom/android/internal/telephony/PhoneBase;
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$100(Lcom/android/internal/telephony/cdma/RuimRecords;)Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mSimpleIP_NAIs:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$200(Lcom/android/internal/telephony/cdma/RuimRecords;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->mMobileIP_NAIs:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$300(Lcom/android/internal/telephony/cdma/RuimRecords;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/RuimRecords$1;->this$0:Lcom/android/internal/telephony/cdma/RuimRecords;

    #getter for: Lcom/android/internal/telephony/cdma/RuimRecords;->spn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/internal/telephony/cdma/RuimRecords;->access$400(Lcom/android/internal/telephony/cdma/RuimRecords;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/HtcCdmaOmhCustomization;->dynamicUpdateApn(Lcom/android/internal/telephony/PhoneBase;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
