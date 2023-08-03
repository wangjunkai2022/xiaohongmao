.class public Lcom/google/android/exoplayer2/k;
.super Ljava/lang/Object;
.source "DefaultControlDispatcher.java"

# interfaces
.implements Lcom/google/android/exoplayer2/j;


# static fields
.field public static final d:I = 0x3a98

.field public static final e:I = 0x1388

.field private static final f:I = 0xbb8


# instance fields
.field private final a:Lcom/google/android/exoplayer2/s2$d;

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x3a98

    const-wide/16 v2, 0x1388

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/android/exoplayer2/k;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->c:J

    .line 4
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k;->b:J

    .line 5
    new-instance p1, Lcom/google/android/exoplayer2/s2$d;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/s2$d;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    return-void
.end method

.method private static p(Lcom/google/android/exoplayer2/v1;J)V
    .locals 5

    .line 1
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 2
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->getDuration()J

    move-result-wide p1

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :cond_0
    const-wide/16 p1, 0x0

    .line 4
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 5
    invoke-interface {p0}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v0

    invoke-interface {p0, v0, p1, p2}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/exoplayer2/v1;Lcom/google/android/exoplayer2/t1;)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/v1;->g(Lcom/google/android/exoplayer2/t1;)V

    const/4 p1, 0x1

    return p1
.end method

.method public b(Lcom/google/android/exoplayer2/v1;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->b:J

    neg-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/k;->p(Lcom/google/android/exoplayer2/v1;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/google/android/exoplayer2/v1;IJ)Z
    .locals 0

    invoke-interface {p1, p2, p3, p4}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    const/4 p1, 0x1

    return p1
.end method

.method public d(Lcom/google/android/exoplayer2/v1;Z)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/v1;->R0(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public e(Lcom/google/android/exoplayer2/v1;I)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/v1;->j(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public f(Lcom/google/android/exoplayer2/v1;Z)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/v1;->y(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public g(Lcom/google/android/exoplayer2/v1;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->c:J

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/k;->p(Lcom/google/android/exoplayer2/v1;J)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public h()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i(Lcom/google/android/exoplayer2/v1;)Z
    .locals 0

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->a()V

    const/4 p1, 0x1

    return p1
.end method

.method public j(Lcom/google/android/exoplayer2/v1;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_4

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->r1()I

    move-result v0

    .line 6
    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v3, v3, Lcom/google/android/exoplayer2/s2$d;->h:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    const/4 v4, -0x1

    if-eq v0, v4, :cond_3

    .line 7
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->getCurrentPosition()J

    move-result-wide v4

    const-wide/16 v6, 0xbb8

    cmp-long v8, v4, v6

    if-lez v8, :cond_2

    if-eqz v3, :cond_3

    :cond_2
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    invoke-interface {p1, v0, v3, v4}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    const-wide/16 v3, 0x0

    .line 9
    invoke-interface {p1, v1, v3, v4}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    :cond_4
    :goto_1
    return v2
.end method

.method public k(Lcom/google/android/exoplayer2/v1;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->A0()Lcom/google/android/exoplayer2/s2;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2;->v()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->K()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->j0()I

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0, v1, v3}, Lcom/google/android/exoplayer2/s2;->r(ILcom/google/android/exoplayer2/s2$d;)Lcom/google/android/exoplayer2/s2$d;

    .line 5
    invoke-interface {p1}, Lcom/google/android/exoplayer2/v1;->x1()I

    move-result v0

    const/4 v3, -0x1

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eq v0, v3, :cond_1

    .line 6
    invoke-interface {p1, v0, v4, v5}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s2$d;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/exoplayer2/k;->a:Lcom/google/android/exoplayer2/s2$d;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/s2$d;->i:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {p1, v1, v4, v5}, Lcom/google/android/exoplayer2/v1;->x(IJ)V

    :cond_2
    :goto_0
    return v2
.end method

.method public l()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m(Lcom/google/android/exoplayer2/v1;Z)Z
    .locals 0

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/v1;->l0(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method public n()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->c:J

    return-wide v0
.end method

.method public o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/exoplayer2/k;->b:J

    return-wide v0
.end method

.method public q(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->c:J

    return-void
.end method

.method public r(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-wide p1, p0, Lcom/google/android/exoplayer2/k;->b:J

    return-void
.end method
