.class public abstract Lcom/google/android/exoplayer2/video/b;
.super Lcom/google/android/exoplayer2/f;
.source "DecoderVideoRenderer.java"


# static fields
.field private static final V:Ljava/lang/String; = "DecoderVideoRenderer"

.field private static final W:I = 0x0

.field private static final b1:I = 0x1

.field private static final g1:I = 0x2


# instance fields
.field private A:Lcom/google/android/exoplayer2/video/j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private C:Lcom/google/android/exoplayer2/drm/DrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:I

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:J

.field private J:J

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Lcom/google/android/exoplayer2/video/b0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private O:J

.field private P:I

.field private Q:I

.field private R:I

.field private S:J

.field private T:J

.field protected U:Lcom/google/android/exoplayer2/decoder/d;

.field private final m:J

.field private final n:I

.field private final o:Lcom/google/android/exoplayer2/video/z$a;

.field private final p:Lcom/google/android/exoplayer2/util/t0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/util/t0<",
            "Lcom/google/android/exoplayer2/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private r:Lcom/google/android/exoplayer2/Format;

.field private s:Lcom/google/android/exoplayer2/Format;

.field private t:Lcom/google/android/exoplayer2/decoder/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/decoder/c<",
            "Lcom/google/android/exoplayer2/video/g;",
            "+",
            "Lcom/google/android/exoplayer2/video/h;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/google/android/exoplayer2/video/g;

.field private v:Lcom/google/android/exoplayer2/video/h;

.field private w:I

.field private x:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Landroid/view/Surface;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private z:Lcom/google/android/exoplayer2/video/i;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(JLandroid/os/Handler;Lcom/google/android/exoplayer2/video/z;I)V
    .locals 1
    .param p3    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/android/exoplayer2/video/z;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x2

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/f;-><init>(I)V

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/b;->m:J

    .line 3
    iput p5, p0, Lcom/google/android/exoplayer2/video/b;->n:I

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    .line 5
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->Q()V

    .line 6
    new-instance p1, Lcom/google/android/exoplayer2/util/t0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/t0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->p:Lcom/google/android/exoplayer2/util/t0;

    .line 7
    invoke-static {}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->s()Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->q:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 8
    new-instance p1, Lcom/google/android/exoplayer2/video/z$a;

    invoke-direct {p1, p3, p4}, Lcom/google/android/exoplayer2/video/z$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/video/z;)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    return-void
.end method

.method private P()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    return-void
.end method

.method private Q()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->N:Lcom/google/android/exoplayer2/video/b0;

    return-void
.end method

.method private S(JJ)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/h;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    iget v0, v0, Lcom/google/android/exoplayer2/decoder/f;->c:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 4
    iget v2, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->n0()V

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->a0()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/h;->o()V

    .line 10
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->M:Z

    :goto_0
    return v1

    .line 12
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/b;->m0(JJ)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    iget-wide p2, p2, Lcom/google/android/exoplayer2/decoder/f;->b:J

    invoke-virtual {p0, p2, p3}, Lcom/google/android/exoplayer2/video/b;->k0(J)V

    .line 14
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    :cond_4
    return p1
.end method

