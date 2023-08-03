.class public Lmaster/flame/danmaku/danmaku/model/p;
.super Lmaster/flame/danmaku/danmaku/model/q;
.source "L2RDanmaku.java"


# direct methods
.method public constructor <init>(Lmaster/flame/danmaku/danmaku/model/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lmaster/flame/danmaku/danmaku/model/q;-><init>(Lmaster/flame/danmaku/danmaku/model/g;)V

    return-void
.end method


# virtual methods
.method public A(Lmaster/flame/danmaku/danmaku/model/n;FF)V
    .locals 6

    .line 1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->E:Lmaster/flame/danmaku/danmaku/model/f;

    if-eqz p2, :cond_2

    .line 2
    iget-wide v0, p2, Lmaster/flame/danmaku/danmaku/model/f;->a:J

    .line 3
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-lez p2, :cond_1

    .line 4
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v4, p2, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long p2, v2, v4

    if-gez p2, :cond_1

    .line 5
    invoke-virtual {p0, p1, v0, v1}, Lmaster/flame/danmaku/danmaku/model/p;->K(Lmaster/flame/danmaku/danmaku/model/n;J)F

    move-result p1

    iput p1, p0, Lmaster/flame/danmaku/danmaku/model/q;->X:F

    .line 6
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->x()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    iput p3, p0, Lmaster/flame/danmaku/danmaku/model/q;->Y:F

    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    .line 9
    :cond_0
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->c0:J

    return-void

    .line 10
    :cond_1
    iput-wide v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->c0:J

    :cond_2
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Lmaster/flame/danmaku/danmaku/model/d;->J(Z)V

    return-void
.end method

.method protected K(Lmaster/flame/danmaku/danmaku/model/n;J)F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->b()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 2
    iget-object v0, p0, Lmaster/flame/danmaku/danmaku/model/d;->r:Lmaster/flame/danmaku/danmaku/model/g;

    iget-wide v0, v0, Lmaster/flame/danmaku/danmaku/model/g;->c:J

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 3
    invoke-interface {p1}, Lmaster/flame/danmaku/danmaku/model/n;->getWidth()I

    move-result p1

    int-to-float p1, p1

    return p1

    .line 4
    :cond_0
    iget p1, p0, Lmaster/flame/danmaku/danmaku/model/q;->b0:F

    long-to-float p2, p2

    mul-float p1, p1, p2

    iget p2, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    sub-float/2addr p1, p2

    return p1
.end method

.method public d()F
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->Y:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr v0, v1

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->X:F

    return v0
.end method

.method public h(Lmaster/flame/danmaku/danmaku/model/n;J)[F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lmaster/flame/danmaku/danmaku/model/d;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lmaster/flame/danmaku/danmaku/model/p;->K(Lmaster/flame/danmaku/danmaku/model/n;J)F

    move-result p1

    .line 3
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/q;->a0:[F

    if-nez p2, :cond_1

    const/4 p2, 0x4

    new-array p2, p2, [F

    .line 4
    iput-object p2, p0, Lmaster/flame/danmaku/danmaku/model/q;->a0:[F

    .line 5
    :cond_1
    iget-object p2, p0, Lmaster/flame/danmaku/danmaku/model/q;->a0:[F

    const/4 p3, 0x0

    aput p1, p2, p3

    const/4 p3, 0x1

    .line 6
    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->Y:F

    aput v0, p2, p3

    const/4 p3, 0x2

    .line 7
    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr p1, v1

    aput p1, p2, p3

    const/4 p1, 0x3

    .line 8
    iget p3, p0, Lmaster/flame/danmaku/danmaku/model/d;->q:F

    add-float/2addr v0, p3

    aput v0, p2, p1

    return-object p2
.end method

.method public i()F
    .locals 2

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->X:F

    iget v1, p0, Lmaster/flame/danmaku/danmaku/model/d;->p:F

    add-float/2addr v0, v1

    return v0
.end method

.method public m()F
    .locals 1

    iget v0, p0, Lmaster/flame/danmaku/danmaku/model/q;->Y:F

    return v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
