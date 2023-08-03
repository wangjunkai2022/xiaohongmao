.class public abstract Lcom/google/android/exoplayer2/f;
.super Ljava/lang/Object;
.source "BaseRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/e2;
.implements Lcom/google/android/exoplayer2/g2;


# instance fields
.field private final a:I

.field private final b:Lcom/google/android/exoplayer2/v0;

.field private c:Lcom/google/android/exoplayer2/h2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/google/android/exoplayer2/source/x0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:[Lcom/google/android/exoplayer2/Format;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/exoplayer2/f;->a:I

    .line 3
    new-instance p1, Lcom/google/android/exoplayer2/v0;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/v0;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/v0;

    const-wide/high16 v0, -0x8000000000000000L

    .line 4
    iput-wide v0, p0, Lcom/google/android/exoplayer2/f;->j:J

    return-void
.end method


# virtual methods
.method protected final A()Lcom/google/android/exoplayer2/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/v0;

    return-object v0
.end method

.method protected final B()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->d:I

    return v0
.end method

.method protected final C()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->i:J

    return-wide v0
.end method

.method protected final D()[Lcom/google/android/exoplayer2/Format;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->g:[Lcom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/exoplayer2/Format;

    return-object v0
.end method

.method protected final E()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->k:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->f()Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected F()V
    .locals 0

    return-void
.end method

.method protected G(ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected H(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected I()V
    .locals 0

    return-void
.end method

.method protected J()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected K()V
    .locals 0

    return-void
.end method

.method protected L([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected final M(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/x0;->q(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    .line 2
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/a;->l()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    .line 4
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/f;->k:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    :goto_0
    return v0

    .line 5
    :cond_1
    iget-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/f;->h:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 6
    iget-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    goto :goto_1

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    .line 7
    iget-object p2, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    .line 8
    iget-wide v0, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$b;

    move-result-object v0

    iget-wide v1, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iget-wide v3, p0, Lcom/google/android/exoplayer2/f;->h:J

    add-long/2addr v1, v3

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/Format$b;->i0(J)Lcom/google/android/exoplayer2/Format$b;

    move-result-object p2

    .line 11
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$b;->E()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 12
    iput-object p2, p1, Lcom/google/android/exoplayer2/v0;->b:Lcom/google/android/exoplayer2/Format;

    :cond_3
    :goto_1
    return p3
.end method

.method protected N(J)I
    .locals 3

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/x0;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/f;->h:J

    sub-long/2addr p1, v1

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/x0;->t(J)I

    move-result p1

    return p1
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->a()V

    .line 3
    iput v2, p0, Lcom/google/android/exoplayer2/f;->e:I

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    .line 5
    iput-object v0, p0, Lcom/google/android/exoplayer2/f;->g:[Lcom/google/android/exoplayer2/Format;

    .line 6
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/f;->k:Z

    .line 7
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->F()V

    return-void
.end method

.method public d(ILjava/lang/Object;)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    return v0
.end method

.method public final getTrackType()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/f;->a:I

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/f;->d:I

    return-void
.end method

.method public final i()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->j:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->k:Z

    return-void
.end method

.method public final k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/x0;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/x0;->a()V

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->k:Z

    return v0
.end method

.method public final m([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->k:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    iput-wide p5, p0, Lcom/google/android/exoplayer2/f;->j:J

    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/f;->g:[Lcom/google/android/exoplayer2/Format;

    .line 5
    iput-wide p5, p0, Lcom/google/android/exoplayer2/f;->h:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    .line 6
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/exoplayer2/f;->L([Lcom/google/android/exoplayer2/Format;JJ)V

    return-void
.end method

.method public final n()Lcom/google/android/exoplayer2/g2;
    .locals 0

    return-object p0
.end method

.method public synthetic p(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/d2;->a(Lcom/google/android/exoplayer2/e2;FF)V

    return-void
.end method

.method public final q(Lcom/google/android/exoplayer2/h2;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JZZJJ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move-wide v8, p4

    move/from16 v10, p6

    .line 1
    iget v0, v7, Lcom/google/android/exoplayer2/f;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    move-object v0, p1

    .line 2
    iput-object v0, v7, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/h2;

    .line 3
    iput v1, v7, Lcom/google/android/exoplayer2/f;->e:I

    .line 4
    iput-wide v8, v7, Lcom/google/android/exoplayer2/f;->i:J

    move/from16 v0, p7

    .line 5
    invoke-virtual {p0, v10, v0}, Lcom/google/android/exoplayer2/f;->G(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 6
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/f;->m([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JJ)V

    .line 7
    invoke-virtual {p0, v8, v9, v10}, Lcom/google/android/exoplayer2/f;->H(JZ)V

    return-void
.end method

.method public r()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public final reset()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->b:Lcom/google/android/exoplayer2/v0;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/v0;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->I()V

    return-void
.end method

.method public final start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->J()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/f;->e:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput v1, p0, Lcom/google/android/exoplayer2/f;->e:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->K()V

    return-void
.end method

.method public final t()Lcom/google/android/exoplayer2/source/x0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->f:Lcom/google/android/exoplayer2/source/x0;

    return-object v0
.end method

.method public final u()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/f;->j:J

    return-wide v0
.end method

.method public final v(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->k:Z

    .line 2
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->i:J

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/f;->j:J

    .line 4
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->H(JZ)V

    return-void
.end method

.method public w()Lcom/google/android/exoplayer2/util/y;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final x(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 1
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/f;->y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final y(Ljava/lang/Throwable;Lcom/google/android/exoplayer2/Format;Z)Lcom/google/android/exoplayer2/ExoPlaybackException;
    .locals 8
    .param p2    # Lcom/google/android/exoplayer2/Format;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_0

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/exoplayer2/g2;->a(Lcom/google/android/exoplayer2/Format;)I

    move-result v1

    invoke-static {v1}, Lcom/google/android/exoplayer2/f2;->d(I)I

    move-result v1
    :try_end_0
    .catch Lcom/google/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    move v6, v1

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    .line 5
    throw p1

    .line 6
    :catch_0
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/f;->l:Z

    :cond_0
    const/4 v1, 0x4

    const/4 v6, 0x4

    .line 7
    :goto_0
    invoke-interface {p0}, Lcom/google/android/exoplayer2/e2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/exoplayer2/f;->B()I

    move-result v4

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    .line 8
    invoke-static/range {v2 .. v7}, Lcom/google/android/exoplayer2/ExoPlaybackException;->createForRenderer(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/exoplayer2/Format;IZ)Lcom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object p1

    return-object p1
.end method

.method protected final z()Lcom/google/android/exoplayer2/h2;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/f;->c:Lcom/google/android/exoplayer2/h2;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/h2;

    return-object v0
.end method
