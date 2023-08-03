.class public final Lcom/im/freechat/data/openapigen/models/PinMessageRequest;
.super Ljava/lang/Object;
.source "PinMessageRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/PinMessageRequest;",
        "",
        "chatId",
        "",
        "messageId",
        "",
        "(IJ)V",
        "getChatId",
        "()I",
        "getMessageId",
        "()J",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
        "data_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final chatId:I

.field private final messageId:J


# direct methods
.method public constructor <init>(IJ)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_id"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    .line 3
    iput-wide p2, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/PinMessageRequest;IJILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/PinMessageRequest;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    iget-wide p2, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->copy(IJ)Lcom/im/freechat/data/openapigen/models/PinMessageRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    return-wide v0
.end method

.method public final copy(IJ)Lcom/im/freechat/data/openapigen/models/PinMessageRequest;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_id"
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;-><init>(IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    return v0
.end method

.method public final getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PinMessageRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/PinMessageRequest;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
