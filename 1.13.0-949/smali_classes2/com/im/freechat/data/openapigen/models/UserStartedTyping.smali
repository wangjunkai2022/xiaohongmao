.class public final Lcom/im/freechat/data/openapigen/models/UserStartedTyping;
.super Ljava/lang/Object;
.source "UserStartedTyping.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001\u0018B%\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0002\u0010\u0007J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J)\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\n\u0008\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u00d6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0016\u001a\u00020\u0017H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/UserStartedTyping;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "chatId",
        "",
        "userId",
        "type",
        "Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;",
        "(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)V",
        "getChatId",
        "()I",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;",
        "getUserId",
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

.field private final type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)V
    .locals 0
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "user_id"
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    .line 3
    iput p2, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    return-void
.end method

.method public synthetic constructor <init>(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;-><init>(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/UserStartedTyping;IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/UserStartedTyping;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget p2, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->copy(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    return v0
.end method

.method public final component3()Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    return-object v0
.end method

.method public final copy(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)Lcom/im/freechat/data/openapigen/models/UserStartedTyping;
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "chat_id"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "user_id"
        .end annotation
    .end param
    .param p3    # Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    invoke-direct {v0, p1, p2, p3}, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;-><init>(IILcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

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

.method public final getType()Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

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

    const-string v1, "UserStartedTyping(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/UserStartedTyping;->type:Lcom/im/freechat/data/openapigen/models/UserStartedTyping$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
