.class final Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType$1;
.super Ljava/lang/Object;
.source "ImmediateModeProtocol.java"

# interfaces
.implements Lcom/htc/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/htc/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2279
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueByNumber(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;
    .locals 1
    .parameter "number"

    .prologue
    .line 2281
    invoke-static {p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;->valueOf(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/htc/protobuf/Internal$EnumLite;
    .locals 1
    .parameter "x0"

    .prologue
    .line 2279
    invoke-virtual {p0, p1}, Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType$1;->findValueByNumber(I)Lcom/htc/cscore/transport/ImmediateModeProtocol$ClientToServer$MessageType;

    move-result-object v0

    return-object v0
.end method