.method private U()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;,
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    iget-boolean v2, p0, Lcom/google/android/exoplayer2/video/b;->L:Z

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    if-nez v2, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/video/g;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 5
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/google/android/exoplayer2/decoder/a;->n(I)V

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v4, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-interface {v0, v4}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 7
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    .line 8
    iput v3, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    return v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/v0;

    move-result-object v0

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-virtual {p0, v0, v3, v1}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    const/4 v5, -0x5

    if-eq v3, v5, :cond_7

    const/4 v0, -0x4

    if-eq v3, v0, :cond_4

    const/4 v0, -0x3

    if-ne v3, v0, :cond_3

    return v1

    .line 11
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/b;->L:Z

    .line 14
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 15
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    return v1

    .line 16
    :cond_5
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->K:Z

    if-eqz v0, :cond_6

    .line 17
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->p:Lcom/google/android/exoplayer2/util/t0;

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    iget-wide v5, v3, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v5, v6, v3}, Lcom/google/android/exoplayer2/util/t0;->a(JLjava/lang/Object;)V

    .line 18
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/b;->K:Z

    .line 19
    :cond_6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->q()V

    .line 20
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    iput-object v1, v0, Lcom/google/android/exoplayer2/video/g;->l:Lcom/google/android/exoplayer2/Format;

    .line 21
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/b;->l0(Lcom/google/android/exoplayer2/video/g;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/decoder/c;->c(Ljava/lang/Object;)V

    .line 23
    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    .line 24
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/video/b;->E:Z

    .line 25
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->c:I

    .line 26
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    return v4

    .line 27
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/b;->g0(Lcom/google/android/exoplayer2/v0;)V

    return v4

    :cond_8
    :goto_0
    return v1
.end method

.method private W()Z
    .locals 2

    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static X(J)Z
    .locals 3

    const-wide/16 v0, -0x7530

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static Y(J)Z
    .locals 3

    const-wide/32 v0, -0x7a120

    cmp-long v2, p0, v0

    if-gez v2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private a0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->C:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/b;->q0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    const/4 v0, 0x0

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->B:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 4
    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->j()Lcom/google/android/exoplayer2/drm/a0;

    move-result-object v0

    if-nez v0, :cond_2

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->B:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/drm/DrmSession;->e()Lcom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v3, v0}, Lcom/google/android/exoplayer2/video/b;->R(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/decoder/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    .line 8
    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/b;->r0(I)V

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 10
    iget-object v3, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    .line 11
    invoke-interface {v0}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v4

    sub-long v7, v5, v1

    .line 12
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/exoplayer2/video/z$a;->k(Ljava/lang/String;JJ)V

    .line 13
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->a:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->a:I
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    :catch_1
    move-exception v0

    const-string v1, "DecoderVideoRenderer"

    const-string v2, "Video codec error"

    .line 15
    invoke-static {v1, v2, v0}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/z$a;->C(Ljava/lang/Exception;)V

    .line 17
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v0, v1}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0
.end method

.method private b0()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/b;->O:J

    sub-long v2, v0, v2

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget v5, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    invoke-virtual {v4, v5, v2, v3}, Lcom/google/android/exoplayer2/video/z$a;->n(IJ)V

    const/4 v2, 0x0

    .line 5
    iput v2, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    .line 6
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->O:J

    :cond_0
    return-void
.end method

