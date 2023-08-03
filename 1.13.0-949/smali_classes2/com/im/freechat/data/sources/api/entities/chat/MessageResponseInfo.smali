.class public final Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
.super Ljava/lang/Object;
.source "ChatResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B)\u0012\n\u0008\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u0011\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J2\u0010\u0013\u001a\u00020\u00002\n\u0008\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0018\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0005H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u000f\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;",
        "",
        "type",
        "",
        "text",
        "",
        "messageExpansion",
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)V",
        "getMessageExpansion",
        "()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;",
        "getText",
        "()Ljava/lang/String;",
        "getType",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "component1",
        "component2",
        "component3",
        "copy",
        "(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;",
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
.field private final messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final text:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;ILjava/lang/Object;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->copy(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    return-object v0
.end method

.method public final copy(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
    .locals 1
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;-><init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    iget-object p1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getMessageExpansion()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageResponseInfo(type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", messageExpansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->messageExpansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
