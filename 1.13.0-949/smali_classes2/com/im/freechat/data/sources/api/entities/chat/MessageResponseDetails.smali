.class public final Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
.super Ljava/lang/Object;
.source "ChatResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u0018\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\nH\u00c6\u0003J?\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\n\u0008\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0008\u0003\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001e\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001f\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000fR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006 "
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;",
        "",
        "systemMessageType",
        "",
        "eventType",
        "",
        "senderId",
        "userExpansion",
        "Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;",
        "contentDetails",
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;",
        "(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)V",
        "getContentDetails",
        "()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;",
        "getEventType",
        "()Ljava/lang/String;",
        "getSenderId",
        "getSystemMessageType",
        "()I",
        "getUserExpansion",
        "()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
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
.field private final contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final eventType:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final senderId:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final systemMessageType:I

.field private final userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "event_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_user_unique_name"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_user_expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "senderId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDetails"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;ILjava/lang/Object;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    return-object v0
.end method

.method public final component5()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
    .locals 7
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg_type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "event_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_user_unique_name"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "from_user_expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "senderId"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentDetails"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    move-object v1, v0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    iget v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    iget-object p1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getContentDetails()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    return-object v0
.end method

.method public final getEventType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSenderId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSystemMessageType()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    return v0
.end method

.method public final getUserExpansion()Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageResponseDetails(systemMessageType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->systemMessageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->eventType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", senderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->senderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", userExpansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->userExpansion:Lcom/im/freechat/data/sources/api/entities/chat/UserExpansionInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", contentDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->contentDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
