.class public Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;
.super Lcom/ksyun/media/streamer/encoder/Encoder;
.source "AVCodecVideoEncoder.java"

# interfaces
.implements Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ksyun/media/streamer/encoder/Encoder<",
        "Lcom/ksyun/media/streamer/framework/ImgBufFrame;",
        "Lcom/ksyun/media/streamer/framework/ImgPacket;",
        ">;",
        "Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;"
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String; = "AVCodecVideoEncoder"

.field private static final l:Z = false

.field private static final m:I = 0x1

.field private static final n:I = 0x200000


# instance fields
.field private o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

.field private p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

.field private q:Lcom/ksyun/media/streamer/util/FrameBufferCache;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;-><init>()V

    .line 2
    new-instance v0, Lcom/ksyun/media/streamer/util/FrameBufferCache;

    const/4 v1, 0x1

    const/high16 v2, 0x200000

    invoke-direct {v0, v1, v2}, Lcom/ksyun/media/streamer/util/FrameBufferCache;-><init>(II)V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->q:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;)I
    .locals 14

    .line 2
    instance-of v0, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    if-nez v0, :cond_0

    const/16 p1, -0x3ea

    return p1

    .line 3
    :cond_0
    check-cast p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 4
    new-instance v0, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-direct {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;-><init>()V

    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    .line 5
    invoke-virtual {v0, p0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper$a;)V

    .line 6
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    iget v2, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->codecId:I

    iget v3, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrate:I

    iget v4, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    iget v5, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v6, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v7, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->frameRate:F

    iget v8, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->iFrameInterval:F

    iget v9, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->scene:I

    iget v10, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->profile:I

    iget v11, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->crf:I

    iget-boolean v12, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->liveStreaming:Z

    iget v13, p1, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->bitrateMode:I

    invoke-virtual/range {v1 .. v13}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(IIIIIFFIIIZI)I

    move-result p1

    return p1
.end method

.method protected a()V
    .locals 10

    .line 7
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a()I

    .line 8
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->b()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x4

    move-object v1, p0

    .line 10
    invoke-virtual/range {v1 .. v9}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->onEncoded(JLjava/nio/ByteBuffer;JJI)V

    return-void
.end method

.method protected a(I)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(I)I

    return-void
.end method

.method protected synthetic a(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->c(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V

    return-void
.end method

.method protected a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 17
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->ref()V

    goto :goto_0

    .line 20
    :cond_1
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->q:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->poll(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video frame dropped, size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    .line 22
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AVCodecVideoEncoder"

    .line 23
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1

    .line 24
    :cond_2
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eq v1, v2, :cond_3

    .line 25
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 27
    iget-object v2, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 28
    iput-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    :cond_3
    :goto_0
    return v0
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 11
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 12
    check-cast p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 13
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 14
    iget v0, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iput v0, p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 15
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->pixFmt:I

    iput p1, p2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->pixFmt:I

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic b(Lcom/ksyun/media/streamer/framework/AVFrameBase;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->b(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)I

    move-result p1

    return p1
.end method

.method protected b(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 13
    :cond_0
    iget-boolean v1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    if-eqz v1, :cond_1

    .line 14
    iget v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 15
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->j:Z

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    iget-wide v2, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->pts:J

    iget v4, p1, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    move-result v0

    .line 17
    iget-object v1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_3

    .line 18
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->unref()V

    goto :goto_0

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->q:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    :cond_3
    :goto_0
    return v0
.end method

.method protected b()V
    .locals 5

    .line 12
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->a(Ljava/nio/ByteBuffer;JI)I

    return-void
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 3

    .line 2
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;

    .line 3
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 4
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/Encoder;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5
    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    if-ne v1, v2, :cond_0

    iget v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    iget v2, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "AVCodecVideoEncoder"

    const-string v2, "restart encoder"

    .line 6
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->b()V

    .line 8
    invoke-virtual {p0}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->a()V

    .line 9
    iget v1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->width:I

    iput v1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->width:I

    .line 10
    iget p1, p1, Lcom/ksyun/media/streamer/framework/ImgBufFormat;->height:I

    iput p1, v0, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->height:I

    .line 11
    iget-object p1, p0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->a(Ljava/lang/Object;)I

    :cond_1
    return-void
.end method

.method protected c(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->isRefCounted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/AVBufFrame;->unref()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->q:Lcom/ksyun/media/streamer/util/FrameBufferCache;

    iget-object p1, p1, Lcom/ksyun/media/streamer/framework/AVBufFrame;->buf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/util/FrameBufferCache;->offer(Ljava/nio/ByteBuffer;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected synthetic c(Lcom/ksyun/media/streamer/framework/AVFrameBase;)Z
    .locals 0

    .line 1
    check-cast p1, Lcom/ksyun/media/streamer/framework/ImgBufFrame;

    invoke-virtual {p0, p1}, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->a(Lcom/ksyun/media/streamer/framework/ImgBufFrame;)Z

    move-result p1

    return p1
.end method

.method public onEncoded(JLjava/nio/ByteBuffer;JJI)V
    .locals 12

    move-object v0, p0

    move/from16 v1, p8

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_0

    .line 1
    new-instance v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    iget-object v3, v0, Lcom/ksyun/media/streamer/encoder/Encoder;->b:Ljava/lang/Object;

    check-cast v3, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-direct {v2, v3}, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;)V

    iput-object v2, v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    .line 2
    iget-object v3, v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->o:Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;

    invoke-virtual {v3}, Lcom/ksyun/media/streamer/encoder/AVEncoderWrapper;->c()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/ksyun/media/streamer/framework/VideoCodecFormat;->avCodecParPtr:J

    .line 3
    iget-object v2, v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    invoke-virtual {p0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->c(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v2, Lcom/ksyun/media/streamer/framework/ImgPacket;

    iget-object v4, v0, Lcom/ksyun/media/streamer/encoder/AVCodecVideoEncoder;->p:Lcom/ksyun/media/streamer/framework/VideoCodecFormat;

    move-object v3, v2

    move-object v5, p3

    move-wide/from16 v6, p6

    move-wide/from16 v8, p4

    move-wide v10, p1

    invoke-direct/range {v3 .. v11}, Lcom/ksyun/media/streamer/framework/ImgPacket;-><init>(Lcom/ksyun/media/streamer/framework/VideoCodecFormat;Ljava/nio/ByteBuffer;JJJ)V

    .line 5
    iput v1, v2, Lcom/ksyun/media/streamer/framework/AVFrameBase;->flags:I

    .line 6
    invoke-virtual {p0, v2}, Lcom/ksyun/media/streamer/encoder/Encoder;->a(Lcom/ksyun/media/streamer/framework/AVPacketBase;)V

    .line 7
    invoke-virtual {v2}, Lcom/ksyun/media/streamer/framework/AVPacketBase;->unref()V

    return-void
.end method
