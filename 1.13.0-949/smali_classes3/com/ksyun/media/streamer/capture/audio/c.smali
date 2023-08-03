.class public Lcom/ksyun/media/streamer/capture/audio/c;
.super Ljava/lang/Object;
.source "KSYAudioRecord.java"

# interfaces
.implements Lcom/ksyun/media/streamer/capture/audio/a;


# static fields
.field private static final a:Ljava/lang/String; = "KSYAudioRecord"


# instance fields
.field private b:Landroid/media/AudioRecord;

.field private c:F

.field private d:Z

.field private e:J


# direct methods
.method public constructor <init>(III)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->c:F

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    const/16 v0, 0x10

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    const/16 v0, 0xc

    const/16 v4, 0xc

    :goto_0
    mul-int p3, p3, p2

    mul-int/lit8 v6, p3, 0x2

    .line 3
    new-instance p2, Landroid/media/AudioRecord;

    const/4 v2, 0x1

    const/4 v5, 0x2

    move-object v1, p2

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object p2, p0, Lcom/ksyun/media/streamer/capture/audio/c;->b:Landroid/media/AudioRecord;

    return-void
.end method

.method private a(I)S
    .locals 2

    const v0, 0x8000

    add-int/2addr v0, p1

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    shr-int/lit8 p1, p1, 0x1f

    xor-int/lit16 p1, p1, 0x7fff

    int-to-short p1, p1

    return p1

    :cond_0
    int-to-short p1, p1

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 8

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0, p1, p2}, Landroid/media/AudioRecord;->read(Ljava/nio/ByteBuffer;I)I

    move-result p2

    if-gtz p2, :cond_0

    return p2

    .line 5
    :cond_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 7
    iget-boolean v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 8
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    const/16 v0, 0x1fff

    const/4 v6, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 11
    invoke-virtual {p1, v6}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v7

    if-lt v7, v0, :cond_1

    .line 12
    iget-wide v6, p0, Lcom/ksyun/media/streamer/capture/audio/c;->e:J

    sub-long v6, v2, v6

    div-long/2addr v6, v4

    long-to-int v0, v6

    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Latency measured : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "KSYAudioRecord"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 14
    :goto_2
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 15
    invoke-virtual {p1, v0, v1}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 16
    :cond_3
    iget-wide v4, p0, Lcom/ksyun/media/streamer/capture/audio/c;->e:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0x4c4b40

    cmp-long v0, v4, v6

    if-ltz v0, :cond_4

    .line 17
    iput-wide v2, p0, Lcom/ksyun/media/streamer/capture/audio/c;->e:J

    const/16 v0, 0x7fff

    .line 18
    invoke-virtual {p1, v1, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    .line 19
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_4

    .line 20
    :cond_5
    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->c:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_7

    .line 21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object p1

    .line 22
    :goto_3
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 23
    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/ksyun/media/streamer/capture/audio/c;->c:F

    mul-float v0, v0, v2

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/ksyun/media/streamer/capture/audio/c;->a(I)S

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/nio/ShortBuffer;->put(IS)Ljava/nio/ShortBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 24
    :cond_6
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->rewind()Ljava/nio/Buffer;

    :cond_7
    :goto_4
    return p2
.end method

.method public a(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/c;->c:F

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/ksyun/media/streamer/capture/audio/c;->d:Z

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/ksyun/media/streamer/capture/audio/c;->b:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    return-void
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
