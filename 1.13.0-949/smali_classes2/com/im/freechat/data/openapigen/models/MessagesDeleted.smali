.class public final Lcom/im/freechat/data/openapigen/models/MessagesDeleted;
.super Ljava/lang/Object;
.source "MessagesDeleted.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u001bB+\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u000e\u0008\u0001\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\u000f\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J/\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u000e\u0008\u0003\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0017\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MessagesDeleted;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "chatId",
        "",
        "messageIds",
        "",
        "",
        "type",
        "Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;",
        "(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)V",
        "getChatId",
        "()I",
        "getMessageIds",
        "()Ljava/util/List;",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;",
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

.field private final messageIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_ids"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;",
            ")V"
        }
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;-><init>(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MessagesDeleted;ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MessagesDeleted;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->copy(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    return v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    return-object v0
.end method

.method public final copy(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)Lcom/im/freechat/data/openapigen/models/MessagesDeleted;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message_ids"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;",
            ")",
            "Lcom/im/freechat/data/openapigen/models/MessagesDeleted;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "messageIds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;-><init>(ILjava/util/List;Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

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

.method public final getMessageIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

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
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessagesDeleted(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->messageIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessagesDeleted;->type:Lcom/im/freechat/data/openapigen/models/MessagesDeleted$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
