.class public final Lcom/im/freechat/data/openapigen/models/MessageReceived;
.super Ljava/lang/Object;
.source "MessageReceived.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0016B\u001b\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000c\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u001f\u0010\r\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u00d6\u0003J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MessageReceived;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "message",
        "Lcom/im/freechat/data/openapigen/models/Message;",
        "type",
        "Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;",
        "(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)V",
        "getMessage",
        "()Lcom/im/freechat/data/openapigen/models/Message;",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "",
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
.field private final message:Lcom/im/freechat/data/openapigen/models/Message;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)V
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/Message;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MessageReceived;-><init>(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MessageReceived;Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MessageReceived;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MessageReceived;->copy(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)Lcom/im/freechat/data/openapigen/models/MessageReceived;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/im/freechat/data/openapigen/models/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    return-object v0
.end method

.method public final component2()Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    return-object v0
.end method

.method public final copy(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)Lcom/im/freechat/data/openapigen/models/MessageReceived;
    .locals 1
    .param p1    # Lcom/im/freechat/data/openapigen/models/Message;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/openapigen/models/MessageReceived;

    invoke-direct {v0, p1, p2}, Lcom/im/freechat/data/openapigen/models/MessageReceived;-><init>(Lcom/im/freechat/data/openapigen/models/Message;Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MessageReceived;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MessageReceived;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
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

.method public final getMessage()Lcom/im/freechat/data/openapigen/models/Message;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    invoke-virtual {v0}, Lcom/im/freechat/data/openapigen/models/Message;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

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

    const-string v1, "MessageReceived(message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->message:Lcom/im/freechat/data/openapigen/models/Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageReceived;->type:Lcom/im/freechat/data/openapigen/models/MessageReceived$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
