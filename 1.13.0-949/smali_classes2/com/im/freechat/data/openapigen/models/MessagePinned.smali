.class public final Lcom/im/freechat/data/openapigen/models/MessagePinned;
.super Ljava/lang/Object;
.source "MessagePinned.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001aB%\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0016H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0018\u001a\u00020\u0019H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MessagePinned;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "chatId",
        "",
        "messageId",
        "",
        "type",
        "Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;",
        "(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)V",
        "getChatId",
        "()I",
        "getMessageId",
        "()J",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "",
        "Type",
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

.field private final type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)V
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
    .param p4    # Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    .line 3
    iput-wide p2, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    .line 4
    iput-object p4, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    return-void
.end method

.method public synthetic constructor <init>(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/MessagePinned;-><init>(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MessagePinned;IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MessagePinned;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-wide p2, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    :cond_1
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_2

    iget-object p4, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/MessagePinned;->copy(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)Lcom/im/freechat/data/openapigen/models/MessagePinned;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    return-wide v0
.end method

.method public final component3()Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    return-object v0
.end method

.method public final copy(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)Lcom/im/freechat/data/openapigen/models/MessagePinned;
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
    .param p4    # Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/MessagePinned;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/MessagePinned;-><init>(IJLcom/im/freechat/data/openapigen/models/MessagePinned$Type;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MessagePinned;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MessagePinned;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    invoke-static {p0}, Lcom/im/freechat/data/openapigen/models/SocketMessage$DefaultImpls;->getClassName(Lcom/im/freechat/data/openapigen/models/SocketMessage;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    return-wide v0
.end method

.method public final getType()Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessagePinned(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagePinned;->type:Lcom/im/freechat/data/openapigen/models/MessagePinned$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