.method private c0()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->H:Z

    .line 2
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    if-nez v1, :cond_0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    .line 4
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->x:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private d0(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->N:Lcom/google/android/exoplayer2/video/b0;

    if-eqz v0, :cond_0

    iget v1, v0, Lcom/google/android/exoplayer2/video/b0;->a:I

    if-ne v1, p1, :cond_0

    iget v0, v0, Lcom/google/android/exoplayer2/video/b0;->b:I

    if-eq v0, p2, :cond_1

    .line 2
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/video/b0;

    invoke-direct {v0, p1, p2}, Lcom/google/android/exoplayer2/video/b0;-><init>(II)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->N:Lcom/google/android/exoplayer2/video/b0;

    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/video/z$a;->D(Lcom/google/android/exoplayer2/video/b0;)V

    :cond_1
    return-void
.end method

.method private e0()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->x:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->A(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->N:Lcom/google/android/exoplayer2/video/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/video/z$a;->D(Lcom/google/android/exoplayer2/video/b0;)V

    :cond_0
    return-void
.end method

.method private h0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->f0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->P()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->s0()V

    :cond_0
    return-void
.end method

.method private i0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->Q()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->P()V

    return-void
.end method

.method private j0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->f0()V

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->e0()V

    return-void
.end method

.method private m0(JJ)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;,
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->I:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/video/b;->I:J

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    iget-wide v0, v0, Lcom/google/android/exoplayer2/decoder/f;->b:J

    sub-long/2addr v0, p1

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->W()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 5
    invoke-static {v0, v1}, Lcom/google/android/exoplayer2/video/b;->X(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/b;->y0(Lcom/google/android/exoplayer2/video/h;)V

    return v3

    :cond_1
    return v4

    .line 7
    :cond_2
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    iget-wide v5, v2, Lcom/google/android/exoplayer2/decoder/f;->b:J

    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/b;->T:J

    sub-long/2addr v5, v7

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->p:Lcom/google/android/exoplayer2/util/t0;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/exoplayer2/util/t0;->j(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/Format;

    if-eqz v2, :cond_3

    .line 9
    iput-object v2, p0, Lcom/google/android/exoplayer2/video/b;->s:Lcom/google/android/exoplayer2/Format;

    .line 10
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v7, v7, v9

    .line 11
    iget-wide v9, p0, Lcom/google/android/exoplayer2/video/b;->S:J

    sub-long/2addr v7, v9

    .line 12
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->getState()I

    move-result v2

    const/4 v9, 0x2

    if-ne v2, v9, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 13
    :goto_0
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/b;->H:Z

    if-nez v9, :cond_5

    if-nez v2, :cond_6

    .line 14
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/b;->G:Z

    if-eqz v9, :cond_7

    goto :goto_1

    .line 15
    :cond_5
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    if-nez v9, :cond_7

    :cond_6
    :goto_1
    const/4 v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, 0x0

    :goto_2
    if-nez v9, :cond_d

    if-eqz v2, :cond_8

    .line 16
    invoke-virtual {p0, v0, v1, v7, v8}, Lcom/google/android/exoplayer2/video/b;->x0(JJ)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    if-eqz v2, :cond_c

    .line 17
    iget-wide v7, p0, Lcom/google/android/exoplayer2/video/b;->I:J

    cmp-long v2, p1, v7

    if-nez v2, :cond_9

    goto :goto_3

    .line 18
    :cond_9
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/b;->v0(JJ)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/b;->Z(J)Z

    move-result p1

    if-eqz p1, :cond_a

    return v4

    .line 20
    :cond_a
    invoke-virtual {p0, v0, v1, p3, p4}, Lcom/google/android/exoplayer2/video/b;->w0(JJ)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 21
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/b;->T(Lcom/google/android/exoplayer2/video/h;)V

    return v3

    :cond_b
    const-wide/16 p1, 0x7530

    cmp-long p3, v0, p1

    if-gez p3, :cond_c

    .line 22
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->s:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/b;->o0(Lcom/google/android/exoplayer2/video/h;JLcom/google/android/exoplayer2/Format;)V

    return v3

    :cond_c
    :goto_3
    return v4

    .line 23
    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->s:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, v5, v6, p2}, Lcom/google/android/exoplayer2/video/b;->o0(Lcom/google/android/exoplayer2/video/h;JLcom/google/android/exoplayer2/Format;)V

    return v3
.end method

.method private q0(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->B:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->B:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method

.method private s0()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/exoplayer2/video/b;->m:J

    add-long/2addr v0, v2

    goto :goto_0

    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    :goto_0
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    return-void
.end method

.method private u0(Lcom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1    # Lcom/google/android/exoplayer2/drm/DrmSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->C:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lcom/google/android/exoplayer2/drm/k;->b(Lcom/google/android/exoplayer2/drm/DrmSession;Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->C:Lcom/google/android/exoplayer2/drm/DrmSession;

    return-void
.end method


# virtual methods
.method protected F()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->Q()V

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->P()V

    .line 4
    :try_start_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/b;->u0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->n0()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->m(Lcom/google/android/exoplayer2/decoder/d;)V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/z$a;->m(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 7
    throw v0
.end method

.method protected G(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/google/android/exoplayer2/decoder/d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/decoder/d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/video/z$a;->o(Lcom/google/android/exoplayer2/decoder/d;)V

    .line 3
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/video/b;->G:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->H:Z

    return-void
.end method

.method protected H(JZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->L:Z

    .line 2
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->M:Z

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->P()V

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->I:J

    .line 5
    iput p1, p0, Lcom/google/android/exoplayer2/video/b;->Q:I

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->V()V

    :cond_0
    if-eqz p3, :cond_1

    .line 8
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->s0()V

    goto :goto_0

    .line 9
    :cond_1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    .line 10
    :goto_0
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->p:Lcom/google/android/exoplayer2/util/t0;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/t0;->c()V

    return-void
.end method

.method protected J()V
    .locals 4

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->O:J

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->S:J

    return-void
.end method

.method protected K()V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->b0()V

    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iput-wide p4, p0, Lcom/google/android/exoplayer2/video/b;->T:J

    .line 2
    invoke-super/range {p0 .. p5}, Lcom/google/android/exoplayer2/f;->L([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method protected O(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;
    .locals 7

    new-instance v6, Lcom/google/android/exoplayer2/decoder/e;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract R(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/drm/a0;)Lcom/google/android/exoplayer2/decoder/c;
    .param p2    # Lcom/google/android/exoplayer2/drm/a0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/exoplayer2/Format;",
            "Lcom/google/android/exoplayer2/drm/a0;",
            ")",
            "Lcom/google/android/exoplayer2/decoder/c<",
            "Lcom/google/android/exoplayer2/video/g;",
            "+",
            "Lcom/google/android/exoplayer2/video/h;",
            "+",
            "Lcom/google/android/exoplayer2/decoder/DecoderException;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected T(Lcom/google/android/exoplayer2/video/h;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/b;->z0(I)V

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/h;->o()V

    return-void
.end method

.method protected V()V
    .locals 3
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->n0()V

    .line 4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->a0()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    .line 6
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/video/h;->o()V

    .line 8
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/c;->flush()V

    .line 10
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->E:Z

    :goto_0
    return-void
.end method

.method protected Z(J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->N(J)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v0, p2, Lcom/google/android/exoplayer2/decoder/d;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p2, Lcom/google/android/exoplayer2/decoder/d;->i:I

    .line 3
    iget p2, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/b;->z0(I)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->V()V

    return v1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->M:Z

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

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Lcom/google/android/exoplayer2/video/b;->t0(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 2
    check-cast p2, Lcom/google/android/exoplayer2/video/j;

    iput-object p2, p0, Lcom/google/android/exoplayer2/video/b;->A:Lcom/google/android/exoplayer2/video/j;

    goto :goto_0

    .line 3
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->d(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public f()Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->E()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->F:Z

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->W()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    :cond_1
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    return v1

    .line 5
    :cond_2
    iget-wide v4, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    const/4 v0, 0x0

    cmp-long v6, v4, v2

    if-nez v6, :cond_3

    return v0

    .line 6
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    cmp-long v8, v4, v6

    if-gez v8, :cond_4

    return v1

    .line 7
    :cond_4
    iput-wide v2, p0, Lcom/google/android/exoplayer2/video/b;->J:J

    return v0
.end method

.method protected g0(Lcom/google/android/exoplayer2/v0;)V
    .locals 8
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->K:Z

    .line 2
    iget-object v1, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/android/exoplayer2/Format;

    .line 3
    iget-object p1, p1, Lcom/google/android/exoplayer2/v0;->a:Lcom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/video/b;->u0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    .line 4
    iget-object v4, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-object v5, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    .line 6
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->a0()V

    .line 8
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->p(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->C:Lcom/google/android/exoplayer2/drm/DrmSession;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->B:Lcom/google/android/exoplayer2/drm/DrmSession;

    if-eq v1, v2, :cond_1

    .line 10
    new-instance v1, Lcom/google/android/exoplayer2/decoder/e;

    .line 11
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x80

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/exoplayer2/decoder/e;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;II)V

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v4, v5}, Lcom/google/android/exoplayer2/video/b;->O(Ljava/lang/String;Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/decoder/e;

    move-result-object v1

    .line 13
    :goto_0
    iget p1, v1, Lcom/google/android/exoplayer2/decoder/e;->d:I

    if-nez p1, :cond_3

    .line 14
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->E:Z

    if-eqz p1, :cond_2

    .line 15
    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    goto :goto_1

    .line 16
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/video/b;->n0()V

    .line 17
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->a0()V

    .line 18
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/video/z$a;->p(Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/decoder/e;)V

    return-void
.end method

.method protected k0(J)V
    .locals 0
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget p1, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    return-void
.end method

.method protected l0(Lcom/google/android/exoplayer2/video/g;)V
    .locals 0

    return-void
.end method

.method protected n0()V
    .locals 4
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->u:Lcom/google/android/exoplayer2/video/g;

    .line 2
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->v:Lcom/google/android/exoplayer2/video/h;

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/google/android/exoplayer2/video/b;->D:I

    .line 4
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/video/b;->E:Z

    .line 5
    iput v1, p0, Lcom/google/android/exoplayer2/video/b;->R:I

    .line 6
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz v1, :cond_0

    .line 7
    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v3, v2, Lcom/google/android/exoplayer2/decoder/d;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/google/android/exoplayer2/decoder/d;->b:I

    .line 8
    invoke-interface {v1}, Lcom/google/android/exoplayer2/decoder/c;->release()V

    .line 9
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    iget-object v2, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    invoke-interface {v2}, Lcom/google/android/exoplayer2/decoder/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/video/z$a;->l(Ljava/lang/String;)V

    .line 10
    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    .line 11
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/video/b;->q0(Lcom/google/android/exoplayer2/drm/DrmSession;)V

    return-void
.end method

.method protected o0(Lcom/google/android/exoplayer2/video/h;JLcom/google/android/exoplayer2/Format;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->A:Lcom/google/android/exoplayer2/video/j;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    const/4 v6, 0x0

    move-wide v1, p2

    move-object v5, p4

    .line 3
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/video/j;->a(JJLcom/google/android/exoplayer2/Format;Landroid/media/MediaFormat;)V

    .line 4
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    mul-long p2, p2, v0

    invoke-static {p2, p3}, Lcom/google/android/exoplayer2/i;->c(J)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/google/android/exoplayer2/video/b;->S:J

    .line 5
    iget p2, p1, Lcom/google/android/exoplayer2/video/h;->e:I

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-ne p2, p4, :cond_1

    .line 6
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->y:Landroid/view/Surface;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez p2, :cond_2

    .line 7
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->z:Lcom/google/android/exoplayer2/video/i;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    if-nez p2, :cond_3

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/b;->T(Lcom/google/android/exoplayer2/video/h;)V

    goto :goto_3

    .line 9
    :cond_3
    iget v0, p1, Lcom/google/android/exoplayer2/video/h;->g:I

    iget v1, p1, Lcom/google/android/exoplayer2/video/h;->h:I

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/video/b;->d0(II)V

    if-eqz p2, :cond_4

    .line 10
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->z:Lcom/google/android/exoplayer2/video/i;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/video/i;->setOutputBuffer(Lcom/google/android/exoplayer2/video/h;)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->y:Landroid/view/Surface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/video/b;->p0(Lcom/google/android/exoplayer2/video/h;Landroid/view/Surface;)V

    .line 12
    :goto_2
    iput p3, p0, Lcom/google/android/exoplayer2/video/b;->Q:I

    .line 13
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    add-int/2addr p2, p4

    iput p2, p1, Lcom/google/android/exoplayer2/decoder/d;->e:I

    .line 14
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->c0()V

    :goto_3
    return-void
.end method

.method protected abstract p0(Lcom/google/android/exoplayer2/video/h;Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method protected abstract r0(I)V
.end method

.method public s(JJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/video/b;->M:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->A()Lcom/google/android/exoplayer2/v0;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->q:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()V

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/video/b;->q:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/exoplayer2/f;->M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v1

    const/4 v2, -0x5

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/video/b;->g0(Lcom/google/android/exoplayer2/v0;)V

    goto :goto_0

    :cond_1
    const/4 p1, -0x4

    if-ne v1, p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->q:Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->L:Z

    .line 9
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/video/b;->M:Z

    :cond_2
    return-void

    .line 10
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->a0()V

    .line 11
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz v0, :cond_6

    :try_start_0
    const-string v0, "drainAndFeed"

    .line 12
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v0;->a(Ljava/lang/String;)V

    .line 13
    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/exoplayer2/video/b;->S(JJ)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->U()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    .line 15
    :cond_5
    invoke-static {}, Lcom/google/android/exoplayer2/util/v0;->c()V
    :try_end_0
    .catch Lcom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/decoder/d;->c()V

    goto :goto_3

    :catch_0
    move-exception p1

    const-string p2, "DecoderVideoRenderer"

    const-string p3, "Video codec error"

    .line 17
    invoke-static {p2, p3, p1}, Lcom/google/android/exoplayer2/util/w;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->o:Lcom/google/android/exoplayer2/video/z$a;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/video/z$a;->C(Ljava/lang/Exception;)V

    .line 19
    iget-object p2, p0, Lcom/google/android/exoplayer2/video/b;->r:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/exoplayer2/f;->x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    throw p1

    :cond_6
    :goto_3
    return-void
.end method

.method protected final t0(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Landroid/view/Surface;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    move-object v0, p1

    check-cast v0, Landroid/view/Surface;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->y:Landroid/view/Surface;

    .line 3
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->z:Lcom/google/android/exoplayer2/video/i;

    const/4 v0, 0x1

    .line 4
    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    goto :goto_0

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/video/i;

    if-eqz v0, :cond_1

    .line 6
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->y:Landroid/view/Surface;

    .line 7
    move-object v0, p1

    check-cast v0, Lcom/google/android/exoplayer2/video/i;

    iput-object v0, p0, Lcom/google/android/exoplayer2/video/b;->z:Lcom/google/android/exoplayer2/video/i;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    goto :goto_0

    .line 9
    :cond_1
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->y:Landroid/view/Surface;

    .line 10
    iput-object v1, p0, Lcom/google/android/exoplayer2/video/b;->z:Lcom/google/android/exoplayer2/video/i;

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    move-object p1, v1

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->x:Ljava/lang/Object;

    if-eq v0, p1, :cond_4

    .line 13
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/b;->x:Ljava/lang/Object;

    if-eqz p1, :cond_3

    .line 14
    iget-object p1, p0, Lcom/google/android/exoplayer2/video/b;->t:Lcom/google/android/exoplayer2/decoder/c;

    if-eqz p1, :cond_2

    .line 15
    iget p1, p0, Lcom/google/android/exoplayer2/video/b;->w:I

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/video/b;->r0(I)V

    .line 16
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->h0()V

    goto :goto_1

    .line 17
    :cond_3
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->i0()V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 18
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->j0()V

    :cond_5
    :goto_1
    return-void
.end method

.method protected v0(JJ)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/b;->Y(J)Z

    move-result p1

    return p1
.end method

.method protected w0(JJ)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/b;->X(J)Z

    move-result p1

    return p1
.end method

.method protected x0(JJ)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/video/b;->X(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/32 p1, 0x186a0

    cmp-long v0, p3, p1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected y0(Lcom/google/android/exoplayer2/video/h;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->f:I

    .line 2
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/video/h;->o()V

    return-void
.end method

.method protected z0(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/video/b;->U:Lcom/google/android/exoplayer2/decoder/d;

    iget v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/google/android/exoplayer2/decoder/d;->g:I

    .line 2
    iget v1, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    .line 3
    iget v1, p0, Lcom/google/android/exoplayer2/video/b;->Q:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/google/android/exoplayer2/video/b;->Q:I

    .line 4
    iget p1, v0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, v0, Lcom/google/android/exoplayer2/decoder/d;->h:I

    .line 6
    iget p1, p0, Lcom/google/android/exoplayer2/video/b;->n:I

    if-lez p1, :cond_0

    iget v0, p0, Lcom/google/android/exoplayer2/video/b;->P:I

    if-lt v0, p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/google/android/exoplayer2/video/b;->b0()V

    :cond_0
    return-void
.end method
