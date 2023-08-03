.class public Lcom/ksyun/media/streamer/capture/audio/b;
.super Ljava/lang/Object;
.source "KSYAudioDummyRecord.java"

# interfaces
.implements Lcom/ksyun/media/streamer/capture/audio/a;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:J

.field private e:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->a:I

    mul-int/lit8 p2, p2, 0x2

    .line 3
    iput p2, p0, Lcom/ksyun/media/streamer/capture/audio/b;->b:I

    mul-int/lit16 p3, p3, 0x3e8

    .line 4
    div-int/2addr p3, p1

    iput p3, p0, Lcom/ksyun/media/streamer/capture/audio/b;->c:I

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    return-void
.end method

.method private a(J)I
    .locals 2

    .line 13
    iget v0, p0, Lcom/ksyun/media/streamer/capture/audio/b;->a:I

    int-to-long v0, v0

    mul-long v0, v0, p1

    const-wide/32 p1, 0xf4240

    div-long/2addr v0, p1

    iget p1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->b:I

    int-to-long p1, p1

    mul-long v0, v0, p1

    long-to-int p1, v0

    return p1
.end method


# virtual methods
.method public a()I
    .locals 5

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->d:J

    return v0
.end method

.method public a(Ljava/nio/ByteBuffer;I)I
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-ge v1, p2, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    :goto_0
    iget v1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    if-ge v1, p2, :cond_1

    .line 5
    :try_start_0
    iget v1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 7
    iget v3, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    iget-wide v4, p0, Lcom/ksyun/media/streamer/capture/audio/b;->d:J

    sub-long v4, v1, v4

    invoke-direct {p0, v4, v5}, Lcom/ksyun/media/streamer/capture/audio/b;->a(J)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    .line 8
    iput-wide v1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->d:J

    goto :goto_0

    :catch_0
    return v0

    :cond_1
    sub-int/2addr v1, p2

    .line 9
    iput v1, p0, Lcom/ksyun/media/streamer/capture/audio/b;->e:I

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_2

    .line 10
    invoke-virtual {p1, v1, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return p2

    :cond_3
    :goto_2
    return v0
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
