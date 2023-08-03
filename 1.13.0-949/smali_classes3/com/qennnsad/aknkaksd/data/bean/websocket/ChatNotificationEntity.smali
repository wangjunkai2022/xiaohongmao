.class public final Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;
.super Ljava/lang/Object;
.source "ChatNotification.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\"\u0008\u0086\u0008\u0018\u00002\u00020\u0001BY\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0008\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010J\t\u0010\"\u001a\u00020\u0003H\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0006H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0008H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003J\u0010\u0010)\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010*\u001a\u0004\u0018\u00010\u000fH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0019Jt\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u00c6\u0001\u00a2\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020\u000f2\u0008\u0010.\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010/\u001a\u00020\u0003H\u00d6\u0001J\t\u00100\u001a\u00020\u0008H\u00d6\u0001R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\r\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\n\n\u0002\u0010\u001a\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u001cR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010 R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0012\u00a8\u00061"
    }
    d2 = {
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;",
        "",
        "offset",
        "",
        "length",
        "type",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;",
        "color",
        "",
        "url",
        "target",
        "jump",
        "Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;",
        "jumpId",
        "jumpUserIsMystery",
        "",
        "(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V",
        "getColor",
        "()Ljava/lang/String;",
        "getJump",
        "()Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;",
        "getJumpId",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getJumpUserIsMystery",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "getLength",
        "()I",
        "getOffset",
        "getTarget",
        "getType",
        "()Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;",
        "getUrl",
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
        "(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;",
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
.field private final color:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final jumpId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation

    .annotation build Lm8/h;
    .end annotation
.end field

.field private final jumpUserIsMystery:Ljava/lang/Boolean;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final length:I

.field private final offset:I

.field private final target:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V
    .locals 1
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;
        .annotation build Lm8/g;
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
    .param p7    # Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    .line 3
    iput p2, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    .line 4
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    .line 5
    iput-object p4, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    .line 8
    iput-object p7, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    .line 9
    iput-object p8, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    .line 10
    iput-object p9, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic copy$default(Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;ILjava/lang/Object;)Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;
    .locals 10

    move-object v0, p0

    move/from16 v1, p10

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget v3, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-object v7, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p9

    :goto_8
    move p1, v2

    move p2, v3

    move-object p3, v4

    move-object p4, v5

    move-object p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v1

    invoke-virtual/range {p0 .. p9}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->copy(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    return v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    return v0
.end method

.method public final component3()Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    return-object v0
.end method

.method public final component8()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component9()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final copy(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;
    .locals 11
    .param p3    # Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;
        .annotation build Lm8/g;
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
    .param p7    # Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Boolean;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    const-string v0, "type"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;-><init>(IILcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;Ljava/lang/Integer;Ljava/lang/Boolean;)V

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
    instance-of v1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    iget v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    iget-object p1, p1, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    return-object v0
.end method

.method public final getJump()Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    return-object v0
.end method

.method public final getJumpId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getJumpUserIsMystery()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    return v0
.end method

.method public final getOffset()I
    .locals 1

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    return v0
.end method

.method public final getTarget()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChatNotificationEntity(offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->type:Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatEntityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->color:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", target="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->target:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", jump="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jump:Lcom/qennnsad/aknkaksd/data/bean/websocket/JumpType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jumpId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", jumpUserIsMystery="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/data/bean/websocket/ChatNotificationEntity;->jumpUserIsMystery:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
