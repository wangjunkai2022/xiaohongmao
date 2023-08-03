.class public Lcom/rudresh/videocompression/videocompression/a;
.super Ljava/lang/Object;
.source "AudioRecoder.java"


# instance fields
.field private a:[Ljava/nio/ByteBuffer;

.field private b:[Ljava/nio/ByteBuffer;

.field private c:[Ljava/nio/ByteBuffer;

.field private d:[Ljava/nio/ByteBuffer;

.field private final e:Landroid/media/MediaCodec$BufferInfo;

.field private final f:Landroid/media/MediaCodec$BufferInfo;

.field private final g:Landroid/media/MediaCodec;

.field private final h:Landroid/media/MediaCodec;

.field private final i:Landroid/media/MediaExtractor;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:I

.field private final n:I

.field private final o:I

.field public p:J

.field public q:J

.field public final r:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/media/MediaExtractor;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 3
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->f:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/a;->j:Z

    .line 5
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/a;->k:Z

    .line 6
    iput-boolean v0, p0, Lcom/rudresh/videocompression/videocompression/a;->l:Z

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    const/16 v1, 0x9c4

    .line 8
    iput v1, p0, Lcom/rudresh/videocompression/videocompression/a;->o:I

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcom/rudresh/videocompression/videocompression/a;->p:J

    .line 10
    iput-wide v1, p0, Lcom/rudresh/videocompression/videocompression/a;->q:J

    .line 11
    iput-object p2, p0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    .line 12
    iput p3, p0, Lcom/rudresh/videocompression/videocompression/a;->n:I

    const-string p2, "mime"

    .line 13
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p2

    iput-object p2, p0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p1, p3, p3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 15
    invoke-virtual {p2}, Landroid/media/MediaCodec;->start()V

    const-string v0, "audio/mp4a-latm"

    .line 16
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    const-string v2, "sample-rate"

    .line 17
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    const-string v3, "channel-count"

    .line 18
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 19
    invoke-static {v0, v2, p1}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/a;->r:Landroid/media/MediaFormat;

    const-string v0, "bitrate"

    const/high16 v2, 0x10000

    .line 20
    invoke-virtual {p1, v0, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 21
    invoke-virtual {v1, p1, p3, p3, v0}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 22
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 23
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/a;->a:[Ljava/nio/ByteBuffer;

    .line 24
    invoke-virtual {p2}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/a;->b:[Ljava/nio/ByteBuffer;

    .line 25
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getInputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/a;->c:[Ljava/nio/ByteBuffer;

    .line 26
    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/rudresh/videocompression/videocompression/a;->d:[Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 2
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 3
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    iget v1, p0, Lcom/rudresh/videocompression/videocompression/a;->n:I

    invoke-virtual {v0, v1}, Landroid/media/MediaExtractor;->unselectTrack(I)V

    .line 4
    iget-object v0, p0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lcom/rudresh/videocompression/videocompression/d;I)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/a;->j:Z

    const/4 v2, 0x1

    const-wide/16 v3, 0x9c4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-nez v1, :cond_3

    .line 2
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    if-ne v8, v6, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v8}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4
    iget-object v7, v0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v7, v1, v5}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v10

    .line 5
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    .line 6
    iget-wide v13, v0, Lcom/rudresh/videocompression/videocompression/a;->q:J

    const-wide/16 v15, 0x0

    cmp-long v1, v13, v15

    if-lez v1, :cond_1

    cmp-long v1, v11, v13

    if-ltz v1, :cond_1

    .line 7
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/a;->l:Z

    .line 8
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    :cond_1
    if-ltz v10, :cond_2

    .line 9
    iget-object v7, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    .line 10
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v11

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    .line 11
    invoke-virtual {v1}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v13

    .line 12
    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 13
    :cond_2
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->i:Landroid/media/MediaExtractor;

    invoke-virtual {v1}, Landroid/media/MediaExtractor;->advance()Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/a;->j:Z

    if-eqz v1, :cond_3

    .line 14
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v8

    .line 15
    iget-object v7, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x4

    invoke-virtual/range {v7 .. v13}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 16
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/a;->k:Z

    const/4 v7, -0x2

    const/4 v8, -0x3

    if-nez v1, :cond_8

    iget v1, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    if-ne v1, v6, :cond_8

    .line 17
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    .line 18
    invoke-virtual {v1, v9, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ne v1, v6, :cond_4

    goto :goto_1

    :cond_4
    if-ne v1, v8, :cond_5

    .line 19
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->b:[Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    if-ne v1, v7, :cond_6

    goto :goto_1

    .line 20
    :cond_6
    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v9, v9, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_7

    .line 21
    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    invoke-virtual {v9, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    .line 22
    :cond_7
    iput v1, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    .line 23
    :cond_8
    :goto_1
    iget v1, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    if-eq v1, v6, :cond_b

    .line 24
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v10

    if-ne v10, v6, :cond_9

    goto :goto_2

    .line 25
    :cond_9
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->c:[Ljava/nio/ByteBuffer;

    aget-object v1, v1, v10

    .line 26
    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v12, v9, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 27
    iget-wide v13, v9, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    if-ltz v12, :cond_a

    .line 28
    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->b:[Ljava/nio/ByteBuffer;

    iget v11, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    aget-object v9, v9, v11

    .line 29
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 30
    iget-object v11, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 31
    iget-object v11, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v11, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    add-int/2addr v11, v12

    invoke-virtual {v9, v11}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 32
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 33
    invoke-virtual {v1, v9}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 34
    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v15, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    invoke-virtual/range {v9 .. v15}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 35
    :cond_a
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->g:Landroid/media/MediaCodec;

    iget v9, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    invoke-virtual {v1, v9, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 36
    iput v6, v0, Lcom/rudresh/videocompression/videocompression/a;->m:I

    .line 37
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->e:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_b

    .line 38
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/a;->k:Z

    .line 39
    :cond_b
    :goto_2
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/a;->l:Z

    if-nez v1, :cond_12

    .line 40
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    iget-object v9, v0, Lcom/rudresh/videocompression/videocompression/a;->f:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v1, v9, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    if-ne v1, v6, :cond_c

    goto :goto_3

    :cond_c
    if-ne v1, v8, :cond_d

    .line 41
    iget-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/rudresh/videocompression/videocompression/a;->d:[Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_d
    if-ne v1, v7, :cond_e

    goto :goto_3

    .line 42
    :cond_e
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/a;->d:[Ljava/nio/ByteBuffer;

    aget-object v3, v3, v1

    .line 43
    iget-object v4, v0, Lcom/rudresh/videocompression/videocompression/a;->f:Landroid/media/MediaCodec$BufferInfo;

    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_f

    .line 44
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_3

    .line 45
    :cond_f
    iget v6, v4, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-eqz v6, :cond_10

    move-object/from16 v6, p1

    move/from16 v7, p2

    .line 46
    invoke-virtual {v6, v7, v3, v4, v5}, Lcom/rudresh/videocompression/videocompression/d;->s(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Z)J

    .line 47
    :cond_10
    iget-object v3, v0, Lcom/rudresh/videocompression/videocompression/a;->f:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_11

    .line 48
    iput-boolean v2, v0, Lcom/rudresh/videocompression/videocompression/a;->l:Z

    .line 49
    :cond_11
    iget-object v2, v0, Lcom/rudresh/videocompression/videocompression/a;->h:Landroid/media/MediaCodec;

    invoke-virtual {v2, v1, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 50
    :cond_12
    :goto_3
    iget-boolean v1, v0, Lcom/rudresh/videocompression/videocompression/a;->l:Z

    return v1
.end method
