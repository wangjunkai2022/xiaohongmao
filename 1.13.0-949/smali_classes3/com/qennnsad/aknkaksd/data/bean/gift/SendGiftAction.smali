.class public final Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
.super Ljava/lang/Object;
.source "SendGiftAction.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0014\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0086\u0008\u0018\u00002\u00020\u0001B\u000f\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004BW\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u0008\u0012\u0006\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u001e\u001a\u00020\u0000J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010 \u001a\u00020\u0008H\u00c6\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\"\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010%\u001a\u00020\u0008H\u00c6\u0003J\t\u0010&\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003Jm\u0010(\u001a\u00020\u00002\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0008H\u00c6\u0001J\u0013\u0010)\u001a\u00020\u001d2\u0008\u0010*\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010+\u001a\u00020\u0008H\u00d6\u0001J\t\u0010,\u001a\u00020\u0006H\u00d6\u0001R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0011\u0010\r\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0011\u0010\u000f\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0014R\u0013\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0013\u0010\u000c\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0011\u0010\u000e\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0014R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0014\u00a8\u0006-"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;",
        "",
        "sendGiftMsg",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;",
        "(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V",
        "fromUid",
        "",
        "roomId",
        "",
        "nickname",
        "avatar",
        "giftName",
        "giftIcon",
        "combo",
        "intcombe",
        "effortDuration",
        "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V",
        "getAvatar",
        "()Ljava/lang/String;",
        "getCombo",
        "()I",
        "getEffortDuration",
        "getFromUid",
        "getGiftIcon",
        "getGiftName",
        "getIntcombe",
        "getNickname",
        "getRoomId",
        "canBeJoined",
        "",
        "action",
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
        "equals",
        "other",
        "hashCode",
        "toString",
        "app_pron_playerRelease"
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
.field private final avatar:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final combo:I

.field private final effortDuration:I

.field private final fromUid:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final giftIcon:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final giftName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final intcombe:I

.field private final nickname:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final roomId:I


# direct methods
.method public constructor <init>(Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;)V
    .locals 11
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "sendGiftMsg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getFromUserAvatar()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getRoom_id()I

    move-result v3

    .line 13
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getFromUserId()Ljava/lang/String;

    move-result-object v2

    .line 14
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftCount()I

    move-result v8

    .line 15
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getFromUserName()Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftIcon()Ljava/lang/String;

    move-result-object v7

    .line 17
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getGiftName()Ljava/lang/String;

    move-result-object v6

    .line 18
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getComboHit()I

    move-result v9

    .line 19
    invoke-virtual {p1}, Lcom/qennnsad/aknkaksd/data/bean/websocket/SendGiftMsg;->getEffortDuration()I

    move-result v10

    move-object v1, p0

    .line 20
    invoke-direct/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    .line 8
    iput p7, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    .line 9
    iput p8, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    .line 10
    iput p9, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget v8, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget v9, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    goto :goto_7

    :cond_7
    move/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget v1, v0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    goto :goto_8

    :cond_8
    move/from16 v1, p9

    :goto_8
    move-object p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final canBeJoined(Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;)Z
    .locals 2
    .param p1    # Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    iget-object v1, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    iget-object v1, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    return v0
.end method

.method public final copy(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v10, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    move-object v0, v10

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v10
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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    iget p1, p1, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    if-eq v1, p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getAvatar()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    return-object v0
.end method

.method public final getCombo()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    return v0
.end method

.method public final getEffortDuration()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    return v0
.end method

.method public final getFromUid()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    return-object v0
.end method

.method public final getGiftIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getGiftName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntcombe()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    return v0
.end method

.method public final getNickname()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    return-object v0
.end method

.method public final getRoomId()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendGiftAction(fromUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->fromUid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", roomId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->roomId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nickname="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", giftName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", giftIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->giftIcon:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", combo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->combo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", intcombe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->intcombe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", effortDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/gift/SendGiftAction;->effortDuration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
