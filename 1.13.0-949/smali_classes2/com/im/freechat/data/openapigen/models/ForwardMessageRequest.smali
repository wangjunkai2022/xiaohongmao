.class public final Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;
.super Ljava/lang/Object;
.source "ForwardMessageRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0006H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;",
        "",
        "chatId",
        "",
        "fromChatId",
        "forwardMessageId",
        "",
        "(IIJ)V",
        "getChatId",
        "()I",
        "getForwardMessageId",
        "()J",
        "getFromChatId",
        "component1",
        "component2",
        "component3",
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

.field private final forwardMessageId:J

.field private final fromChatId:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_chat_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_message_id"
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    .line 3
    iput p2, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    .line 4
    iput-wide p3, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;IIJILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-wide p3, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->copy(IIJ)Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    return v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    return-wide v0
.end method

.method public final copy(IIJ)Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_chat_id"
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "forward_message_id"
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;-><init>(IIJ)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    return v0
.end method

.method public final getForwardMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    return-wide v0
.end method

.method public final getFromChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

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

    const-string v1, "ForwardMessageRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromChatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->fromChatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", forwardMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/ForwardMessageRequest;->forwardMessageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
