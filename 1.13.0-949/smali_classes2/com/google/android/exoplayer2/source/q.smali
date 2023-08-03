.class public final Lcom/google/android/exoplayer2/source/q;
.super Ljava/lang/Object;
.source "MaskingMediaPeriod.java"

# interfaces
.implements Lcom/google/android/exoplayer2/source/w;
.implements Lcom/google/android/exoplayer2/source/w$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/q$a;
    }
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/z$a;

.field private final b:J

.field private final c:Lcom/google/android/exoplayer2/upstream/b;

.field private d:Lcom/google/android/exoplayer2/source/z;

.field private e:Lcom/google/android/exoplayer2/source/w;

.field private f:Lcom/google/android/exoplayer2/source/w$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/exoplayer2/source/q$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Z

.field private i:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    .line 3
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q;->c:Lcom/google/android/exoplayer2/upstream/b;

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/source/q;->b:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 5
    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q;->i:J

    return-void
.end method

.method private q(J)J
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q;->i:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide p1, v0

    :cond_0
    return-wide p1
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/source/z$a;)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q;->b:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/exoplayer2/source/q;->q(J)J

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q;->d:Lcom/google/android/exoplayer2/source/z;

    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/exoplayer2/source/z;

    iget-object v3, p0, Lcom/google/android/exoplayer2/source/q;->c:Lcom/google/android/exoplayer2/upstream/b;

    invoke-interface {v2, p1, v3, v0, v1}, Lcom/google/android/exoplayer2/source/z;->a(Lcom/google/android/exoplayer2/source/z$a;Lcom/google/android/exoplayer2/upstream/b;J)Lcom/google/android/exoplayer2/source/w;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/w$a;

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {p1, p0, v0, v1}, Lcom/google/android/exoplayer2/source/w;->n(Lcom/google/android/exoplayer2/source/w$a;J)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public c()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public d(JLcom/google/android/exoplayer2/j2;)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->d(JLcom/google/android/exoplayer2/j2;)J

    move-result-wide p1

    return-wide p1
.end method

.method public e(J)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->e(J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic f(Lcom/google/android/exoplayer2/source/y0;)V
    .locals 0

    check-cast p1, Lcom/google/android/exoplayer2/source/w;

    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/q;->r(Lcom/google/android/exoplayer2/source/w;)V

    return-void
.end method

.method public g()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public h(J)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->h(J)V

    return-void
.end method

.method public i(Lcom/google/android/exoplayer2/source/w;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/w$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/w$a;->i(Lcom/google/android/exoplayer2/source/w;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->g:Lcom/google/android/exoplayer2/source/q$a;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/source/q$a;->a(Lcom/google/android/exoplayer2/source/z$a;)V

    :cond_0
    return-void
.end method

.method public synthetic j(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/source/v;->a(Lcom/google/android/exoplayer2/source/w;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public k()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q;->i:J

    return-wide v0
.end method

.method public l(J)J
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/w;->l(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()J
    .locals 2

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public n(Lcom/google/android/exoplayer2/source/w$a;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/w$a;

    .line 2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    if-eqz p1, :cond_0

    .line 3
    iget-wide p2, p0, Lcom/google/android/exoplayer2/source/q;->b:J

    .line 4
    invoke-direct {p0, p2, p3}, Lcom/google/android/exoplayer2/source/q;->q(J)J

    move-result-wide p2

    .line 5
    invoke-interface {p1, p0, p2, p3}, Lcom/google/android/exoplayer2/source/w;->n(Lcom/google/android/exoplayer2/source/w$a;J)V

    :cond_0
    return-void
.end method

.method public o([Lcom/google/android/exoplayer2/trackselection/g;[Z[Lcom/google/android/exoplayer2/source/x0;[ZJ)J
    .locals 15

    move-object v0, p0

    .line 1
    iget-wide v1, v0, Lcom/google/android/exoplayer2/source/q;->i:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-wide v5, v0, Lcom/google/android/exoplayer2/source/q;->b:J

    cmp-long v7, p5, v5

    if-nez v7, :cond_0

    .line 2
    iput-wide v3, v0, Lcom/google/android/exoplayer2/source/q;->i:J

    move-wide v13, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v13, p5

    .line 3
    :goto_0
    iget-object v1, v0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/google/android/exoplayer2/source/w;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    .line 4
    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/source/w;->o([Lcom/google/android/exoplayer2/trackselection/g;[Z[Lcom/google/android/exoplayer2/source/x0;[ZJ)J

    move-result-wide v1

    return-wide v1
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/q;->b:J

    return-wide v0
.end method

.method public r(Lcom/google/android/exoplayer2/source/w;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/q;->f:Lcom/google/android/exoplayer2/source/w$a;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/source/w$a;

    invoke-interface {p1, p0}, Lcom/google/android/exoplayer2/source/y0$a;->f(Lcom/google/android/exoplayer2/source/y0;)V

    return-void
.end method

.method public s()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->s()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Lcom/google/android/exoplayer2/source/z;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/z;->n()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q;->g:Lcom/google/android/exoplayer2/source/q$a;

    if-eqz v1, :cond_2

    .line 6
    iget-boolean v2, p0, Lcom/google/android/exoplayer2/source/q;->h:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/google/android/exoplayer2/source/q;->h:Z

    .line 8
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/q;->a:Lcom/google/android/exoplayer2/source/z$a;

    invoke-interface {v1, v2, v0}, Lcom/google/android/exoplayer2/source/q$a;->b(Lcom/google/android/exoplayer2/source/z$a;Ljava/io/IOException;)V

    :cond_1
    :goto_0
    return-void

    .line 9
    :cond_2
    throw v0
.end method

.method public t(J)V
    .locals 0

    iput-wide p1, p0, Lcom/google/android/exoplayer2/source/q;->i:J

    return-void
.end method

.method public u()Lcom/google/android/exoplayer2/source/TrackGroupArray;
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/w;->u()Lcom/google/android/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    return-object v0
.end method

.method public v(JZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/z0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/w;->v(JZ)V

    return-void
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Lcom/google/android/exoplayer2/source/z;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/source/z;

    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q;->e:Lcom/google/android/exoplayer2/source/w;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/source/z;->g(Lcom/google/android/exoplayer2/source/w;)V

    :cond_0
    return-void
.end method

.method public x(Lcom/google/android/exoplayer2/source/z;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q;->d:Lcom/google/android/exoplayer2/source/z;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->i(Z)V

    .line 2
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->d:Lcom/google/android/exoplayer2/source/z;

    return-void
.end method

.method public y(Lcom/google/android/exoplayer2/source/q$a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q;->g:Lcom/google/android/exoplayer2/source/q$a;

    return-void
.end method
