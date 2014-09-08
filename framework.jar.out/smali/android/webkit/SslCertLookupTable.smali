.class final Landroid/webkit/SslCertLookupTable;
.super Ljava/lang/Object;
.source "SslCertLookupTable.java"


# static fields
.field private static sTable:Landroid/webkit/SslCertLookupTable;


# instance fields
.field private final pending_handles:Landroid/os/Bundle;

.field private final table:Landroid/os/Bundle;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    .line 102
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    .line 104
    return-void
.end method

.method public static getInstance()Landroid/webkit/SslCertLookupTable;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Landroid/webkit/SslCertLookupTable;

    invoke-direct {v0}, Landroid/webkit/SslCertLookupTable;-><init>()V

    sput-object v0, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;

    .line 96
    :cond_0
    sget-object v0, Landroid/webkit/SslCertLookupTable;->sTable:Landroid/webkit/SslCertLookupTable;

    return-object v0
.end method


# virtual methods
.method public addPendingHandles(Landroid/net/http/SslError;I)V
    .locals 4
    .parameter "sslError"
    .parameter "handle"

    .prologue
    .line 62
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 67
    .local v1, host:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 71
    :cond_0
    iget-object v2, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v1           #host:Ljava/lang/String;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, e:Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 130
    return-void
.end method

.method public isAllowed(Landroid/net/http/SslError;)Z
    .locals 5
    .parameter "sslError"

    .prologue
    const/4 v2, 0x0

    .line 121
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    .local v1, host:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {v3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    iget-object v4, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {v4, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-gt v3, v4, :cond_0

    const/4 v2, 0x1

    .end local v1           #host:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Ljava/net/MalformedURLException;
    goto :goto_0
.end method

.method public isPending(Landroid/net/http/SslError;)Z
    .locals 4
    .parameter "sslError"

    .prologue
    .line 51
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 55
    .local v1, host:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    .end local v1           #host:Ljava/lang/String;
    :goto_0
    return v2

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removePendingHandles(Landroid/net/http/SslError;)Ljava/util/ArrayList;
    .locals 5
    .parameter "sslError"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/http/SslError;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    .local v2, host:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 87
    .local v1, handles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/webkit/SslCertLookupTable;->pending_handles:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 88
    .end local v1           #handles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2           #host:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setIsAllowed(Landroid/net/http/SslError;)V
    .locals 4
    .parameter "sslError"

    .prologue
    .line 109
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 113
    .local v1, host:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/SslCertLookupTable;->table:Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    .end local v1           #host:Ljava/lang/String;
    :goto_0
    return-void

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, e:Ljava/net/MalformedURLException;
    goto :goto_0
.end method
