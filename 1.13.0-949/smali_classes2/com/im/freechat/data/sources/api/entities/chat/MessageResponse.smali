.class public final Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;
.super Ljava/lang/Object;
.source "ChatResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010$\n\u0002\u0008\"\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bs\u0012\u0008\u0008\u0001\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0005\u001a\u00020\u0006\u0012\n\u0008\u0001\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\n\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0008\u0012\u0016\u0008\u0001\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0006H\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0017J\u0010\u0010\'\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010!J\u000b\u0010(\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010)\u001a\u00020\rH\u00c6\u0003J\t\u0010*\u001a\u00020\u0008H\u00c6\u0003J\u0017\u0010+\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0003J|\u0010,\u001a\u00020\u00002\u0008\u0008\u0003\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0003\u0010\u0005\u001a\u00020\u00062\n\u0008\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0003\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0003\u0010\u000b\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0003\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0003\u0010\u000e\u001a\u00020\u00082\u0016\u0008\u0003\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010H\u00c6\u0001\u00a2\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020\n2\u0008\u0010/\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00100\u001a\u00020\u0008H\u00d6\u0001J\t\u00101\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0013R\u0015\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0007\u0010\u0017R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0013R\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u001f\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\"\u001a\u0004\u0008 \u0010!\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;",
        "",
        "id",
        "",
        "chatId",
        "createTime",
        "",
        "isSend",
        "",
        "unread",
        "",
        "mediaGroupId",
        "msgDetails",
        "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;",
        "mentionAll",
        "mentionList",
        "",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)V",
        "getChatId",
        "()Ljava/lang/String;",
        "getCreateTime",
        "()J",
        "getId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getMediaGroupId",
        "getMentionAll",
        "()I",
        "getMentionList",
        "()Ljava/util/Map;",
        "getMsgDetails",
        "()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;",
        "getUnread",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;",
        "equals",
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

.field private final createTime:J

.field private final id:Ljava/lang/String;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final isSend:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mediaGroupId:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mentionAll:I

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

.field private final msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final unread:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "conv_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "ctime"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "is_send"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unread"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media_group_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_all"
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_list"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgDetails"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    .line 4
    iput-wide p3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    .line 5
    iput-object p5, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    .line 6
    iput-object p6, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    .line 7
    iput-object p7, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    .line 8
    iput-object p8, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    .line 9
    iput p9, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    .line 10
    iput-object p10, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;ILjava/lang/Object;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;
    .locals 11

    move-object v0, p0

    move/from16 v1, p11

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-wide v4, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    goto :goto_2

    :cond_2
    move-wide v4, p3

    :goto_2
    and-int/lit8 v6, v1, 0x8

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    goto :goto_3

    :cond_3
    move-object/from16 v6, p5

    :goto_3
    and-int/lit8 v7, v1, 0x10

    if-eqz v7, :cond_4

    iget-object v7, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    goto :goto_4

    :cond_4
    move-object/from16 v7, p6

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    goto :goto_6

    :cond_6
    move-object/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p10

    :goto_8
    move-object p1, v2

    move-object p2, v3

    move-wide p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v1

    invoke-virtual/range {p0 .. p10}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    return-wide v0
.end method

.method public final component4()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component5()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    return-object v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    return v0
.end method

.method public final component9()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "conv_id"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # J
        .annotation runtime Lcom/squareup/moshi/g;
            name = "ctime"
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "is_send"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Boolean;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "unread"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "media_group_id"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "msg"
        .end annotation

        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_all"
        .end annotation
    .end param
    .param p10    # Ljava/util/Map;
        .annotation runtime Lcom/squareup/moshi/g;
            name = "mention_list"
        .end annotation

        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "chatId"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "msgDetails"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;

    move-object v1, v0

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;ILjava/util/Map;)V

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
    instance-of v1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    iget-wide v5, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    iget-object v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    iget v3, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    iget-object p1, p1, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getChatId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    return-object v0
.end method

.method public final getCreateTime()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    return-wide v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMediaGroupId()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMentionAll()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    return v0
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

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    return-object v0
.end method

.method public final getMsgDetails()Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    return-object v0
.end method

.method public final getUnread()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    invoke-virtual {v1}, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    return v0
.end method

.method public final isSend()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MessageResponse(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", chatId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->chatId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", createTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->createTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isSend="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->isSend:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->unread:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mediaGroupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mediaGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", msgDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->msgDetails:Lcom/im/freechat/data/sources/api/entities/chat/MessageResponseDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mentionAll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionAll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mentionList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/data/sources/api/entities/chat/MessageResponse;->mentionList:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
