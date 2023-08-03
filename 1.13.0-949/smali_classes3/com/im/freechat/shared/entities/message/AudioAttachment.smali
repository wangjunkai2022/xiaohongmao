.class public final Lcom/im/freechat/shared/entities/message/AudioAttachment;
.super Ljava/lang/Object;
.source "Attachment.kt"

# interfaces
.implements Lcom/im/freechat/shared/entities/message/Attachment;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u00002\u00020\u0001B;\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0002\u0010\u000bJ\t\u0010%\u001a\u00020\u0003H\u00c6\u0003J\t\u0010&\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010*\u001a\u00020\nH\u00c6\u0003JK\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u00062\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010,\u001a\u00020\u001b2\u0008\u0010-\u001a\u0004\u0018\u00010.H\u00d6\u0003J\t\u0010/\u001a\u00020\nH\u00d6\u0001J\t\u00100\u001a\u00020\u0006H\u00d6\u0001R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0008\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0014\u0010\u0002\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018R\u0014\u0010\u0004\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0018R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0015R\u0014\u0010!\u001a\u00020\"X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u00061"
    }
    d2 = {
        "Lcom/im/freechat/shared/entities/message/AudioAttachment;",
        "Lcom/im/freechat/shared/entities/message/Attachment;",
        "mediaId",
        "",
        "messageId",
        "localPath",
        "",
        "remoteUrl",
        "fileName",
        "duration",
        "",
        "(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V",
        "curPosition",
        "",
        "getCurPosition",
        "()F",
        "setCurPosition",
        "(F)V",
        "getDuration",
        "()I",
        "getFileName",
        "()Ljava/lang/String;",
        "getLocalPath",
        "getMediaId",
        "()J",
        "getMessageId",
        "playing",
        "",
        "getPlaying",
        "()Z",
        "setPlaying",
        "(Z)V",
        "getRemoteUrl",
        "type",
        "Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "getType",
        "()Lcom/im/freechat/shared/entities/message/Message$MediaType;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
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
.field private curPosition:F

.field private final duration:I

.field private final fileName:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final localPath:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final mediaId:J

.field private final messageId:J

.field private playing:Z

.field private final remoteUrl:Ljava/lang/String;
    .annotation build Lm8/h;
    .end annotation
.end field

.field private final type:Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->mediaId:J

    .line 3
    iput-wide p3, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->messageId:J

    .line 4
    iput-object p5, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->localPath:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->remoteUrl:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->fileName:Ljava/lang/String;

    .line 7
    iput p8, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    .line 8
    sget-object p1, Lcom/im/freechat/shared/entities/message/Message$MediaType;->AUDIO:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    iput-object p1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/im/freechat/shared/entities/message/AudioAttachment;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)Lcom/im/freechat/shared/entities/message/AudioAttachment;
    .locals 9

    and-int/lit8 v0, p9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p9, 0x2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v2

    goto :goto_1

    :cond_1
    move-wide v2, p3

    :goto_1
    and-int/lit8 v4, p9, 0x4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, p5

    :goto_2
    and-int/lit8 v5, p9, 0x8

    if-eqz v5, :cond_3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_3
    move-object v5, p6

    :goto_3
    and-int/lit8 v6, p9, 0x10

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_4
    move-object/from16 v6, p7

    :goto_4
    and-int/lit8 v7, p9, 0x20

    if-eqz v7, :cond_5

    move-object v7, p0

    iget v8, v7, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    goto :goto_5

    :cond_5
    move-object v7, p0

    move/from16 v8, p8

    :goto_5
    move-wide p1, v0

    move-wide p3, v2

    move-object p5, v4

    move-object p6, v5

    move-object/from16 p7, v6

    move/from16 p8, v8

    invoke-virtual/range {p0 .. p8}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/im/freechat/shared/entities/message/AudioAttachment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component2()J
    .locals 2

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v0

    return-wide v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    return v0
.end method

.method public final copy(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/im/freechat/shared/entities/message/AudioAttachment;
    .locals 10
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
    .annotation build Lm8/g;
    .end annotation

    new-instance v9, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    move-object v0, v9

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lcom/im/freechat/shared/entities/message/AudioAttachment;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v9
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
    instance-of v1, p1, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/im/freechat/shared/entities/message/AudioAttachment;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    iget p1, p1, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCurPosition()F
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->curPosition:F

    return v0
.end method

.method public final getDuration()I
    .locals 1

    iget v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    return v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->mediaId:J

    return-wide v0
.end method

.method public getMessageId()J
    .locals 2

    iget-wide v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->messageId:J

    return-wide v0
.end method

.method public final getPlaying()Z
    .locals 1

    iget-boolean v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->playing:Z

    return v0
.end method

.method public getRemoteUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lm8/h;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->remoteUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/im/freechat/shared/entities/message/Message$MediaType;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->type:Lcom/im/freechat/shared/entities/message/Message$MediaType;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v0

    invoke-static {v0, v1}, La5/a;->a(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, La5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setCurPosition(F)V
    .locals 0

    iput p1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->curPosition:F

    return-void
.end method

.method public final setPlaying(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->playing:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lm8/g;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioAttachment(mediaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMediaId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getMessageId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", localPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", remoteUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getRemoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fileName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/im/freechat/shared/entities/message/AudioAttachment;->getFileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/im/freechat/shared/entities/message/AudioAttachment;->duration:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
