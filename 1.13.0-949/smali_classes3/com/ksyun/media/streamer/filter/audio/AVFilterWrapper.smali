.class public Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;
.super Ljava/lang/Object;
.source "AVFilterWrapper.java"


# static fields
.field private static final b:Ljava/lang/String; = "AVFilterWrapper"

.field private static final d:I = -0x1


# instance fields
.field public a:Lcom/ksyun/media/streamer/framework/SrcPin;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ksyun/media/streamer/framework/SrcPin<",
            "Lcom/ksyun/media/streamer/framework/AudioBufFrame;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Z

.field private e:J

.field private f:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

.field private g:Ljava/io/OutputStream;

.field private h:[B

.field private i:F

.field private j:J

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/ksyun/media/streamer/util/LibraryLoader;->load()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->c:Z

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->j:J

    .line 5
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->k:Z

    .line 6
    invoke-direct {p0}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->create()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    return-void
.end method

.method private native config(JLcom/ksyun/media/streamer/framework/AudioBufFormat;)V
.end method

.method private native create()J
.end method

.method private declared-synchronized onAudioFrame(Ljava/nio/ByteBuffer;J)V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Lcom/ksyun/media/streamer/framework/AudioBufFrame;

    iget-object v1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->f:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/ksyun/media/streamer/framework/AudioBufFrame;-><init>(Lcom/ksyun/media/streamer/framework/AudioBufFormat;Ljava/nio/ByteBuffer;J)V

    .line 2
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->k:Z

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {p1, v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFrameAvailable(Lcom/ksyun/media/streamer/framework/AVFrameBase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private native process(JLjava/nio/ByteBuffer;IJ)Z
.end method

.method private native release(J)V
.end method

.method private native setSpeed(JF)Z
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 6
    :try_start_0
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(F)V
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->setSpeed(JF)Z

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 9
    iput v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->i:F

    const-wide/16 v0, 0x0

    .line 10
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->j:J

    return-void
.end method

.method public a(Lcom/ksyun/media/streamer/framework/AudioBufFormat;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->j:J

    .line 2
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    invoke-direct {p0, v0, v1, p1}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->config(JLcom/ksyun/media/streamer/framework/AudioBufFormat;)V

    .line 3
    iput-object p1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->f:Lcom/ksyun/media/streamer/framework/AudioBufFormat;

    .line 4
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0}, Lcom/ksyun/media/streamer/framework/SrcPin;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->a:Lcom/ksyun/media/streamer/framework/SrcPin;

    invoke-virtual {v0, p1}, Lcom/ksyun/media/streamer/framework/SrcPin;->onFormatChanged(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/nio/ByteBuffer;J)V
    .locals 7

    .line 11
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 12
    iput-wide p2, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->j:J

    goto :goto_0

    :cond_0
    sub-long/2addr p2, v0

    long-to-float p2, p2

    .line 13
    iget p3, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->i:F

    mul-float p2, p2, p3

    float-to-long p2, p2

    add-long/2addr p2, v0

    :goto_0
    move-wide v5, p2

    .line 14
    iget-wide v1, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    move-object v0, p0

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->process(JLjava/nio/ByteBuffer;IJ)Z

    return-void
.end method

.method public declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->release(J)V

    .line 3
    iput-wide v2, p0, Lcom/ksyun/media/streamer/filter/audio/AVFilterWrapper;->e:J

    :cond_0
    return-void
.end method
