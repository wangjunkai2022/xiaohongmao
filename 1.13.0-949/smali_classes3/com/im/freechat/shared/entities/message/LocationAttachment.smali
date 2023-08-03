.class public final Lcom/im/freechat/shared/entities/message/LocationAttachment;
.super Ljava/lang/Object;
.source "Attachment.kt"

# interfaces
.implements Lcom/im/freechat/shared/entities/message/Attachment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B[\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000fJ\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u0010\u0010(\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010)\u001a\u0004\u0018\u00010\nH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0013J\u0010\u0010*\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016J\u0010\u0010+\u001a\u0004\u0018\u00010\rH\u00c6\u0003\u00a2\u0006\u0002\u0010\u0016Jv\u0010,\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\r2\n\u0008\u0002\u0010\u000e\u001a\u0004\u0018\u00010\rH\u00c6\u0001\u00a2\u0006\u0002\u0010-J\u0013\u0010.\u001a\u00020/2\u0008\u00100\u001a\u0004\u0018\u000101H\u00d6\u0003J\t\u00102\u001a\u00020\nH\u00d6\u0001J\t\u00103\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0015\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011R\u0015\u0010\u000e\u001a\u0004\u0018\u00010\r\u00a2\u0006\n\n\u0002\u0010\u0017\u001a\u0004\u0008\u0019\u0010\u0016R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001bR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0011R\u0014\u0010\u001e\u001a\u00020\u001fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0015\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\n\n\u0002\u0010\u0014\u001a\u0004\u0008\"\u0010\u0013\u00a8\u00064"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/LocationAttachment;",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "mediaId",
        "",
        "messageId",
        "localPath",
        "",
        "remoteUrl",
        "fileName",
        "width",
        "",
        "height",
        "latitude",
        "",
        "longitude",
        "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V",
        "getFileName",
        "()Ljava/lang/String;",
        "getHeight",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getLatitude",
        "()Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "getLocalPath",
        "getLongitude",
        "getMediaId",
        "()J",
        "getMessageId",
        "getRemoteUrl",
        "type",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getWidth",
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
        "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/im/freechat/shared/entities/message/LocationAttachment;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "shared"
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
.field private final fileName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final height:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final latitude:Ljava/lang/Float;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final localPath:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final longitude:Ljava/lang/Float;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mediaId:J

.field private final messageId:J

.field private final remoteUrl:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final width:Ljava/lang/Integer;
    .annotation build Lm8/h;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->mediaId:J

    .line 3
    iput-wide p3, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->messageId:J

    .line 4
    iput-object p5, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->localPath:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->remoteUrl:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->fileName:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    .line 8
    iput-object p9, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    .line 9
    iput-object p10, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    .line 10
    iput-object p11, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    .line 11
    sget-object p1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->LOCATION:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    iput-object p1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/message/LocationAttachment;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;ILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/LocationAttachment;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    goto :goto_8

    :cond_8
    move-object/from16 v1, p11

    :goto_8
    move-wide p1, v2

    move-wide p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/im/freechat/shared/entities/message/LocationAttachment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component7()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final component8()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final component9()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public final copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)Lcom/im/freechat/shared/entities/message/LocationAttachment;
    .locals 13
    .param p5    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/Integer;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p11    # Ljava/lang/Float;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v12, Lcom/im/freechat/shared/entities/message/LocationAttachment;

    move-object v0, v12

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v11}, Lcom/im/freechat/shared/entities/message/LocationAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Float;Ljava/lang/Float;)V

    return-object v12
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
    instance-of v1, p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    iget-object p1, p1, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    return v2

    :cond_a
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLatitude()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getLongitude()Ljava/lang/Float;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->mediaId:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->messageId:J

    return-wide v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method

.method public final getWidth()Ljava/lang/Integer;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    if-nez v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LocationAttachment(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/LocationAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->width:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->height:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", latitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->latitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", longitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/LocationAttachment;->longitude:Ljava/lang/Float;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
