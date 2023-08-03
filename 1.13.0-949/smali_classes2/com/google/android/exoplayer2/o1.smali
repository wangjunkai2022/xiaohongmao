.class public abstract Lcom/google/android/exoplayer2/o1;
.super Ljava/lang/Object;
.source "NoSampleRenderer.java"

# interfaces
.implements Lcom/google/android/exoplayer2/e2;
.implements Lcom/google/android/exoplayer2/g2;


# instance fields
.field private a:Lcom/google/android/exoplayer2/h2;

.field private b:I

.field private c:I

.field private d:Lcom/google/android/exoplayer2/source/x0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    return-void
.end method

.method protected B()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected C()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/exoplayer2/Format;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/exoplayer2/f2;->a(I)I

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput v2, p0, Lcom/google/android/exoplayer2/o1;->c:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/google/android/exoplayer2/o1;->d:Lcom/google/android/exoplayer2/source/x0;

    .line 4
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/o1;->e:Z

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->o()V

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

.method protected final e()Lcom/google/android/exoplayer2/h2;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->a:Lcom/google/android/exoplayer2/h2;

    return-object v0
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->b:I

    return v0
.end method

.method public final getState()I
    .locals 1

    iget v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

    return v0
.end method

.method public final getTrackType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/exoplayer2/o1;->b:I

    return-void
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o1;->e:Z

    return-void
.end method

.method public final k()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public final l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/exoplayer2/o1;->e:Z

    return v0
.end method

.method public final m([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/o1;->e:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p2, p0, Lcom/google/android/exoplayer2/o1;->d:Lcom/google/android/exoplayer2/source/x0;

    .line 3
    invoke-virtual {p0, p5, p6}, Lcom/google/android/exoplayer2/o1;->z(J)V

    return-void
.end method

.method public final n()Lcom/google/android/exoplayer2/g2;
    .locals 0

    return-object p0
.end method

.method protected o()V
    .locals 0

    return-void
.end method

.method public synthetic p(FF)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/exoplayer2/d2;->a(Lcom/google/android/exoplayer2/e2;FF)V

    return-void
.end method

.method public final q(Lcom/google/android/exoplayer2/h2;[Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JZZJJ)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    move-object v7, p0

    move v8, p6

    .line 1
    iget v0, v7, Lcom/google/android/exoplayer2/o1;->c:I

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
    iput-object v0, v7, Lcom/google/android/exoplayer2/o1;->a:Lcom/google/android/exoplayer2/h2;

    .line 3
    iput v1, v7, Lcom/google/android/exoplayer2/o1;->c:I

    .line 4
    invoke-virtual {p0, p6}, Lcom/google/android/exoplayer2/o1;->x(Z)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    .line 5
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/exoplayer2/o1;->m([Lcom/google/android/exoplayer2/Format;Lcom/google/android/exoplayer2/source/x0;JJ)V

    move-wide v0, p4

    .line 6
    invoke-virtual {p0, p4, p5, p6}, Lcom/google/android/exoplayer2/o1;->y(JZ)V

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
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->A()V

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
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->B()V

    return-void
.end method

.method public final stop()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/o1;->c:I

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
    iput v1, p0, Lcom/google/android/exoplayer2/o1;->c:I

    .line 3
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/o1;->C()V

    return-void
.end method

.method public final t()Lcom/google/android/exoplayer2/source/x0;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/google/android/exoplayer2/o1;->d:Lcom/google/android/exoplayer2/source/x0;

    return-object v0
.end method

.method public u()J
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

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
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/o1;->e:Z

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/o1;->y(JZ)V

    return-void
.end method

.method public w()Lcom/google/android/exoplayer2/util/y;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected x(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected y(JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method

.method protected z(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    return-void
.end method
