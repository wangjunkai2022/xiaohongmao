.class final Lcom/google/android/exoplayer2/mediacodec/c;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecAdapter.java"

# interfaces
.implements Lcom/google/android/exoplayer2/mediacodec/k;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/mediacodec/c$b;
    }
.end annotation


# static fields
.field private static final g:I = 0x0

.field private static final h:I = 0x1

.field private static final i:I = 0x2

.field private static final j:I = 0x3


# instance fields
.field private final a:Landroid/media/MediaCodec;

.field private final b:Lcom/google/android/exoplayer2/mediacodec/h;

.field private final c:Lcom/google/android/exoplayer2/mediacodec/f;

.field private final d:Z

.field private e:Z

.field private f:I


# direct methods
.method private constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    .line 4
    new-instance v0, Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-direct {v0, p2}, Lcom/google/android/exoplayer2/mediacodec/h;-><init>(Landroid/os/HandlerThread;)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    .line 5
    new-instance p2, Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-direct {p2, p1, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/f;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Z)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    .line 6
    iput-boolean p5, p0, Lcom/google/android/exoplayer2/mediacodec/c;->d:Z

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZLcom/google/android/exoplayer2/mediacodec/c$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/mediacodec/c;-><init>(Landroid/media/MediaCodec;Landroid/os/HandlerThread;Landroid/os/HandlerThread;ZZ)V

    return-void
.end method

.method private A()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->s()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    const/4 v0, 0x2

    .line 3
    iput v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I

    return-void
.end method

.method public static synthetic m(Lcom/google/android/exoplayer2/mediacodec/c;Lcom/google/android/exoplayer2/mediacodec/k$c;Landroid/media/MediaCodec;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/google/android/exoplayer2/mediacodec/c;->w(Lcom/google/android/exoplayer2/mediacodec/k$c;Landroid/media/MediaCodec;JJ)V

    return-void
.end method

.method static synthetic n(Lcom/google/android/exoplayer2/mediacodec/c;Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/mediacodec/c;->s(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-void
.end method

.method static synthetic o(Lcom/google/android/exoplayer2/mediacodec/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->A()V

    return-void
.end method

.method static synthetic q(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->u(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(I)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->t(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private s(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    .locals 2
    .param p1    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/mediacodec/h;->h(Landroid/media/MediaCodec;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I

    return-void
.end method

.method private static t(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecAsyncAdapter:"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static u(I)Ljava/lang/String;
    .locals 1

    const-string v0, "ExoPlayer:MediaCodecQueueingThread:"

    invoke-static {p0, v0}, Lcom/google/android/exoplayer2/mediacodec/c;->v(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static v(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    const-string p0, "Audio"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    const-string p0, "Video"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string p1, "Unknown("

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic w(Lcom/google/android/exoplayer2/mediacodec/k$c;Landroid/media/MediaCodec;JJ)V
    .locals 6

    move-object v0, p1

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/k$c;->a(Lcom/google/android/exoplayer2/mediacodec/k;JJ)V

    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->d:Z

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->t()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a(IILcom/google/android/exoplayer2/decoder/b;JI)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/f;->o(IILcom/google/android/exoplayer2/decoder/b;JI)V

    return-void
.end method

.method public b()Landroid/media/MediaFormat;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->g()Landroid/media/MediaFormat;

    move-result-object v0

    return-object v0
.end method

.method public c(Lcom/google/android/exoplayer2/mediacodec/k$c;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->x()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    new-instance v1, Lcom/google/android/exoplayer2/mediacodec/a;

    invoke-direct {v1, p0, p1}, Lcom/google/android/exoplayer2/mediacodec/a;-><init>(Lcom/google/android/exoplayer2/mediacodec/c;Lcom/google/android/exoplayer2/mediacodec/k$c;)V

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaCodec;->setOnFrameRenderedListener(Landroid/media/MediaCodec$OnFrameRenderedListener;Landroid/os/Handler;)V

    return-void
.end method

.method public d(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public e(Landroid/view/Surface;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->x()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setOutputSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public f(IIIJI)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/mediacodec/f;->n(IIIJI)V

    return-void
.end method

.method public flush()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/f;->i()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->flush()V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/exoplayer2/mediacodec/b;

    invoke-direct {v2, v1}, Lcom/google/android/exoplayer2/mediacodec/b;-><init>(Landroid/media/MediaCodec;)V

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/mediacodec/h;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->x()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    return-void
.end method

.method public h(IJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaCodec;->releaseOutputBuffer(IJ)V

    return-void
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/mediacodec/h;->c()I

    move-result v0

    return v0
.end method

.method public j(Landroid/media/MediaCodec$BufferInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/mediacodec/h;->d(Landroid/media/MediaCodec$BufferInfo;)I

    move-result p1

    return p1
.end method

.method public k(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    return-void
.end method

.method public l(I)Ljava/nio/ByteBuffer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/mediacodec/c;->x()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, p1}, Landroid/media/MediaCodec;->setVideoScalingMode(I)V

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->c:Lcom/google/android/exoplayer2/mediacodec/f;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/f;->r()V

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I

    if-eq v1, v0, :cond_1

    if-ne v1, v2, :cond_2

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/mediacodec/h;->q()V

    :cond_2
    const/4 v1, 0x3

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->f:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Z

    if-nez v1, :cond_3

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    .line 8
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    .line 9
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Z

    if-nez v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v2}, Landroid/media/MediaCodec;->release()V

    .line 11
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->e:Z

    .line 12
    :cond_4
    throw v1
.end method

.method y(Landroid/media/MediaCodec$CodecException;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/h;->onError(Landroid/media/MediaCodec;Landroid/media/MediaCodec$CodecException;)V

    return-void
.end method

.method z(Landroid/media/MediaFormat;)V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/mediacodec/c;->b:Lcom/google/android/exoplayer2/mediacodec/h;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/c;->a:Landroid/media/MediaCodec;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/exoplayer2/mediacodec/h;->onOutputFormatChanged(Landroid/media/MediaCodec;Landroid/media/MediaFormat;)V

    return-void
.end method
