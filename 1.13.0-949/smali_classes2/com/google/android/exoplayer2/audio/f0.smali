.class public Lcom/google/android/exoplayer2/audio/f0;
.super Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;
.source "MediaCodecAudioRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/util/y;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/audio/f0$b;
    }
.end annotation


# static fields
.field private static final I3:Ljava/lang/String; = "MediaCodecAudioRenderer"

.field private static final J3:Ljava/lang/String; = "v-bits-per-sample"


# instance fields
.field private A3:Z

.field private B3:Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C3:J

.field private D3:Z

.field private E3:Z

.field private F3:Z

.field private G3:Z

.field private H3:Lcom/google/android/exoplayer2/e2$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final w3:Landroid/content/Context;

.field private final x3:Lcom/google/android/exoplayer2/audio/u$a;

.field private final y3:Lcom/google/android/exoplayer2/audio/AudioSink;

.field private z3:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 6
    .param p5    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v1, 0x1

    const v5, 0x472c4400    # 44100.0f

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 6
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;-><init>(ILcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;ZF)V

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->w3:Landroid/content/Context;

    .line 8
    iput-object p7, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 9
    new-instance p1, Lcom/google/android/exoplayer2/audio/u$a;

    invoke-direct {p1, p5, p6}, Lcom/google/android/exoplayer2/audio/u$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    .line 10
    new-instance p1, Lcom/google/android/exoplayer2/audio/f0$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/google/android/exoplayer2/audio/f0$b;-><init>(Lcom/google/android/exoplayer2/audio/f0;Lcom/google/android/exoplayer2/audio/f0$a;)V

    invoke-interface {p7, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->k(Lcom/google/android/exoplayer2/audio/AudioSink$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;)V
    .locals 8
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    new-array v7, v0, [Lcom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2
    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 8
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 4
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/k$b;->a:Lcom/google/android/exoplayer2/mediacodec/k$b;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public varargs constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 6
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/audio/f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    new-instance v5, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v5, p5, p6}, Lcom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lcom/google/android/exoplayer2/audio/f;[Lcom/google/android/exoplayer2/audio/AudioProcessor;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;Landroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 8
    .param p4    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/google/android/exoplayer2/audio/u;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    sget-object v2, Lcom/google/android/exoplayer2/mediacodec/k$b;->a:Lcom/google/android/exoplayer2/mediacodec/k$b;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/audio/f0;-><init>(Landroid/content/Context;Lcom/google/android/exoplayer2/mediacodec/k$b;Lcom/google/android/exoplayer2/mediacodec/n;ZLandroid/os/Handler;Lcom/google/android/exoplayer2/audio/u;Lcom/google/android/exoplayer2/audio/AudioSink;)V

    return-void
.end method

.method private D1()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/audio/f0;->b()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/audio/AudioSink;->p(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 2
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/f0;->E3:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->E3:Z

    :cond_1
    return-void
.end method

.method static synthetic u1(Lcom/google/android/exoplayer2/audio/f0;)Lcom/google/android/exoplayer2/audio/u$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    return-object p0
.end method

.method static synthetic v1(Lcom/google/android/exoplayer2/audio/f0;)Lcom/google/android/exoplayer2/e2$c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/audio/f0;->H3:Lcom/google/android/exoplayer2/e2$c;

    return-object p0
.end method

.method private static w1(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_1

    const-string v0, "OMX.SEC.aac.dec"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/z0;->c:Ljava/lang/String;

    const-string v0, "samsung"

    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/exoplayer2/util/z0;->b:Ljava/lang/String;

    const-string v0, "zeroflte"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "herolte"

    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "heroqlte"

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static x1()Z
    .locals 2

    .line 1
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/google/android/exoplayer2/util/z0;->d:Ljava/lang/String;

    const-string v1, "ZTE B2017G"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "AXON 7 mini"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    const-string v0, "OMX.google.raw.decoder"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    sget p1, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->w3:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->G0(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    .line 3
    :cond_1
    iget p1, p2, Lcom/google/android/exoplayer2/Format;->maxInputSize:I

    return p1
.end method


# virtual methods
.method protected A1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/audio/f0;->z1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 2
    array-length v1, p3

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return v0

    .line 3
    :cond_0
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 4
    invoke-virtual {p1, p2, v3}, Lcom/google/android/exoplayer2/mediacodec/l;->e(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v4

    iget v4, v4, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-eqz v4, :cond_1

    .line 5
    invoke-direct {p0, p1, v3}, Lcom/google/android/exoplayer2/audio/f0;->z1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method protected B1(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string v1, "mime"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const-string v1, "channel-count"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 4
    iget p2, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const-string v1, "sample-rate"

    invoke-virtual {v0, v1, p2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 5
    iget-object p2, p1, Lcom/google/android/exoplayer2/Format;->initializationData:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/google/android/exoplayer2/util/z;->j(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string p2, "max-input-size"

    .line 6
    invoke-static {v0, p2, p3}, Lcom/google/android/exoplayer2/util/z;->e(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    .line 7
    sget p2, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 p3, 0x17

    if-lt p2, p3, :cond_0

    const/4 p3, 0x0

    const-string v1, "priority"

    .line 8
    invoke-virtual {v0, v1, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 p3, -0x40800000    # -1.0f

    cmpl-float p3, p4, p3

    if-eqz p3, :cond_0

    .line 9
    invoke-static {}, Lcom/google/android/exoplayer2/audio/f0;->x1()Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "operating-rate"

    .line 10
    invoke-virtual {v0, p3, p4}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_0
    const/16 p3, 0x1c

    if-gt p2, p3, :cond_1

    .line 11
    iget-object p3, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string p4, "audio/ac4"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    const-string p4, "ac4-is-sync"

    .line 12
    invoke-virtual {v0, p4, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const/16 p3, 0x18

    if-lt p2, p3, :cond_2

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget p3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget p1, p1, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 p4, 0x4

    .line 14
    invoke-static {p4, p3, p1}, Lcom/google/android/exoplayer2/util/z0;->j0(III)Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    .line 15
    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->m(Lcom/google/android/exoplayer2/Format;)I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    const-string p1, "pcm-encoding"

    .line 16
    invoke-virtual {v0, p1, p4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    return-object v0
.end method

.method protected C1()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->E3:Z

    return-void
.end method

.method protected F()V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->F3:Z

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 5
    throw v0

    :catchall_1
    move-exception v0

    .line 6
    :try_start_2
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->F()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 7
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 8
    throw v0

    :catchall_2
    move-exception v0

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/audio/u$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 10
    throw v0
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->G(ZZ)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object p2, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/audio/u$a;->p(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->z()Lcom/google/android/exoplayer2/h2;

    move-result-object p1

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/h2;->a:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->r()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->h()V

    :goto_0
    return-void
.end method

.method protected H(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->H(JZ)V

    .line 2
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/audio/f0;->G3:Z

    if-eqz p3, :cond_0

    .line 3
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->n()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 5
    :goto_0
    iput-wide p1, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/f0;->D3:Z

    .line 7
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/f0;->E3:Z

    return-void
.end method

.method protected I()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->I()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/audio/f0;->F3:Z

    if-eqz v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->F3:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 5
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/audio/f0;->F3:Z

    if-eqz v2, :cond_1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->F3:Z

    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->reset()V

    .line 8
    :cond_1
    throw v1
.end method

.method protected J()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->J()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->d()V

    return-void
.end method

.method protected K()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/f0;->D1()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 3
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->K()V

    return-void
.end method

.method protected N0(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    .line 1
    invoke-static {v0, v1, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/u$a;->k(Ljava/lang/Exception;)V

    return-void
.end method

.method protected O0(Ljava/lang/String;JJ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/audio/u$a;->m(Ljava/lang/String;JJ)V

    return-void
.end method

.method protected P0(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/audio/u$a;->n(Ljava/lang/String;)V

    return-void
.end method

.method protected Q(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 8

    .line 1
    invoke-virtual {p1, p2, p3}, Lcom/google/android/exoplayer2/mediacodec/l;->e(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 2
    iget v1, v0, Lcom/google/android/exoplayer2/decoder/e;->e:I

    .line 3
    invoke-direct {p0, p1, p3}, Lcom/google/android/exoplayer2/audio/f0;->z1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;)I

    move-result v2

    iget v3, p0, Lcom/google/android/exoplayer2/audio/f0;->z3:I

    if-le v2, v3, :cond_0

    or-int/lit8 v1, v1, 0x40

    :cond_0
    move v7, v1

    .line 4
    new-instance v1, Lcom/google/android/exoplayer2/decoder/e;

    iget-object v3, p1, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    if-eqz v7, :cond_1

    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_0

    .line 5
    :cond_1
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/e;->d:I

    move v6, p1

    :goto_0
    move-object v2, v1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v1
.end method

.method protected Q0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Q0(Lcom/google/android/exoplayer2/v0;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/f0;->x3:Lcom/google/android/exoplayer2/audio/u$a;

    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v1, p1, v0}, Lcom/google/android/exoplayer2/audio/u$a;->q(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-object v0
.end method

.method protected R0(Lcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V
    .locals 5
    .param p2    # Landroid/media/MediaFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->B3:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->q0()Lcom/google/android/exoplayer2/mediacodec/k;

    move-result-object v0

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 3
    :cond_1
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v3, "audio/raw"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    .line 5
    :cond_2
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    .line 7
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->i0(I)I

    move-result v0

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget v0, p1, Lcom/google/android/exoplayer2/Format;->pcmEncoding:I

    goto :goto_0

    :cond_5
    const/4 v0, 0x2

    .line 11
    :goto_0
    new-instance v4, Lcom/google/android/exoplayer2/Format$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/Format$b;-><init>()V

    .line 12
    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/Format$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v3

    .line 13
    invoke-virtual {v3, v0}, Lcom/google/android/exoplayer2/Format$b;->Y(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 14
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$b;->M(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    iget v3, p1, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 15
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$b;->N(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    const-string v3, "channel-count"

    .line 16
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/Format$b;->H(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    const-string v3, "sample-rate"

    .line 17
    invoke-virtual {p2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/google/android/exoplayer2/Format$b;->f0(I)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 19
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->A3:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    const/4 v3, 0x6

    if-ne v0, v3, :cond_6

    iget v0, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v3, :cond_6

    .line 20
    new-array v2, v0, [I

    const/4 v0, 0x0

    .line 21
    :goto_1
    iget v3, p1, Lcom/google/android/exoplayer2/Format;->channelCount:I

    if-ge v0, v3, :cond_6

    .line 22
    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    move-object p1, p2

    .line 23
    :goto_2
    :try_start_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p2, p1, v1, v2}, Lcom/google/android/exoplayer2/audio/AudioSink;->s(Lcom/google/android/exoplayer2/Format;I[I)V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 24
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method protected T0()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->T0()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    return-void
.end method

.method protected U0(Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->D3:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 3
    iget-wide v0, p1, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    :cond_0
    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/f0;->D3:Z

    :cond_1
    return-void
.end method

.method protected W0(JJLcom/google/android/exoplayer2/mediacodec/k;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/exoplayer2/Format;)Z
    .locals 0
    .param p5    # Lcom/google/android/exoplayer2/mediacodec/k;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-static {p6}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->B3:Lcom/google/android/exoplayer2/Format;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p5}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/k;

    invoke-interface {p1, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    return p2

    :cond_0
    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    .line 4
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->q()V

    return p2

    .line 7
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/exoplayer2/audio/AudioSink;->j(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    .line 8
    invoke-interface {p5, p7, p3}, Lcom/google/android/exoplayer2/mediacodec/k;->k(IZ)V

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->Z2:Lcom/google/android/exoplayer2/decoder/d;

    iget p3, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    .line 10
    iget-boolean p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, p1, p14, p2}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    .line 11
    iget-object p2, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean p3, p1, Lcom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1
.end method

.method public b()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected b1()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->o()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lcom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lcom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method public d(ILjava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->d(ILjava/lang/Object;)V

    goto :goto_0

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/android/exoplayer2/e2$c;

    iput-object p2, p0, Lcom/google/android/exoplayer2/audio/f0;->H3:Lcom/google/android/exoplayer2/e2$c;

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->l(I)V

    goto :goto_0

    .line 4
    :pswitch_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->J(Z)V

    goto :goto_0

    .line 5
    :cond_0
    check-cast p2, Lcom/google/android/exoplayer2/audio/y;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->u(Lcom/google/android/exoplayer2/audio/y;)V

    goto :goto_0

    .line 7
    :cond_1
    check-cast p2, Lcom/google/android/exoplayer2/audio/e;

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->i(Lcom/google/android/exoplayer2/audio/e;)V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->f(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public e()Lcom/google/android/exoplayer2/t1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/audio/AudioSink;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public g(Lcom/google/android/exoplayer2/t1;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->g(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method protected n1(Lcom/google/android/exoplayer2/Format;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    return p1
.end method

.method public o()J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/audio/f0;->D1()V

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/audio/f0;->C3:J

    return-wide v0
.end method

.method protected o1(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a0;->p(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    sget v0, Lcom/google/android/exoplayer2/util/z0;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 5
    :goto_1
    invoke-static {p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecRenderer;->p1(Lcom/google/android/exoplayer2/Format;)Z

    move-result v4

    const/16 v5, 0x8

    const/4 v6, 0x4

    if-eqz v4, :cond_4

    .line 6
    iget-object v7, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    .line 7
    invoke-interface {v7, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz v2, :cond_3

    .line 8
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 9
    :cond_3
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/f2;->b(III)I

    move-result p1

    return p1

    .line 10
    :cond_4
    iget-object v2, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v2, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 11
    invoke-static {v3}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    iget v7, p2, Lcom/google/android/exoplayer2/Format;->channelCount:I

    iget v8, p2, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    const/4 v9, 0x2

    .line 13
    invoke-static {v9, v7, v8}, Lcom/google/android/exoplayer2/util/z0;->j0(III)Lcom/google/android/exoplayer2/Format;

    move-result-object v7

    .line 14
    invoke-interface {v2, v7}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 15
    invoke-static {v3}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 16
    :cond_6
    invoke-virtual {p0, p1, p2, v1}, Lcom/google/android/exoplayer2/audio/f0;->w0(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;

    move-result-object p1

    .line 17
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 18
    invoke-static {v3}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    :cond_7
    if-nez v4, :cond_8

    .line 19
    invoke-static {v9}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1

    .line 20
    :cond_8
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/mediacodec/l;

    .line 21
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->o(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/mediacodec/l;->q(Lcom/google/android/exoplayer2/Format;)Z

    move-result p1

    if-eqz p1, :cond_9

    const/16 v5, 0x10

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_2

    :cond_a
    const/4 v6, 0x3

    .line 23
    :goto_2
    invoke-static {v6, v5, v0}, Lcom/google/android/exoplayer2/f2;->b(III)I

    move-result p1

    return p1
.end method

.method protected u0(FLcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)F
    .locals 4

    .line 1
    array-length p2, p3

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, -0x1

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v3, p3, v1

    .line 2
    iget v3, v3, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    if-eq v3, v0, :cond_0

    .line 3
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    goto :goto_1

    :cond_2
    int-to-float p2, v2

    mul-float p1, p1, p2

    :goto_1
    return p1
.end method

.method public w()Lcom/google/android/exoplayer2/util/y;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    return-object p0
.end method

.method protected w0(Lcom/google/android/exoplayer2/mediacodec/n;Lcom/google/android/exoplayer2/Format;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/mediacodec/n;",
            "Lcom/google/android/exoplayer2/Format;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/mediacodec/l;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil$DecoderQueryException;
        }
    .end annotation

    .line 1
    iget-object v0, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/audio/f0;->y3:Lcom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, p2}, Lcom/google/android/exoplayer2/audio/AudioSink;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-static {}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->v()Lcom/google/android/exoplayer2/mediacodec/l;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-interface {p1, v0, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object v2

    .line 7
    invoke-static {v2, p2}, Lcom/google/android/exoplayer2/mediacodec/MediaCodecUtil;->u(Ljava/util/List;Lcom/google/android/exoplayer2/Format;)Ljava/util/List;

    move-result-object p2

    const-string v2, "audio/eac3-joc"

    .line 8
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const-string p2, "audio/eac3"

    .line 10
    invoke-interface {p1, p2, p3, v1}, Lcom/google/android/exoplayer2/mediacodec/n;->a(Ljava/lang/String;ZZ)Ljava/util/List;

    move-result-object p1

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object p2, v0

    .line 12
    :cond_2
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected y0(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;Landroid/media/MediaCrypto;F)Lcom/google/android/exoplayer2/mediacodec/k$a;
    .locals 9
    .param p3    # Landroid/media/MediaCrypto;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->D()[Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/audio/f0;->A1(Lcom/google/android/exoplayer2/mediacodec/l;Lcom/google/android/exoplayer2/Format;[Lcom/google/android/exoplayer2/Format;)I

    move-result v0

    iput v0, p0, Lcom/google/android/exoplayer2/audio/f0;->z3:I

    .line 2
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/l;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/f0;->w1(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/audio/f0;->A3:Z

    .line 3
    iget-object v0, p1, Lcom/google/android/exoplayer2/mediacodec/l;->c:Ljava/lang/String;

    iget v1, p0, Lcom/google/android/exoplayer2/audio/f0;->z3:I

    .line 4
    invoke-virtual {p0, p2, v0, v1, p4}, Lcom/google/android/exoplayer2/audio/f0;->B1(Lcom/google/android/exoplayer2/Format;Ljava/lang/String;IF)Landroid/media/MediaFormat;

    move-result-object v4

    .line 5
    iget-object p4, p1, Lcom/google/android/exoplayer2/mediacodec/l;->b:Ljava/lang/String;

    const-string v0, "audio/raw"

    .line 6
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p2, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const/4 p4, 0x1

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    if-eqz p4, :cond_1

    move-object p4, p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 8
    :goto_1
    iput-object p4, p0, Lcom/google/android/exoplayer2/audio/f0;->B3:Lcom/google/android/exoplayer2/Format;

    .line 9
    new-instance p4, Lcom/google/android/exoplayer2/mediacodec/k$a;

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p4

    move-object v3, p1

    move-object v5, p2

    move-object v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/google/android/exoplayer2/mediacodec/k$a;-><init>(Lcom/google/android/exoplayer2/mediacodec/l;Landroid/media/MediaFormat;Lcom/google/android/exoplayer2/Format;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    return-object p4
.end method

.method public y1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/exoplayer2/audio/f0;->G3:Z

    return-void
.end method
