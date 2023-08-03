.class public final Lcom/google/android/exoplayer2/video/spherical/b;
.super Lcom/google/android/exoplayer2/f;
.source "CameraMotionRenderer.java"


# static fields
.field private static final r:Ljava/lang/String; = "CameraMotionRenderer"

.field private static final s:I = 0x186a0


# instance fields
.field private final m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private final n:Lcom/google/android/exoplayer2/util/h0;

.field private o:J

.field private p:Lcom/google/android/exoplayer2/video/spherical/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private q:J


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x6

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 3
    new-instance v0, Lcom/google/android/exoplayer2/util/h0;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/util/h0;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->n:Lcom/google/android/exoplayer2/util/h0;

    return-void
.end method

.method private O(Ljava/nio/ByteBuffer;)[F
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/h0;->Q([BI)V

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/h0;->S(I)V

    const/4 p1, 0x3

    new-array v0, p1, [F

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/spherical/b;->n:Lcom/google/android/exoplayer2/util/h0;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/h0;->r()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private P()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->p:Lcom/google/android/exoplayer2/video/spherical/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/video/spherical/a;->g()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected F()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/b;->P()V

    return-void
.end method

.method protected H(JZ)V
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    .line 1
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/spherical/b;->q:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/spherical/b;->P()V

    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/spherical/b;->o:J

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 1

    .line 1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    const-string v0, "application/x-camera-motion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->i()Z

    move-result v0

    return v0
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

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 1
    check-cast p2, Lcom/google/android/exoplayer2/video/spherical/a;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/spherical/b;->p:Lcom/google/android/exoplayer2/video/spherical/a;

    goto :goto_0

    .line 2
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->d(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "CameraMotionRenderer"

    return-object v0
.end method

.method public s(JJ)V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->i()Z

    move-result p3

    if-nez p3, :cond_4

    iget-wide p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->q:J

    const-wide/32 v0, 0x186a0

    add-long/2addr v0, p1

    cmp-long v2, p3, v0

    if-gez v2, :cond_4

    .line 2
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/v0;

    move-result-object p3

    .line 4
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p4, v0}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 p4, -0x4

    if-ne p3, p4, :cond_4

    .line 5
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_1

    .line 6
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-wide v0, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->q:J

    .line 7
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/b;->p:Lcom/google/android/exoplayer2/video/spherical/a;

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/a;->k()Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p3}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q()V

    .line 9
    iget-object p3, p0, Lcom/google/android/exoplayer2/video/spherical/b;->m:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object p3, p3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p3}, Lcom/google/android/exoplayer2/video/spherical/b;->O(Ljava/nio/ByteBuffer;)[F

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    iget-object p4, p0, Lcom/google/android/exoplayer2/video/spherical/b;->p:Lcom/google/android/exoplayer2/video/spherical/a;

    invoke-static {p4}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/google/android/exoplayer2/video/spherical/a;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/spherical/b;->q:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/spherical/b;->o:J

    sub-long/2addr v0, v2

    invoke-interface {p4, v0, v1, p3}, Lcom/google/android/exoplayer2/video/spherical/a;->e(J[F)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method
