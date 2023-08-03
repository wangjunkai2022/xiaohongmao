.class public abstract Lcom/google/android/exoplayer2/e;
.super Ljava/lang/Object;
.source "BasePlayer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/v1;


# instance fields
.field protected final n0:Lcom/google/android/exoplayer2/s2$d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object v0, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    return-void
.end method

.method private P1()I
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public final A1()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final D1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-interface {p0, v0, p1}, Lcom/google/android/exoplayer2/v1;->q1(ILjava/util/List;)V

    return-void
.end method

.method public final E(F)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->e()Lcom/google/android/exoplayer2/t1;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/t1;->e(F)Lcom/google/android/exoplayer2/t1;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/google/android/exoplayer2/v1;->g(Lcom/google/android/exoplayer2/t1;)V

    return-void
.end method

.method public final L0()J
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_0

    return-wide v2

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v4}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-wide v0, v0, Lcom/google/android/exoplayer2/s2$d;->f:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    return-wide v2

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->c()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/s2$d;->f:J

    sub-long/2addr v0, v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->o1()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final M()V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-interface {p0, v0, v1}, Lcom/google/android/exoplayer2/v1;->i0(II)V

    return-void
.end method

.method public final M1(ILcom/google/android/exoplayer2/b1;)V
    .locals 0

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/v1;->q1(ILjava/util/List;)V

    return-void
.end method

.method public final N()Lcom/google/android/exoplayer2/b1;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    :goto_0
    return-object v0
.end method

.method public final N1(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/b1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/v1;->Y(Ljava/util/List;Z)V

    return-void
.end method

.method public final O0(Lcom/google/android/exoplayer2/b1;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/e;->N1(Ljava/util/List;)V

    return-void
.end method

.method protected O1(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/v1$c;
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/v1$c$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/v1$c$a;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v1$c$a;->b(Lcom/google/android/exoplayer2/v1$c;)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/android/exoplayer2/v1$c$a;->d(IZ)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    const/4 v0, 0x4

    .line 4
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->U()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/v1$c$a;->d(IZ)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    const/4 v0, 0x5

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1, v0, v2}, Lcom/google/android/exoplayer2/v1$c$a;->d(IZ)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    const/4 v0, 0x6

    .line 6
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-virtual {p1, v0, v3}, Lcom/google/android/exoplayer2/v1$c$a;->d(IZ)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    const/4 v0, 0x7

    .line 7
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v2

    xor-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Lcom/google/android/exoplayer2/v1$c$a;->d(IZ)Lcom/google/android/exoplayer2/v1$c$a;

    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/v1$c$a;->e()Lcom/google/android/exoplayer2/v1$c;

    move-result-object p1

    return-object p1
.end method

.method public final R()I
    .locals 9

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->s1()J

    move-result-wide v0

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->getDuration()J

    move-result-wide v2

    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    .line 3
    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lcom/google/android/exoplayer2/util/z0;->t(III)I

    move-result v4

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public final T()Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->k0()Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    return-object v0
.end method

.method public final U()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/s2$d;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final U0(I)Lcom/google/android/exoplayer2/b1;
    .locals 2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    return-object p1
.end method

.method public final X()V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->n1(I)V

    return-void
.end method

.method public final X0()J
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->f()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final Z0(Lcom/google/android/exoplayer2/b1;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/e;->D1(Ljava/util/List;)V

    return-void
.end method

.method public final b0()Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c0()Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/s2$d;->c:Lcom/google/android/exoplayer2/b1;

    iget-object v0, v0, Lcom/google/android/exoplayer2/b1;->b:Lcom/google/android/exoplayer2/b1$g;

    if-eqz v0, :cond_1

    .line 4
    iget-object v2, v0, Lcom/google/android/exoplayer2/b1$g;->h:Ljava/lang/Object;

    :cond_1
    return-object v2
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/v1;->l0(Z)V

    return-void
.end method

.method public final d0(I)V
    .locals 1

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1, v0}, Lcom/google/android/exoplayer2/v1;->i0(II)V

    return-void
.end method

.method public final e0()I
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->u()I

    move-result v0

    return v0
.end method

.method public final e1(Lcom/google/android/exoplayer2/b1;J)V
    .locals 1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Lcom/google/android/exoplayer2/v1;->m1(Ljava/util/List;IJ)V

    return-void
.end method

.method public final h1(Lcom/google/android/exoplayer2/b1;Z)V
    .locals 0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/google/android/exoplayer2/v1;->Y(Ljava/util/List;Z)V

    return-void
.end method

.method public final hasNext()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->x1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final hasPrevious()Z
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->r1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isPlaying()Z
    .locals 2

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->Q0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->y0()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final n1(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-interface {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    return-void
.end method

.method public final next()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->x1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->n1(I)V

    :cond_0
    return-void
.end method

.method public final o0()Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/e;->n0:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/exoplayer2/s2$d;->d:Ljava/lang/Object;

    :goto_0
    return-object v0
.end method

.method public final pause()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/v1;->l0(Z)V

    return-void
.end method

.method public final previous()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/e;->r1()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/e;->n1(I)V

    :cond_0
    return-void
.end method

.method public final r1()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/e;->P1()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/s2;->p(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final seekTo(J)V
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    return-void
.end method

.method public final stop()V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/google/android/exoplayer2/v1;->y(Z)V

    return-void
.end method

.method public final t0(I)Z
    .locals 1

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->N0()Lcom/google/android/exoplayer2/v1$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/v1$c;->b(I)Z

    move-result p1

    return p1
.end method

.method public final x1()I
    .locals 4

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    invoke-direct {p0}, Lcom/google/android/exoplayer2/e;->P1()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->H1()Z

    move-result v3

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/exoplayer2/s2;->i(IIZ)I

    move-result v0

    :goto_0
    return v0
.end method

.method public final z1(II)V
    .locals 1

    if-eq p1, p2, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p0, p1, v0, p2}, Lcom/google/android/exoplayer2/v1;->C1(III)V

    :cond_0
    return-void
.end method
