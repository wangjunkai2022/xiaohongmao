.class public final Lcom/im/freechat/data/openapigen/models/MessageEdited;
.super Ljava/lang/Object;
.source "MessageEdited.kt"

# interfaces
.implements Lcom/im/freechat/data/openapigen/models/SocketMessage;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0008\u0086\u0008\u0018\u00002\u00020\u0001:\u0001)BS\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0005\u0012\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u001b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\nH\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\rH\u00c6\u0003JW\u0010\"\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0003\u0010\u0006\u001a\u00020\u00052\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\rH\u00c6\u0001J\u0013\u0010#\u001a\u00020$2\u0008\u0010%\u001a\u0004\u0018\u00010&H\u00d6\u0003J\t\u0010\'\u001a\u00020\u0003H\u00d6\u0001J\t\u0010(\u001a\u00020\nH\u00d6\u0001R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0010R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006*"
    }
    d2 = {
        "Lcom/im/freechat/data/openapigen/models/MessageEdited;",
        "Lcom/im/freechat/data/openapigen/models/SocketMessage;",
        "chatId",
        "",
        "messageId",
        "",
        "editedAt",
        "type",
        "Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;",
        "text",
        "",
        "caption",
        "media",
        "Lcom/im/freechat/data/openapigen/models/MediaGroup;",
        "(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)V",
        "getCaption",
        "()Ljava/lang/String;",
        "getChatId",
        "()I",
        "getEditedAt",
        "()J",
        "getMedia",
        "()Lcom/im/freechat/data/openapigen/models/MediaGroup;",
        "getMessageId",
        "getText",
        "getType",
        "()Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "copy",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
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
.field private final caption:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final chatId:I

.field private final editedAt:J

.field private final media:Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final messageId:J

.field private final text:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)V
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
    .param p4    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "edited_at"
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/data/openapigen/models/MediaGroup;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    .line 3
    iput-wide p2, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    .line 4
    iput-wide p4, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    .line 5
    iput-object p6, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    .line 6
    iput-object p7, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    return-void
.end method

.method public synthetic constructor <init>(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 12

    and-int/lit8 v0, p10, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p10, 0x10

    if-eqz v0, :cond_1

    move-object v9, v1

    goto :goto_1

    :cond_1
    move-object/from16 v9, p7

    :goto_1
    and-int/lit8 v0, p10, 0x20

    if-eqz v0, :cond_2

    move-object v10, v1

    goto :goto_2

    :cond_2
    move-object/from16 v10, p8

    :goto_2
    and-int/lit8 v0, p10, 0x40

    if-eqz v0, :cond_3

    move-object v11, v1

    goto :goto_3

    :cond_3
    move-object/from16 v11, p9

    :goto_3
    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    .line 9
    invoke-direct/range {v2 .. v11}, Lcom/im/freechat/data/openapigen/models/MessageEdited;-><init>(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/openapigen/models/MessageEdited;IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;ILjava/lang/Object;)Lcom/im/freechat/data/openapigen/models/MessageEdited;
    .locals 10

    move-object v0, p0

    and-int/lit8 v1, p10, 0x1

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, p10, 0x2

    if-eqz v2, :cond_1

    iget-wide v2, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    goto :goto_1

    :cond_1
    move-wide v2, p2

    :goto_1
    and-int/lit8 v4, p10, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    goto :goto_2

    :cond_2
    move-wide v4, p4

    :goto_2
    and-int/lit8 v6, p10, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p6

    :goto_3
    and-int/lit8 v7, p10, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p7

    :goto_4
    and-int/lit8 v8, p10, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p8

    :goto_5
    and-int/lit8 v9, p10, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p9

    :goto_6
    move p1, v1

    move-wide p2, v2

    move-wide p4, v4

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    invoke-virtual/range {p0 .. p9}, Lcom/im/freechat/data/openapigen/models/MessageEdited;->copy(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)Lcom/im/freechat/data/openapigen/models/MessageEdited;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    return v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    return-wide v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    return-wide v0
.end method

.method public final component4()Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    return-object v0
.end method

.method public final copy(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)Lcom/im/freechat/data/openapigen/models/MessageEdited;
    .locals 11
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
    .param p4    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "edited_at"
        .end annotation
    .end param
    .param p6    # Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "type"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "text"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "caption"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Lcom/im/freechat/data/openapigen/models/MediaGroup;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v10, Lcom/im/freechat/data/openapigen/models/MessageEdited;

    move-object v0, v10

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/im/freechat/data/openapigen/models/MessageEdited;-><init>(IJJLcom/im/freechat/data/openapigen/models/MessageEdited$Type;Ljava/lang/String;Ljava/lang/String;Lcom/im/freechat/data/openapigen/models/MediaGroup;)V

    return-object v10
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
    instance-of v1, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    iget v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    iget-wide v5, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    iget-object p1, p1, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    return v2

    :cond_8
    return v0
.end method

.method public final getCaption()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    return-object v0
.end method

.method public final getChatId()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

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

.method public final getEditedAt()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    return-wide v0
.end method

.method public final getMedia()Lcom/im/freechat/data/openapigen/models/MediaGroup;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    return-object v0
.end method

.method public final getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    return-wide v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lcom/im/freechat/data/openapigen/models/MediaGroup;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageEdited(chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->chatId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->messageId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", editedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->editedAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->type:Lcom/im/freechat/data/openapigen/models/MessageEdited$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", caption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->caption:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", media="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/openapigen/models/MessageEdited;->media:Lcom/im/freechat/data/openapigen/models/MediaGroup;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
