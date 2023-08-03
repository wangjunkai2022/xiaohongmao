.class public final Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;
.super Ljava/lang/Object;
.source "SendPhotoRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B1\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\u0010\u0010\u0017\u001a\u0004\u0018\u00010\tH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0012J:\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\tH\u00c6\u0001\u00a2\u0006\u0002\u0010\u0019J\u0013\u0010\u001a\u001a\u00020\u001b2\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u0007H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0015\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\n\n\u0002\u0010\u0013\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;",
        "",
        "chatId",
        "",
        "photo",
        "Lcom/im/freechat/data/openapigen/models/Photo;",
        "caption",
        "",
        "replyToMessageId",
        "",
        "(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)V",
        "getCaption",
        "()Ljava/lang/String;",
        "getChatId",
        "()I",
        "getPhoto",
        "()Lcom/im/freechat/data/openapigen/models/Photo;",
        "getReplyToMessageId",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final caption:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final chatId:I

.field private final photo:Lcom/im/freechat/data/openapigen/models/Photo;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final replyToMessageId:Ljava/lang/Long;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "reply_to_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "photo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p3, v0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move-object p4, v0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;-><init>(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->copy(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    return v0
.end method

.method public final component2()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public final copy(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/Photo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "photo"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Long;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "reply_to_message_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "photo"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;-><init>(ILcom/im/freechat/data/openapigen/models/Photo;Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCaption()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    return v0
.end method

.method public final getPhoto()Lcom/im/freechat/data/openapigen/models/Photo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    return-object v0
.end method

.method public final getReplyToMessageId()Ljava/lang/Long;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/Photo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendPhotoRequest(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", photo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->photo:Lcom/im/freechat/data/openapigen/models/Photo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", replyToMessageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/SendPhotoRequest;->replyToMessageId:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
