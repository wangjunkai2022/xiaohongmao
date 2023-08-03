.class public final Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;
.super Ljava/lang/Object;
.source "ChatRequest.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0019\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bc\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0018\u0008\u0001\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\rJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001d\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u0019\u0010 \u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000bH\u00c6\u0003J\u0010\u0010!\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013Jl\u0010\"\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\n\u0008\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00032\n\u0008\u0003\u0010\u0008\u001a\u0004\u0018\u00010\t2\u0018\u0008\u0003\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\u0003H\u00c6\u0001\u00a2\u0006\u0002\u0010#J\u0013\u0010$\u001a\u00020%2\u0008\u0010&\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\t\u0010(\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0013\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R!\u0010\n\u001a\u0012\u0012\u0004\u0012\u00020\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010\u000b\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u000fR\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0013R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006)"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;",
        "",
        "userId",
        "",
        "chatId",
        "",
        "message",
        "type",
        "expansion",
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;",
        "mentionList",
        "",
        "mentionAll",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)V",
        "getChatId",
        "()Ljava/lang/String;",
        "getExpansion",
        "()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;",
        "getMentionAll",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMentionList",
        "()Ljava/util/Map;",
        "getMessage",
        "getType",
        "getUserId",
        "()I",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;",
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
.field private final chatId:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mentionAll:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mentionList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final userId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)V
    .locals 1
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "conv_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_list"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_all"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string v0, "chatId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    .line 6
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    .line 7
    iput-object p6, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    .line 8
    iput-object p7, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;ILjava/lang/Object;)Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;
    .locals 5

    and-int/lit8 p9, p8, 0x1

    if-eqz p9, :cond_0

    iget p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    :cond_0
    and-int/lit8 p9, p8, 0x2

    if-eqz p9, :cond_1

    iget-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    :cond_1
    move-object p9, p2

    and-int/lit8 p2, p8, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p8, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p8, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p8, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    :cond_5
    move-object v3, p6

    and-int/lit8 p2, p8, 0x40

    if-eqz p2, :cond_6

    iget-object p7, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    :cond_6
    move-object v4, p7

    move-object p2, p0

    move p3, p1

    move-object p4, p9

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    move-object p9, v4

    invoke-virtual/range {p2 .. p9}, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    return-object v0
.end method

.method public final component6()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    return-object v0
.end method

.method public final copy(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;
    .locals 9
    .param p1    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unique_name"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "conv_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "message"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "_type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "expansion"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/util/Map;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_list"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_all"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "chatId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;

    move-object v1, v0

    move v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;Ljava/util/Map;Ljava/lang/Integer;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    iget v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getChatId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpansion()Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    return-object v0
.end method

.method public final getMentionAll()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getMentionList()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getUserId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendMessageRequest(userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->type:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", expansion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->expansion:Lcom/im/freechat/data/sources/api/entities/chat/MessageExpansion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mentionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mentionAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/SendMessageRequest;->mentionAll:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
