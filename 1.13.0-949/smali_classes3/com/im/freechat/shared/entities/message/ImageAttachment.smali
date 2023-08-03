.class public final Lcom/im/freechat/shared/entities/message/ImageAttachment;
.super Ljava/lang/Object;
.source "Attachment.kt"

# interfaces
.implements Lcom/im/freechat/shared/entities/message/Attachment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u000f\n\u0002\u0018\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001Ba\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\u000c\u001a\u00020\r\u0012\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0002\u0010\u000fJ\t\u0010!\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\"\u001a\u00020\rH\u00c6\u0003J\t\u0010#\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010%\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010&\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\rH\u00c6\u0003Jy\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u000c\u001a\u00020\r2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\rH\u00c6\u0001J\u0013\u0010,\u001a\u00020-2\u0008\u0010.\u001a\u0004\u0018\u00010/H\u00d6\u0003J\t\u00100\u001a\u00020\rH\u00d6\u0001J\t\u00101\u001a\u00020\u0006H\u00d6\u0001R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0011R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0016R\u0013\u0010\t\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0011R\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0011R\u0013\u0010\n\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0011R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0011R\u0014\u0010\u001c\u001a\u00020\u001dX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000c\u001a\u00020\r\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0013\u00a8\u00062"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/ImageAttachment;",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "mediaId",
        "",
        "messageId",
        "localPath",
        "",
        "remoteUrl",
        "fileName",
        "mimeType",
        "previewRemoteUrl",
        "previewLocalPath",
        "width",
        "",
        "height",
        "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V",
        "getFileName",
        "()Ljava/lang/String;",
        "getHeight",
        "()I",
        "getLocalPath",
        "getMediaId",
        "()J",
        "getMessageId",
        "getMimeType",
        "getPreviewLocalPath",
        "getPreviewRemoteUrl",
        "getRemoteUrl",
        "type",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getWidth",
        "component1",
        "component10",
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

.field private final height:I

.field private final localPath:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mediaId:J

.field private final messageId:J

.field private final mimeType:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final previewLocalPath:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final previewRemoteUrl:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final remoteUrl:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final width:I


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
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
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mediaId:J

    .line 3
    iput-wide p3, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->messageId:J

    .line 4
    iput-object p5, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->localPath:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->remoteUrl:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->fileName:Ljava/lang/String;

    .line 7
    iput-object p8, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    .line 8
    iput-object p9, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    .line 9
    iput-object p10, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    .line 10
    iput p11, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    .line 11
    iput p12, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    .line 12
    sget-object p1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->IMAGE:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    iput-object p1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/message/ImageAttachment;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/ImageAttachment;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, p1

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide/from16 v4, p3

    :goto_1
    and-int/lit8 v6, v1, 0x4

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    move-object/from16 v6, p5

    :goto_2
    and-int/lit8 v7, v1, 0x8

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v1, 0x10

    if-eqz v8, :cond_4

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v1, 0x20

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v1, 0x40

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v1, 0x80

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v11, p10

    :goto_7
    and-int/lit16 v12, v1, 0x100

    if-eqz v12, :cond_8

    iget v12, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    goto :goto_8

    :cond_8
    move/from16 v12, p11

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget v1, v0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    goto :goto_9

    :cond_9
    move/from16 v1, p12

    :goto_9
    move-wide p1, v2

    move-wide/from16 p3, v4

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move-object/from16 p9, v10

    move-object/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    return v0
.end method

.method public final component2()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    return v0
.end method

.method public final copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/im/freechat/shared/entities/message/ImageAttachment;
    .locals 14
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
    .param p8    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lm8/g;
    .end annotation

    new-instance v13, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    move-object v0, v13

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v12}, Lcom/im/freechat/shared/entities/message/ImageAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-object v13
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
    instance-of v1, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    iget-object v3, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    iget v3, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    iget p1, p1, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    if-eq v1, p1, :cond_b

    return v2

    :cond_b
    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getHeight()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mediaId:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->messageId:J

    return-wide v0
.end method

.method public final getMimeType()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviewLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getPreviewRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageAttachment(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/ImageAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mimeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewRemoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewRemoteUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", previewLocalPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->previewLocalPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/ImageAttachment;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
