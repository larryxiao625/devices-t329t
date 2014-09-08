.class public Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lcom/htc/util/mail/lib/org/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/mail/mimemessage/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;

.field final synthetic this$0:Lcom/htc/util/mail/mimemessage/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/htc/util/mail/mimemessage/MimeMessage;)V
    .locals 1
    .parameter

    .prologue
    .line 611
    iput-object p1, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->this$0:Lcom/htc/util/mail/mimemessage/MimeMessage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 609
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    .line 612
    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_0
    return-void
.end method


# virtual methods
.method public body(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .locals 3
    .parameter "bd"
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    const-class v2, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 674
    invoke-virtual {p1}, Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/htc/util/mail/mimemessage/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/htc/util/mail/mimemessage/Body;

    move-result-object v0

    .line 676
    .local v0, body:Lcom/htc/util/mail/mimemessage/Body;
    :try_start_0
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/mimemessage/Part;

    invoke-interface {v2, v0}, Lcom/htc/util/mail/mimemessage/Part;->setBody(Lcom/htc/util/mail/mimemessage/Body;)V
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 680
    return-void

    .line 677
    :catch_0
    move-exception v1

    .line 678
    .local v1, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .locals 1

    .prologue
    .line 699
    const-class v0, Lcom/htc/util/mail/mimemessage/BodyPart;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 700
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 701
    return-void
.end method

.method public endHeader()V
    .locals 1

    .prologue
    .line 656
    const-class v0, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 657
    return-void
.end method

.method public endMessage()V
    .locals 1

    .prologue
    .line 637
    const-class v0, Lcom/htc/util/mail/mimemessage/MimeMessage;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 638
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 639
    return-void
.end method

.method public endMultipart()V
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 684
    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 704
    const-class v2, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 705
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 707
    .local v1, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 708
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 711
    :cond_0
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .locals 5
    .parameter "fieldData"

    .prologue
    .line 646
    const-class v2, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 648
    :try_start_0
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 649
    .local v1, tokens:[Ljava/lang/String;
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/mimemessage/Part;

    const/4 v3, 0x0

    aget-object v3, v1, v3

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/htc/util/mail/mimemessage/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 653
    return-void

    .line 650
    .end local v1           #tokens:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 651
    .local v0, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    const-class v3, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-direct {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 715
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 717
    .local v2, sb:Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, b:I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 718
    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 721
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/util/mail/mimemessage/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    return-void

    .line 722
    :catch_0
    move-exception v1

    .line 723
    .local v1, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public raw(Ljava/io/InputStream;)V
    .locals 2
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .locals 3

    .prologue
    .line 687
    const-class v2, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 690
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeBodyPart;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeBodyPart;-><init>()V

    .line 691
    .local v0, bodyPart:Lcom/htc/util/mail/mimemessage/MimeBodyPart;
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/htc/util/mail/mimemessage/MimeMultipart;->addBodyPart(Lcom/htc/util/mail/mimemessage/BodyPart;)V

    .line 692
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 696
    return-void

    .line 693
    .end local v0           #bodyPart:Lcom/htc/util/mail/mimemessage/MimeBodyPart;
    :catch_0
    move-exception v1

    .line 694
    .local v1, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .locals 1

    .prologue
    .line 642
    const-class v0, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v0}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 643
    return-void
.end method

.method public startMessage()V
    .locals 4

    .prologue
    .line 622
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 623
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->this$0:Lcom/htc/util/mail/mimemessage/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    :goto_0
    return-void

    .line 625
    :cond_0
    const-class v2, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v2}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 627
    :try_start_0
    new-instance v0, Lcom/htc/util/mail/mimemessage/MimeMessage;

    invoke-direct {v0}, Lcom/htc/util/mail/mimemessage/MimeMessage;-><init>()V

    .line 628
    .local v0, m:Lcom/htc/util/mail/mimemessage/MimeMessage;
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/util/mail/mimemessage/Part;

    invoke-interface {v2, v0}, Lcom/htc/util/mail/mimemessage/Part;->setBody(Lcom/htc/util/mail/mimemessage/Body;)V

    .line 629
    iget-object v2, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 630
    .end local v0           #m:Lcom/htc/util/mail/mimemessage/MimeMessage;
    :catch_0
    move-exception v1

    .line 631
    .local v1, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lcom/htc/util/mail/lib/org/apache/james/mime4j/BodyDescriptor;)V
    .locals 4
    .parameter "bd"

    .prologue
    .line 660
    const-class v3, Lcom/htc/util/mail/mimemessage/Part;

    invoke-direct {p0, v3}, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    .line 662
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/util/mail/mimemessage/Part;

    .line 664
    .local v0, e:Lcom/htc/util/mail/mimemessage/Part;
    :try_start_0
    new-instance v2, Lcom/htc/util/mail/mimemessage/MimeMultipart;

    invoke-interface {v0}, Lcom/htc/util/mail/mimemessage/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/htc/util/mail/mimemessage/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 665
    .local v2, multiPart:Lcom/htc/util/mail/mimemessage/MimeMultipart;
    invoke-interface {v0, v2}, Lcom/htc/util/mail/mimemessage/Part;->setBody(Lcom/htc/util/mail/mimemessage/Body;)V

    .line 666
    iget-object v3, p0, Lcom/htc/util/mail/mimemessage/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/htc/util/mail/mimemessage/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    return-void

    .line 667
    .end local v2           #multiPart:Lcom/htc/util/mail/mimemessage/MimeMultipart;
    :catch_0
    move-exception v1

    .line 668
    .local v1, me:Lcom/htc/util/mail/mimemessage/MessagingException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
